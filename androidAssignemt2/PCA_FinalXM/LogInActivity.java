package com.example.loginactivity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class LogInActivity extends AppCompatActivity {

    EditText editTextID, editTextPass;
    Button btnLogIN;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login_activity);
//direct to next
        startActivity(new Intent(getApplicationContext(), NextAcitivity.class));

        editTextID= findViewById(R.id.ediTextStdID);
        editTextPass = findViewById(R.id.ediTextStdpPss);

        btnLogIN = findViewById(R.id.btnLogin);

        btnLogIN.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String id = editTextID.getText().toString().trim();
                String pass = editTextPass.getText().toString().trim();
                if(id.isEmpty()){
                    editTextID.setError("Enter your ID");;
                    editTextID.requestFocus();
                    return;
                }

                if(pass.isEmpty()){
                    editTextPass.setError("Enter your password");;
                    editTextPass.requestFocus();
                    return;
                }

                //validation of s 5th char mean index 4
                if(pass.charAt(4)!='s'){
//                    editTextPass.setError("5th char must be s");;
//                    editTextPass.requestFocus();
                    Toast.makeText(getApplicationContext(), "Login failed! Enter your password again!", Toast.LENGTH_SHORT ).show();
                    return;
                }
                startActivity(new Intent(getApplicationContext(), NextAcitivity.class).putExtra("id",id));
            }
        });
    }
}