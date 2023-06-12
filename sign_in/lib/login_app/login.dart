import 'package:flutter/material.dart';
import 'package:sign_in/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign in',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: buildButton(),
    );
  }

  Padding buildButton() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('assets/images/glogo.png'),
            text: Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: () {},
          ),
          ButtonTheme(
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/flogo.png'),
                  Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('assets/images/glogo.png'),
                  ),
                ],
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
          ),
          SizedBox(
            height: 5,
          ),
          ButtonTheme(
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/glogo.png'),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('assets/images/glogo.png'),
                  ),
                ],
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.green[600]),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
          ),
        ],
      ),
    );
  }
}
