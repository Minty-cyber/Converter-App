import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                            borderSide:  const BorderSide(
                                width: 2.0,
                                style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          );
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                     const Text(
                      'Trillions', style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 255, 255, 255)
                      ),
                      ), 
                    //Padding and container
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: TextField(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black
                        ), 
                        decoration: InputDecoration(
                            hintText: 'Please enter the amount in GHS',
                            hintStyle: const TextStyle(
                              color: Colors.black
                            ),
                            prefixIcon: const Icon(Icons.monetization_on),
                            prefixIconColor: Colors.black,
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: border,
                            enabledBorder: border,
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: true
                        )
                        ),
                   ),

                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: TextButton(onPressed: () {
                        if (kDebugMode) {
                            print('Button Clicked'); 
                        }
                     }, 
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                            foregroundColor: MaterialStateProperty.all(Colors.white),
                            // fixedSize:MaterialStateProperty.all(const Size(double.infinity())),
                            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
                            shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.zero)), 
                            
                        ),
                        child: const Text('Convert')
                     
                     ),
                   ),

                  
                  ],
    ),
    ),
    );
  }
}
