import 'package:crewchat/Components/rounded_button.dart';
import 'package:crewchat/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/loginbg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // SizedBox(
                //   height: 258.0,
                // ),
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                // SizedBox(
                //   height: 140.0,
                // ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log In',
                        textAlign: TextAlign.center,
                        style: kh3TextStyle,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        style: kTextFieldstyle,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration:
                            kInputDecoration.copyWith(hintText: 'Enter Email'),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        style: kTextFieldstyle,
                        obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: kInputDecoration.copyWith(
                            hintText: 'Enter Password'),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      RoundedBtn(
                          btncolor: kPrimaryColor,
                          btntext: 'Log In',
                          onPressed: () async {
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email, password: password);
                              if (user != null) {
                                Navigator.pushNamed(context, '/chat');
                              }
                            } catch (e) {
                              print(e);
                            }
                          }),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height - 850,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
