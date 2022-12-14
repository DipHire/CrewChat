import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  const RoundedBtn(
      {super.key,
      required this.btncolor,
      required this.btntext,
      required this.onPressed});
  final Color btncolor;
  final String btntext;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: btncolor,
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btntext,
          ),
        ),
      ),
    );
  }
}
