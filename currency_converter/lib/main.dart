import 'package:flutter/material.dart'; //Importing some package called material.dart

void main(){
    runApp();
}


// State meaning: It is a data that determines how your widget should look like
// Stateles Widget: This is a kind of widget where your app has less state
class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Text('Hello World!!!', 
            textDirection: TextDirection.rtl
            ,);

    }
}