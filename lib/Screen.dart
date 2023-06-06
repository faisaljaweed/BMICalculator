// import 'package:flutter/material.dart';

// class Screen extends StatelessWidget {
//   var nameFromHome;
//   Screen(
//     this.nameFromHome,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Hello Jani"),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("welcome $nameFromHome"),
//               SizedBox(
//               height: 30,
//             ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text("Welcome "),
//                   SizedBox(
//               height: 30,
//             ),
        
//                   ElevatedButton(onPressed: (){Navigator.pop(context);}, 
//                   child: Text("Back")),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }