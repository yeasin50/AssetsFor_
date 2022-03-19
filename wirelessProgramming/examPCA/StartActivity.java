package com.example.a;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class StartActivity extends AppCompatActivity {

    EditText nameEditText, idEditText;
    Button countBtn, nevigateBtn;
    int count=0 ;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        nameEditText = findViewById(R.id.editTextName);
        idEditText = findViewById(R.id.editTextID);
        countBtn = findViewById(R.id.buttonCount);
        nevigateBtn = findViewById(R.id.nevigateBtn);

        countBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                count++;
            }
        });
        nevigateBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name = nameEditText.getText().toString();
                String id = idEditText.getText().toString();
                if(name.isEmpty() || id.isEmpty()){
                    return;
                }
                Intent i  = new Intent(StartActivity.this, NextActivity.class);
                i.putExtra("name", name);
                i.putExtra("id", id);
                i.putExtra("count",count);
                startActivity(i);
            }
        });
    }
}