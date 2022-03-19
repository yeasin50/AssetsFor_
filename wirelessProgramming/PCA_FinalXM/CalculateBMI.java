package com.example.loginactivity.fragment;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.loginactivity.NextAcitivity;
import com.example.loginactivity.R;

public class CalculateBMI extends Fragment {

    TextView textView;
    EditText editTextWight, editTextHeight;
    Button btnCalulate;


    double solveBmi(int weight, int height){
        return  weight/ Math.pow(height,2);
    }
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.fragment_calculate_b_m_i, container, false);
        textView = view.findViewById(R.id.bmiHeader);
        textView.setText(NextAcitivity.id);

        editTextHeight= view.findViewById(R.id.bmiediTextheightINCH);
        editTextWight = view.findViewById(R.id.bmiediTextWeightInKilogram);

        btnCalulate = view.findViewById(R.id.btnbmiCal);

        btnCalulate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String height = editTextHeight.getText().toString().trim();
                String weight = editTextWight.getText().toString().trim();

                if(!height.isEmpty() && !weight.isEmpty()){
                    double bmi = solveBmi(Integer.parseInt(weight), Integer.parseInt(height));
                    String msg="";
                    if(bmi>25) msg = "Overweight";
                    else msg ="Not Overweight";
                    msg += (" "+bmi);
                    Toast.makeText(getContext(), msg, Toast.LENGTH_SHORT).show();
                    NextAcitivity.saveData("BMI",NextAcitivity.id,(bmi+""));
                }
            }
        });
        // Inflate the layout for this fragment
        return view;
    }
}