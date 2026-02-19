
import 'package:flutter/material.dart';

void pushReplacement( context, Widget newScreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newScreen),
  );
}
void push( context, Widget newScreen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => newScreen),
  );
}
// void pushReplacement( context, Widget newScreen) {
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => newScreen),
//   );
// }
// void pushReplacement( context, Widget newScreen) {
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => newScreen),
//   );
// }
// void pushReplacement( context, Widget newScreen) {
//   Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => newScreen),
//   );
// }