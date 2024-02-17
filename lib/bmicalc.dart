import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
 double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('bmicalculator',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black26),
      ),
      centerTitle: true,
    ),
      backgroundColor: Colors.black12,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children:[

        TextField(
        controller: weight,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white38,
              hintStyle: TextStyle(color: Colors.black),
              hintText: "Weight"
          ),
        ),

          SizedBox(
            height: 20,
            width: 10,
          ),

          TextField(
          controller: height,
        decoration: InputDecoration(
          filled: true,
            fillColor: Colors.white38,
        hintStyle: TextStyle(color: Colors.black),
    hintText: "Height"
    ),
    ),

          TextButton(onPressed: (){
            setState(() {
              calculate();
            });

            },
              child:Text('Calculate')),
          Text(result.toString()),
      ]),
    );
  }
}
