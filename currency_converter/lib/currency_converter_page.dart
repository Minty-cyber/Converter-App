import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage ({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState(){
    print('Create state')
     return _CurrencyConverterMaterialPageState();
   
  }
}

class _CurrencyConverterMaterialPageState
 extends State<CurrencyConverterMaterialPage> {

   @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();

    final border = OutlineInputBorder(
                            borderSide:  const BorderSide(
                                width: 2.0,
                                style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          );
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                      Text(
                      result.toString(), 
                      style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          // fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 255, 255, 255)
                      ),
                      ), 
                    //Padding and container
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: TextField(
                        controller: textEditingController,
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
                     child: TextButton(
                      onPressed: () {
                        result = double.parse(textEditingController.text)*81;

                     }, 
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor:Colors.white,
                            // fixedSize:MaterialStateProperty.all(const Size(double.infinity())),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
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


