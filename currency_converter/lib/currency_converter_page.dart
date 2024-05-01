import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget{
    const CurrencyConverterMaterialPage({super.key});

    @override
    Widget build(BuildContext context){
      return const Scaffold(
           body: ColoredBox(
              color: Color(value),
              child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Text('0')
              ],
           ),
           ) 
      );
    }
}