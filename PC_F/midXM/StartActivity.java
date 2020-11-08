package com.example.assignment;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class StartActivity extends AppCompatActivity {

    TextView resultTextView;
    EditText editText;
    Button buttonFact;
    double result = 0.0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        resultTextView = findViewById(R.id.textViewResult);
        editText = findViewById(R.id.editText);
        buttonFact = findViewById(R.id.button_solve);

        buttonFact.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(editText.getText().toString().isEmpty()){
                    return;
                }
                //TODO: update here
                calcFactorial();
               

            }
        });
    }

    private void calcFactorial() {
        int i,fact=1;
        int number=Integer.parseInt(editText.getText().toString());
        for(i=1;i<=number;i++){
            fact=fact*i;
        }
        resultTextView.setText(fact+"");
    }
}