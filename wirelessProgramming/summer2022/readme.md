> simplified question. I didnt like the question.

### A)

The question senario doesnt clarify how the result will be generated. So we are taking the list 4 items as Button. While pressing the button result will be shown on bellow section as UI described.

### B) Xml of

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".MainActivity">


    <EditText
        android:id="@+id/idEditText"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:backgroundTint="#E91E63"
        android:hint="Enter a number"
        android:padding="20dp"
        android:textAlignment="center" />

    <androidx.appcompat.widget.AppCompatButton
        android:id="@+id/factorialButtonID"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_margin="8dp"
        android:background="#FFFFFF"
        android:onClick="handleTapEvent"
        android:padding="24dp"
        android:text="Factorial value"
        android:textAlignment="textStart"
        android:textAllCaps="false"

        />

    <androidx.appcompat.widget.AppCompatButton
        android:id="@+id/rootValueID"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_margin="8dp"
        android:background="@color/white"
        android:onClick="handleTapEvent"
        android:padding="24dp"
        android:text="Root value"
        android:textAlignment="textStart"
        android:textAllCaps="false" />

    <androidx.appcompat.widget.AppCompatButton
        android:id="@+id/sqRootValue"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_margin="8dp"
        android:background="@color/white"
        android:onClick="handleTapEvent"
        android:padding="24dp"
        android:text="Square Root value"
        android:textAlignment="textStart"
        android:textAllCaps="false" />

    <androidx.appcompat.widget.AppCompatButton
        android:id="@+id/powerOf10BTN"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_margin="8dp"
        android:background="@color/white"
        android:onClick="handleTapEvent"
        android:padding="24dp"
        android:text="Square value"
        android:textAlignment="textStart"
        android:textAllCaps="false" />


    <TextView
        android:id="@+id/resultTextViewID"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginTop="8dp"
        android:padding="24dp"
        android:text="Converted result will be show here"
        android:textAlignment="center" />
</LinearLayout>
```

### C)  I am not using ListView here for fixed item, To bypass the adapter usecase

```java
package com.example.summer2020;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;


public class MainActivity extends AppCompatActivity {

    EditText editText;
    TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editText = findViewById(R.id.idEditText);
        textView = findViewById(R.id.resultTextViewID);
    }


    int getValue() {
        try {
            final String text = editText.getText().toString();
            int value = Integer.parseInt(text);
            return value;
        } catch (Exception e) {
            return 0;
        }

    }

    public void handleTapEvent(View view) {
        switch (view.getId()) {
            case R.id.factorialButtonID:
                long fact = 1;
                for (int i = 1; i <= getValue(); ++i) {
                    fact *= i;
                }
                textView.setText(String.format("%s", fact)); //4digit will be out of range
                return;

            case R.id.rootValueID:
                double value = Math.sqrt(getValue());
                textView.setText(String.format("%s", value));
                return;

            case R.id.sqRootValue:
                textView.setText(String.format("%s", Math.sqrt(getValue())));
                return;

            case R.id.powerOf10BTN:
                textView.setText(String.format("%s", Math.pow(getValue(), 10)));
                break;
        }
    }
}
```

### d)

If the user click on button/list item, it will trigger `getValue` method to get int from editText. Before this, It will try to convert to int. But if the text is null, this will trow exception and app will crush.
To control this situation, we can use try-catch block to handle this situation.

```java
     try {
            final String text = editText.getText().toString();
            int value = Integer.parseInt(text);
            return value;
        } catch (Exception e) {
            return 0;
        }
```

### E)

`setContentView(R.layout.activity_main);` is used to connect the xml file to java file. If we don't use this line, we wont be able to manipulate xml file components. And we wont be able to get text from user thorough editText and perform calculation and update ui.


### F)
 I am using LinearLayout because it is simple and easy to maintain the components. The UI is simple and LinearLayout with vertical orientation is perfect for the job.....[you can include more about LinearLayout]


### F)  

We are using LinearLayout with vertical orientation. `android:layout_height="match_parent"` means the view will get full height of the parent. While the parent is Linearlayout and it is using full phone screen height. If we use ``android:layout_height="match_parent"`` on any inner view, this will will take the full height of screen/LinearLayout. Others widget wont be available on UI. Note that we are using 4 buttons instead of ListView here.(not sure about listview viewPort, could be unbounded height/ screen height item).........



