import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.yellow,
    );
  }
}
//============================================================
// import 'package:day_one/main.dart';
// import 'package:flutter/material.dart';
//
// class More extends StatefulWidget {
//   const More({Key? key}) : super(key: key);
//
//   @override
//   State<More> createState() => _MoreState();
// }
//
// class _MoreState extends State<More> {
//   void _showBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           height:height*0.1,
//           width: width,
//           color: Colors.purple[20],
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Text('This is a bottom sheet!'),
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _showBottomSheet,
//           child: Text('Show BottomSheet'),
//         ),
//       ),
//     );
//   }
// }
//=====================================================================
//
// import 'package:flutter/material.dart';
//
// class More extends StatefulWidget {
//   const More({Key? key}) : super(key: key);
//
//   @override
//   State<More> createState() => _MoreState();
// }
//
// class _MoreState extends State<More> {
//   @override
//   Widget build(BuildContext context) {
//     // Get screen size
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//
//     void _showBottomSheet() {
//       showModalBottomSheet(
//         context: context,
//         builder: (BuildContext context) {
//           return Container(
//             height: height * 0.1,
//             width: width,
//             color: Colors.purple, // Changed color to regular purple
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0), // Adjusted padding
//               child: Text('This is a bottom sheet!'),
//             ),
//           );
//         },
//       );
//     }
//
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _showBottomSheet,
//           child: Text('Show BottomSheet'),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: More(),
//   ));
// }