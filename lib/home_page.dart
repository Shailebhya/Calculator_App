import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 =TextEditingController(text: "0");
  final TextEditingController t2 =TextEditingController(text: "0");

  void doAddition(){
    setState(() {
      num1= int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void doClear(){
    setState(() {
      t1.clear();
      t2.clear();
      sum=0;
    });
  }

  void doSub(){
    setState(() {
      num1= int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }

  void doMul(){
    setState(() {
      num1= int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }

  void doDiv(){
    setState(() {
      num1= int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1 ~/ num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Output:$sum ",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.purple
            ),),

            TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: InputDecoration(
                hintText: "Enter number 1"
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: InputDecoration(
                  hintText: "Enter number 2"
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                MaterialButton(
                  child:Text("+") ,
                  color: Colors.greenAccent,
                  onPressed:doAddition
                ),
                MaterialButton(
                  child:Text("-") ,
                  color: Colors.greenAccent,

                  onPressed:doSub,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child:Text("*") ,
                  color: Colors.greenAccent,

                  onPressed: doMul,
                ),
                MaterialButton(
                  child:Text("/") ,
                  color: Colors.greenAccent,

                  onPressed: doDiv,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  child:Text("Clear") ,
                  color: Colors.greenAccent,

                  onPressed:doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
