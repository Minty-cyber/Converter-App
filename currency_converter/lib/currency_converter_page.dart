import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ThatOneGuy', style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 255, 255, 255)
                    ),
                    ), 
                  TextField(
                      style: TextStyle(
                        color: Colors.white
                      ), 
                      decoration: InputDecoration(
                          label: Text('Please enter the amount in GHS', style: TextStyle(
                            color: Colors.white
                          ),),


                      ) ,
                  )
                  ],
    )));
  }
}
