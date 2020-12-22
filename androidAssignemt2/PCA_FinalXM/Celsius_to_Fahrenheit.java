package com.example.loginactivity.fragment;

import android.content.Context;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.example.loginactivity.NextAcitivity;
import com.example.loginactivity.R;

public class Celsius_to_Fahrenheit extends Fragment {


    EditText editTextCFInput;
    Button btnFCal, allData;
    TextView textViewResult, textViewID;
    public  static Context context;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_celsius_to__fahrenheit, container, false);

        context = getContext();

        editTextCFInput = view.findViewById(R.id.editTextFtoC);
        btnFCal = view.findViewById(R.id.btnCalFtoC);
        allData = view.findViewById(R.id.btnTOViewData);
        textViewID =view.findViewById(R.id.texViewFooterCF);
        textViewResult = view.findViewById(R.id.texViewCFResult);


        btnFCal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String data = editTextCFInput.getText().toString();
                double result ;
                if(!data.isEmpty()){
                    int C = Integer.parseInt(data);
                    result= C * (9/5) + 32;
                    textViewResult.setText("Temp in Fahrenheit: "+ (result+""));
                    textViewID.setText("ID "+ NextAcitivity.id);
                    NextAcitivity.saveData("Temp in Fahrenheit",NextAcitivity.id,(result+""));
                }
            }
        });

        allData.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            NextAcitivity.preViewDB(context);
            }
        });
        // Inflate the layout for this fragment
        return view;
    }
}