import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the first page'
              'We are making on-boarding screens.'
              'It is very interesting!',
          image: Image.asset('assets/images/3908920.jpg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the second page'
              'We are making on-boarding screens.'
              'It is very interesting!',
          image: Image.asset('assets/images/8716290.jpg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the third page'
              'We are making on-boarding screens.'
              'It is very interesting!',
          image: Image.asset('assets/images/3908920.jpg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        activeColor: Colors.red,
      ),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.white,
    );
  }
}
