//textbox1
import 'package:flutter/material.dart';

Color primaryColor = const Color.fromARGB(255, 0, 120, 215);
Color secondaryColor = Colors.black45;

//input name field
Widget nameField() {
  return TextField(
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      border: InputBorder.none,
      // label: const Padding(
      //   padding: EdgeInsets.only(top: 0),
      //   child: Icon(Icons.person),
      // ),

      fillColor: Colors.grey.shade300,
      filled: true,
      hintText: 'Client Code/ User Name',
      hintStyle: TextStyle(
        color: secondaryColor,
      ),
    ),
  );
}

//input name field
Widget captchaField() {
  return TextField(
    keyboardType: TextInputType.name,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      border: InputBorder.none,
      // label: const Padding(
      //   padding: EdgeInsets.only(top: 0),
      //   child: Icon(Icons.person),
      // ),

      fillColor: Colors.grey.shade300,
      filled: true,
      hintText: 'Enter Captcha',
      hintStyle: TextStyle(
        color: secondaryColor,
      ),
    ),
  );
}

//password field box
class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: "Password",
        hintStyle: TextStyle(
          color: secondaryColor,
        ),
        border: InputBorder.none,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              passwordObscured = !passwordObscured;
            });
          },
          icon: Icon(
            passwordObscured ? Icons.visibility : Icons.visibility_off,
            color: secondaryColor,
          ),
        ),
      ),
      obscureText: passwordObscured,
    );
  }
}
