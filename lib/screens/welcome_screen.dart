import 'package:crewchat/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:crewchat/Components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(controller.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                      child: Image.asset('images/logo.png'),
                      height: animation.value * 100),
                ),
                ColorizeAnimatedTextKit(
                  text: ['Crew Chat'],
                  textStyle: kWelcomeTextStyle,
                  colors: kcolorizeColors,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RoundedBtn(
                      btncolor: kSecondaryColor,
                      btntext: 'Already Member',
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      }),
                  RoundedBtn(
                      btncolor: kPrimaryColor,
                      btntext: 'Join Crew',
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
