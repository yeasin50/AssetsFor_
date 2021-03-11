package com.example.midexam;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class InfoActivity extends AppCompatActivity {
    private static final String TAG = "InfoActivity";

    TextView textView;
    String  name, id, phone;

    String getSemester(char num){
        if(num=='1') return  "Spring";
        if(num=='2') return  "Summer";
        if (num=='3') return  "Fall";
        else return  "invalid Semester";
    }

    String getDepartment(String dp){
        switch (dp){
            case "15":
                return  "CSE";
            case "14":
                return  "Software Engineering";
            case "13":
                return  "BBA";
            case "12":
                return "English";
            case "11":
                return "Pharmacy";
            default:
                return "invalid Department input";
        }
    }



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_info);

        textView = findViewById(R.id.textViewResult);

        Intent  intent = getIntent();
        name = intent.getStringExtra("name");
        id    = intent.getStringExtra("id");
        phone = intent.getStringExtra("phone");
        Log.i(TAG, "onCreate: "+phone);
    }

    public void handleProcessingInfo(View view) {

        String processText = "";

        String last2Char = phone.substring(phone.length()-2, phone.length());
        char semeterchar = id.charAt(2);
        String deptCode = id.substring(4, 6);
        Log.i(TAG, "handleProcessingInfo: last2Char "+ last2Char);
        Log.i(TAG, "handleProcessingInfo: semeCode "+ semeterchar);
        Log.i(TAG, "handleProcessingInfo: deptCode"+ deptCode);

        int last2Digit = Integer.parseInt(last2Char);

        if(last2Digit%2==0){
            processText = name +" has admitted in " + getSemester(semeterchar)+" 20"+id.substring(0,2);
        }else {
            processText = name+ " has admitted in " + getDepartment(deptCode)+ " Department";
        }

        textView.setText(processText);
        textView.setTextSize(33);

    }
}