
### Simply follow the steps
Follow the link for direct Nevigation
- On [activity_main.xml](https://github.com/yeasin50/AssetsFor_/blob/master/PC_F/Assignment/activity_main.xml)
  -  Assign id at [TextView](https://github.com/yeasin50/AssetsFor_/blob/e63fc3ded299ee52263230d4de7df4e84cee4926/PC_F/Assignment/activity_main.xml#L11) or copy-paste [TextView](https://github.com/yeasin50/AssetsFor_/blob/e63fc3ded299ee52263230d4de7df4e84cee4926/PC_F/Assignment/activity_main.xml#L10-L20) 
   ~~~
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
  ~~~
  ----
- On [MainActivity.java](https://github.com/yeasin50/AssetsFor_/blob/master/PC_F/Assignment/MainActivity.java)
   -  create [TextView Object ](https://github.com/yeasin50/AssetsFor_/blob/e63fc3ded299ee52263230d4de7df4e84cee4926/PC_F/Assignment/MainActivity.java#L11)
   - locate the [textView object](https://github.com/yeasin50/AssetsFor_/blob/e63fc3ded299ee52263230d4de7df4e84cee4926/PC_F/Assignment/MainActivity.java#L17)
   - Change Text by [SingleTap](https://github.com/yeasin50/AssetsFor_/blob/e63fc3ded299ee52263230d4de7df4e84cee4926/PC_F/Assignment/MainActivity.java#L18-L23)

Or just copy-paste
~~~
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
~~~
-------

