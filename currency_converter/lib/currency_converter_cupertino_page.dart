import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                            borderSide:  const BorderSide(
                                width: 2.0,
                                style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          );
    return  CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text('Currency Converter'),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                      Text(
                      '\$ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
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
                     child: CupertinoTextField(
                        controller: textEditingController,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: CupertinoColors.black,
                        ), 
                        decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        placeholder:  'Please enter the amount in GHS',
                        prefix: const Icon(CupertinoIcons.money_dollar),

                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: true
                        )
                        ),

                   ),

                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          result = double.parse(textEditingController.text)*81;
                          
                        });
                     }, 
                        color: CupertinoColors.bls,
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
