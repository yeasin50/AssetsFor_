
# Quiz 2

- 1st copy paste [`activity_main.xml `](activity_main.xml) 
- Then just copy-paste [`MainActivity.java `](./MainActivity.java) from [Line 10-End](./MainActivity.java#L10-L41) 

> Remeber the [package Name](./MainActivity.java#L1) Line 1
 
`setContentView()` is use to connect xml file with java file. `setContentView()` also call from onCreate method. This is the property of `MainAcitivity` that extends from `AppCompatActivity`.

**example:**
By default we have `activity_main.xml` file. In our `MainActivity.java` we call `setContentView(R.layout.activity_main)` inside Oncreate state. As a result we can manipulate xml file properties through our `MainAcitivity.java` file.   

This is how it works : 
```java
 @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
}
```
