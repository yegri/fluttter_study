import 'package:flutter/material.dart';
import 'package:sign_in/login_app/login.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      required this.image,
      required this.text,
      required this.color,
      required this.radius,
      required this.onPressed});

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final LogIn logIn = new LogIn();
    logIn.buildButton();

    return ButtonTheme(
      height: 50,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('assets/images/glogo.png'),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}
