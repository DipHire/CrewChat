import 'package:crewchat/Components/rounded_button.dart';
import 'package:crewchat/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.black]),
            image: DecorationImage(
              image: AssetImage('images/registerbg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 258.0,
                ),
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 140.0,
                ),
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
                        'Register',
                        textAlign: TextAlign.center,
                        style: kh3TextStyle,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration:
                            kInputDecoration.copyWith(hintText: 'Enter email'),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                          obscureText: true,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            password = value;
                          },
                          decoration: kInputDecoration.copyWith(
                              hintText: 'Enter password')),
                      SizedBox(
                        height: 24.0,
                      ),
                      RoundedBtn(
                          btncolor: kPrimaryColor,
                          btntext: 'Register',
                          onPressed: () async {
                            try {
                              final newUser =
                                  await _auth.createUserWithEmailAndPassword(
                                      email: email, password: password);
                              if (newUser != null) {
                                Navigator.pushNamed(context, '/chat');
                              }
                            } catch (e) {
                              print(e);
                            }
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 850,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
