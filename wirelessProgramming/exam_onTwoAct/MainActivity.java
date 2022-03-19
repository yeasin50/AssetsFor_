package com.example.assignment;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private static final String TAG = "MainActivity";
    TextView resutTextView;
    int result = 0;
    String inputData="";

    Button buttn1, button2, button3, button4, button5,buttonAdd, buttonEqual,buttonAbout;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        resutTextView = findViewById(R.id.textView);
        buttn1 = findViewById(R.id.button_1);
        button2 = findViewById(R.id.button_2);
        button3 = findViewById(R.id.button_3);
        button4 = findViewById(R.id.button_4);
        button5 = findViewById(R.id.button_5);

        buttonAdd = findViewById(R.id.button_Addition);
        buttonEqual = findViewById(R.id.button_equal);
        buttonAbout = findViewById(R.id.button_About);

        buttn1.setOnClickListener(this);
        button2.setOnClickListener(this);
        button3.setOnClickListener(this);
        button4.setOnClickListener(this);
        button5.setOnClickListener(this);
        buttonEqual.setOnClickListener(this);
        buttonAdd.setOnClickListener(this);

        buttonAbout.setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.button_1:
                inputData+="1";
                resutTextView.setText(inputData);
                break;

            case R.id.button_2:
                inputData+="2";
                resutTextView.setText(inputData);
                break;

            case R.id.button_3:
                inputData+="3";
                resutTextView.setText(inputData);
                break;

            case R.id.button_4:
                inputData+="4";
                resutTextView.setText(inputData);
                break;

            case R.id.button_5:
                inputData+="5";
                resutTextView.setText(inputData);
                break;

            case R.id.button_equal:
                int rString =  Integer.parseInt(inputData);
                result+=rString;
                resutTextView.setText(result+"");
                inputData="";
                result=0;
                break;
            case R.id.button_Addition:
                if(inputData==null) inputData="0";
                int re =  Integer.parseInt(inputData);
                result+=re;
                resutTextView.setText(result+"");
                inputData="";
                break;

            case R.id.button_About:
                inputData="";
                result=0;
                startActivity(new Intent(MainActivity.this, About.class));
                break;

        }



    }
}