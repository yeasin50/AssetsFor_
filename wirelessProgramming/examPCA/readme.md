### 1 
 Example code:
```xml  
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:gravity="center"
    android:weightSum="4"
    tools:context=".NextActivity">

    <TextView
        android:layout_width="200dp"
        android:text="Hey amigo"
        android:layout_gravity="center"
        android:gravity="center"
        android:layout_height="wrap_content"/>

</LinearLayout>
```

In this code we can see `LinearLayout` has a `gravity` property, it is used to center all its children that are inside them. 
Linear layout has a `gravity` center, so Child `TextView` will be the center of UI. Also `TextView` has gravity as center, so inside of it (here text) will be center of `TextView`;
`Layout gravity` is used to move itself. Like say we wanna position itself. If we remove `gravity` from linear layout and use gravity layout of `TextView`, it can be position on screen according to layoutGravity  . 

Rest u have done. Or comment here /msg box 

> rest you've got it, dont use readme.md 
