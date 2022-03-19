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


public class Fahrenheit_to_Celsius extends Fragment {

    EditText editTextinPutF;
    Button calBTNFtoC;
    TextView resultText, textViewID;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_fahrenheit_to__celsius, container, false);

        editTextinPutF = view.findViewById(R.id.editTextFtoC);
        calBTNFtoC= view.findViewById(R.id.btnCalFtoC);
        resultText = view.findViewById(R.id.texViewFCResult);
        textViewID = view.findViewById(R.id.texViewFooter);

        calBTNFtoC.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String fa = editTextinPutF.getText().toString().trim();
                double result;

                if(!fa.isEmpty()){
                    int temperature = Integer.parseInt(fa);
                    result = ((temperature - 32)*5)/9.0;
                    resultText.setText("Temp in Celsius: "+ (result+""));
                    textViewID.setText(NextAcitivity.id);
                    NextAcitivity.saveData("Temp in Celsius",NextAcitivity.id,(temperature+""));
                }
            }
        });
        return view;
    }
}