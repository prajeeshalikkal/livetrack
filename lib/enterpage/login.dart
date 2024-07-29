// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: height,
//               width: width,
//               child: Stack(
//                 children: [
//                   Container(
//                     height: height / 1.8,
//                     width: width,
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                     ),
//                     child: Image.asset(
//                       "assets/UpscalerAfter.webp",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                     top: height / 2.2,
//                     child: Container(
//                       height: height / 1.8,
//                       width: width,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(28),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey,
//                             blurRadius: 8,
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: height / 30,
//                           ),
//                           Text(
//                             "Welcome to the App",
//                             style: TextStyle(
//                               color: Color.fromARGB(255, 103, 16, 202),
//                               fontWeight: FontWeight.w600,
//                               fontSize: 18,
//                             ),
//                           ),
//                           SizedBox(
//                             height: height / 60,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   indent: 20,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 8.0),
//                                 child: Text(
//                                   "Get Started",
//                                   style: TextStyle(
//                                     color: Color.fromARGB(255, 103, 16, 202),
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Divider(
//                                   endIndent: 20,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: width / 20),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   height: height / 15,
//                                   decoration: BoxDecoration(
//                                     color: const Color.fromARGB(255, 233, 231, 231),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   child: TextFormField(
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       labelText: 'enter phone number',
//                                       prefixIcon: Container(
//                                         width: 70,
//                                         child: Row(
//                                           children: [
//                                             SizedBox(width: 8),
//                                             DropdownButton<String>(
//                                               value: '+91',
//                                               underline: Container(),
//                                               items: ['+91', '+1', '+44'].map((String value) {
//                                                 return DropdownMenuItem<String>(
//                                                   value: value,
//                                                   child: Text(value),
//                                                 );
//                                               }).toList(),
//                                               onChanged: (newValue) {
//                                                 // Handle country code change
//                                               },
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     keyboardType: TextInputType.phone,
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         return 'Please enter your phone number';
//                                       }
//                                       return null;
//                                     },
//                                     onSaved: (value) {
//                                       // Save the phone number value
//                                     },
//                                   ),
//                                 ),
//                                 SizedBox(height: height / 38),
//                                 Container(
//                                   width: width / 1.1,
//                                   height: height / 17,
//                                   decoration: BoxDecoration(
//                                     color: Color.fromARGB(255, 103, 16, 202),
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: const Center(
//                                     child: Text(
//                                       "Continue",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 15,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: height / 38),
//                                 Text(
//                                   "By continuing, you agree to the terms of use and privacy policy",
//                                   style: TextStyle(
//                                     color: Color.fromARGB(255, 103, 16, 202),
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 13.5,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


