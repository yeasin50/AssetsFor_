Java file for C 
XML file for B 

all => https://docs.google.com/document/d/1hC_hm8tpnim44_WPMOQfFjQrkFEcFYxW2trtU5bZlC4/edit?usp=sharing

Ans. 1
As default linear layout uses horizontal rotation. In our UI every widget takes match parent width. So in such a case, we are able to see only the 1st widget of our xml. To handle such an error we just have to use orientation as verticale in mainLayout. 
 
xml: 
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity"
    android:layout_margin="4dp"
    android:orientation="vertical">

    <EditText
        android:textSize="30sp"
        android:id="@+id/editText"
        android:inputType="number"
        android:hint="enter a number"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"/>

    <Button
        android:id="@+id/button_solve"
        android:layout_width="match_parent"
        android:text="Fractional BTN"
        android:textStyle="bold"
        android:layout_height="wrap_content"/>

    <TextView
        android:textSize="26sp"
        android:id="@+id/textViewResult"
        android:text="Factorial will come here"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"/>
</LinearLayout>




Java : 

public class MainActivity extends AppCompatActivity {

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
//                calcFactorial();
                int i,fact=1;
                int number=Integer.parseInt(editText.getText().toString());
                for(i=1;i<=number;i++){
                    fact=fact*i;
                }
                resultTextView.setText(fact+"");

            }
        });

    }


}

D)   If any user click on the FACTORIAL BTN before giving input in EditText then it will break the app. Because we are trying to do a math operation on null. We can simply handle this error just by checking if editText has some value or not. Here are lines of code needed to execute at the beginning of the onClick method. 
 if(editText.getText().toString().isEmpty()){
   return;
}
If we editText is empty, this will stop executing the rest of code.

h) Intent use to navigate between activities. 
	Intent ii=new Intent(Home.this, A.class);
We are creating an Intent object here. It will intent to A Activity. 
	ii.putExtra(“name”, s);
putExtra is used to pass data between activities and this takes key and value. Here we are passing name as key and s as value. 
 While we call startActivity, it simply goto A activity.
i)   we need to create an activity 1st. To start a new Activity using intent.  Like below
. 
 buttonFact.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(editText.getText().toString().isEmpty()){
                    return;
                }
                //TODO: update here
                Intent i  = new Intent(StartActivity.this, NextActivity.class);
                
                startActivity(i);
            }
        });

