import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepselogin/login_pages/password_reset.dart';
import 'package:nepselogin/widgets/custom_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SizedBox(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 98,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Image.asset(
                        "images/nepse.png",
                        height: 98,
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                        width: 22,
                      ),
                      Container(
                        height: 100,
                        width: 290,
                        color: Colors.transparent,
                        child: Text(
                          "NEPAL STOCK EXCHANGE\nTRADE MANAGEMENT SYSTEM\nSTOCK BROKER NO:- 22",
                          style: GoogleFonts.roboto(
                            fontSize: 19,
                            color: const Color.fromARGB(255, 0, 120, 215),
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          "USERNAME",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 120, 215),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 10),
                        nameField(),
                        const SizedBox(height: 30),
                        Text(
                          "PASSWORD",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 0, 120, 215),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const PasswordField(),
                        const SizedBox(height: 30),
                        captchaField(),
                        const SizedBox(height: 30),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.height,
                          color: Colors.grey,
                          child: const Text("Captcha Field"),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(const PasswordReset());
                              },
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 0, 120, 215),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.2,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  foregroundColor: Colors.white,
                                ),
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(const PasswordReset());
                              },
                              child: Text(
                                "New Registration (Online Trading Account Opening)",
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 0, 120, 215),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Safety Tips:",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              "* Don't save your password",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              "* Don't share your login credentials",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "* Logout the application before closing",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
