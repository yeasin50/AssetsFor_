package com.example.a;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class NextActivity extends AppCompatActivity {
    private static final String TAG = "NextActivity";
    String name, id;
    int count ;
    Button processsBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_next);

        Intent intent = getIntent();
         id = intent.getStringExtra("id");
         name = intent.getStringExtra("name");
         count = intent.getIntExtra("count",0);
        Log.i(TAG, "onCreate: "+ id+" "+ name + count);

        processsBtn = findViewById(R.id.processBtn);
        processsBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
             int toastText = count/id.charAt(id.length()-1);
                Log.i(TAG, "onClick: " +id.charAt(id.length()-1));
                Toast.makeText(getApplicationContext(), name+","+id+","+ toastText,Toast.LENGTH_LONG).show();

            }
        });
    }
}