package com.example.loginactivity;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.widget.Toast;

import androidx.annotation.Nullable;

public class MyDBHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "PDatabase.db";
    private static final String TABLE_NAME = "IDAndValue";
    private static final String ID = "_id";
    private static final String STD_ID = "std_id";
    private static final String DATATYPE = "data_type";
    private static final String VALUE = "value";
    private static final int VERSION = 1;

    public  Context context;
    public MyDBHelper(@Nullable Context context) {
        super(context, DATABASE_NAME, null, VERSION);
        this.context = context;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
         String CREATE_TABLE = "CREATE TABLE " + TABLE_NAME + "("+ ID + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                 STD_ID+" TEXT ,"+
                 DATATYPE +" TEXT, "+
               VALUE+" TEXT" +")";

        try {
            db.execSQL(CREATE_TABLE);
        } catch (Exception e) {
            Toast.makeText(context, "Exception: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        try {
            db.execSQL("DROP TABLE IF EXISTS "+ TABLE_NAME);
            onCreate(db);
        } catch (Exception e) {
            Toast.makeText(context, "Exception: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }    }

    public long insertData(String id, String dataType, String value){
        SQLiteDatabase sqLiteDatabase = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(STD_ID, id);
        contentValues.put(DATATYPE, dataType);
        contentValues.put(VALUE, value);
        long rowID = sqLiteDatabase.insert(TABLE_NAME, null, contentValues);
        return rowID;
    }
    public Cursor viewData(){
        SQLiteDatabase sqLiteDatabase = this.getWritableDatabase();
        Cursor cursor = sqLiteDatabase.rawQuery("SELECT * FROM "+TABLE_NAME,null);
        return  cursor;
    }
}
