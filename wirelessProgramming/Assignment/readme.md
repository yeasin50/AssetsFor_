
### Simply follow the steps
Follow the link for direct Nevigation
- On [`activity_main.xml`](activity_main.xml)

- Assign id at [`TextView`](./MainActivity.java#L10) 
  
```xml
<TextView
    android:id="@+id/textView"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:textSize="32sp"
    android:text="Welcome"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintLeft_toLeftOf="parent"
    app:layout_constraintRight_toRightOf="parent"
    app:layout_constraintTop_toTopOf="parent" />
```
  ----
- On [`MainActivity.java`](./MainActivity.java)
   -  create [`TextView` Object ](./MainActivity.java#L11)
   - locate the [textView object](./MainActivity.java#L17)
   - Change Text by [SingleTap](./MainActivity.java#L18-L23)

Or just copy-paste

```java
 TextView textView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textView= findViewById(R.id.textView);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                textView.setText("Your Name");
            }
        });
    }
```

-------

>### Don't forget to [Assign your Name](./MainActivity.java#L21)

