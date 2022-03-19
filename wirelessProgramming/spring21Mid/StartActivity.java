package com.example.midexam;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class StartActivity extends AppCompatActivity {

    EditText editTextName, editTextID, editTextPhone;
    Button buttonNext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editTextID = findViewById(R.id.ediTextID);
        editTextName = findViewById(R.id.ediTextName);
        editTextPhone = findViewById(R.id.ediTextPhone);
        buttonNext = findViewById(R.id.buttonGotoNext);


        buttonNext.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String id = editTextID.getText().toString().trim();
                String name = editTextName.getText().toString().trim();
                String phone = editTextPhone.getText().toString().trim();

                ///handle if we submit form with empty fields
                if(id.isEmpty()|| name.isEmpty() || phone.isEmpty()){
                    return;
                }

                Intent intent = new Intent(getApplicationContext(), InfoActivity.class);
                intent.putExtra("name", name);
                intent.putExtra("id", id);
                intent.putExtra("phone", phone);

                //finally going to infoPage/Screen
                startActivity(intent);
            }
        });
    }
}