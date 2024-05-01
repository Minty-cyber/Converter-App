import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ThatOneGuy', style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 25, 9, 197)
          ),
          ), 
        
        ],
    )));
  }
}
