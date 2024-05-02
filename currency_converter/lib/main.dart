import 'package:currency_converter/currency_converter_page.dart';
// import 'package:currency_converter/currency_converter_cupertino_page.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; //Importing some package called material.dart

void main(){
    runApp(const MyApp());
}


// State meaning: It is a data that determines how your widget should look like
// Stateles Widget: This is a kind of widget where your app has less state

// Material Design and Cupertino designs


class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(
          home: CurrencyConverterMaterialPage(),

        );
    }
}


// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//    @override
//     Widget build(BuildContext context) {
//         return const CupertinoApp(
//           home: CurrencyConverterCupertinoPage(),

//         );
//     }
// }