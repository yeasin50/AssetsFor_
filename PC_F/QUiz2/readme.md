
- ### 1st copy paste [activity_main.xml ](https://github.com/yeasin50/AssetsFor_/blob/master/PC_F/QUiz2/activity_main.xml) 
- ### Then just copy-paste [MainActivity.java ](https://github.com/yeasin50/AssetsFor_/blob/8c600f2c6ade48593708a30ee57fe0d809c3a667/PC_F/QUiz2/MainActivity.java) from [Line 10-End](https://github.com/yeasin50/AssetsFor_/blob/8c600f2c6ade48593708a30ee57fe0d809c3a667/PC_F/QUiz2/MainActivity.java#L10-L41) 

### Remeber the [package Name](https://github.com/yeasin50/AssetsFor_/blob/8c600f2c6ade48593708a30ee57fe0d809c3a667/PC_F/QUiz2/MainActivity.java#L1) Line 1
 
setContentView is use to connect xml file with java file. setContentView also call from onCreate method. This is the property of MainAcitivity that extends from AppCompatActivity.
</br>example: 
as default we have activity_main.xml file. In our MainActivity.java we call setContentView(R.layout.activity_main) inside Oncreate state. As a result we can manupulate xml file properties through our MainAcitivity.java file.   

This is how it works:
~~~
 @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
}
~~~
