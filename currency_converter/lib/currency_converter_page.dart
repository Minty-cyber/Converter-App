import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                            borderSide:  BorderSide(
                                width: 2.0,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside,
                            ),
                            borderRadius:  BorderRadius.all(Radius.circular(60)),
                          );
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(
                    'ThatOneGuy', style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 255, 255, 255)
                    ),
                    ), 
                   TextField(
                      style:  const TextStyle(
                        color: Colors.black
                      ), 
                      decoration: InputDecoration(
                          hintText: 'Please enter the amount in GHS',
                          hintStyle: const TextStyle(
                            color: Colors.black
                          ),
                          prefixIcon: Icon(Icons.monetization_on),
                          prefixIconColor: Colors.black,
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: border,
                          enabledBorder: border,


                      ) ,
                  )
                  ],
    ),
    ),
    );
  }
}
