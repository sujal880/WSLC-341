import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add",
      home: Addition(),
    );
  }
}

class Addition extends StatefulWidget {
  const Addition({super.key});

  @override
  State<Addition> createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  TextEditingController firstnumberController = TextEditingController();
  TextEditingController secondnumberController = TextEditingController();
  String result="0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addition"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextField(
              controller: firstnumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "First Number",
                  suffixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextField(
              controller: secondnumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Second Number",
                  suffixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextField(
              enabled: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: result,
                  suffixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7))),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {
                   addnumber(firstnumberController.text.toString(), secondnumberController.text.toString());
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                  )),
                  child: Text("Add"))),

        ],
      ),
    );
  }
  addnumber(String num1,String num2){
    if(num1=="" || num2==""){
      setState(() {
        result="enter numberone and numbertwo";
      });
    }
    else{
      int value1=int.parse(num1.toString());
      int value2=int.parse(num2.toString());
      int sum=value1+value2;
      setState(() {
        result=sum.toString();
      });
    }
  }
}
