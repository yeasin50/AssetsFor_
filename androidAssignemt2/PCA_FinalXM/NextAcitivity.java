package com.example.loginactivity;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.example.loginactivity.fragment.CalculateBMI;
import com.example.loginactivity.fragment.Celsius_to_Fahrenheit;
import com.example.loginactivity.fragment.Fahrenheit_to_Celsius;

public class NextAcitivity extends AppCompatActivity {

    private static final String TAG = "NextAcitivity";
   Fragment fragment;
   FragmentManager manager;
    Button btnBMI, btnFtoC, btnCtoF;
    public static String id = "181-123123";
    public  static MyDBHelper dbHelper;


    public static  void saveData(String dataType, String id, String value){
        long rowID = dbHelper.insertData(id, dataType, value);
        Log.i(TAG, "saveData: "+ rowID);
    }

   public static final  void preViewDB(Context context){
        Cursor cursor = dbHelper.viewData();
        if(cursor.getCount()==0){
            show_Dialog(context, "Empty DB", "Save Data and try again");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (cursor.moveToNext()){
            stringBuffer.append("ID : "+ cursor.getString(1)+"\n");
            stringBuffer.append(" "+ cursor.getString(2)+": "+cursor.getString(3)+"\n\n");
        }
        show_Dialog (context,"Stored Data",stringBuffer.toString());
    }

    private static void show_Dialog(Context context, String title, String message) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(title);
        builder.setMessage(message);
        builder.setCancelable(true);
        builder.show();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_next_acitivity);

        dbHelper = new MyDBHelper(this);
        SQLiteDatabase sqlDataException = dbHelper.getWritableDatabase();

//        id = getIntent().getStringExtra("id");
        btnBMI = findViewById(R.id.btnBMI);
        btnCtoF= findViewById(R.id.btnCtoF);
        btnFtoC = findViewById(R.id.btnFtoC);
         manager = getSupportFragmentManager();
//        fragment = new CalculateBMI();
//        FragmentTransaction transaction = manager.beginTransaction();
//        transaction.replace(R.id.fragmentContainer, fragment).commit();
//
        btnBMI.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fragment = new CalculateBMI();
                FragmentTransaction transaction = manager.beginTransaction();
                transaction.replace(R.id.fragmentContainer, fragment).commit();
            }
        });

        btnCtoF.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            fragment = new Celsius_to_Fahrenheit();
                FragmentTransaction transaction = manager.beginTransaction();
                transaction.replace(R.id.fragmentContainer, fragment).commit();
            }
        });

        btnFtoC.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fragment = new Fahrenheit_to_Celsius();
                FragmentTransaction transaction = manager.beginTransaction();
                transaction.replace(R.id.fragmentContainer, fragment).commit();
            }
        });
//

    }
}