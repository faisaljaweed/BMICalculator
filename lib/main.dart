
// import 'package:dictionary/Screen.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}
// class DictionaryApp extends StatelessWidget {
  
//   var nameController=TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Hello Faisal"),
//         centerTitle: true,),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("DashBoard Screen"),
//             SizedBox(
//               height: 30,
//             ),
//             TextField(
//               controller: nameController,
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(onPressed: (){
//               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen(nameController.text.toString()),),);
//             },
//              child: Text("NextPage")),

//           ],
//         ),
//       ),
//     );
//   }
// }





class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
 var wtController=TextEditingController();

 var ftController=TextEditingController();

 var inController=TextEditingController();

var result="";

var bgcolor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("YOUR BMI"),
          centerTitle: true,
        ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BMI",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700),),
                SizedBox(height: 11,),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Weight in Kgs"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                 TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Heights in feet"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                 TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text("Enter Your Height in inch"),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(onPressed: (){
                  var wt=wtController.text.toString();
                  var ft=ftController.text.toString();
                  var inch=inController.text.toString();
                  if(wt!="" && ft!=""&& inch!=""){
                    var iwt=int.parse(wt);
                    var ift=int.parse(ft);
                    var iInch=int.parse(inch);
      
                    var tInch=(ift*12)+iInch;
      
                    var tCm=tInch*2.54;
      
                    var tM=tCm/100;
      
                    var bmi=iwt/(tM*tM);

                    var msg="";
                    if(bmi>25){
                      msg ="You are Over Weight";
                      bgcolor=Colors.orange.shade200;
                    }

                    else if(bmi<18){
                      msg ="You are UnderWeight";
                      bgcolor=Colors.red.shade200;
                    }
                    else{
                      msg ="You are Healthy";
                      bgcolor=Colors.green.shade200;
                    }
                    
                    setState(() {
                      result="$msg \nYour BMI is :${bmi.toStringAsFixed(4)}";
                    });
                  }
                  else{
                  setState((){
                     result="Please fill all the required blanks";
                  });
                 
                  }
                }, 
                child: Text("Calculate")),
                 SizedBox(
                  height: 16,
                ),
                Text(result),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}