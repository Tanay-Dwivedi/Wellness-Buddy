import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:wellness_buddy/user_authenticating_screens/reset_password_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool obsText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 45),
                child: Lottie.asset(
                  'assets/forgot_pass_anim.json',
                  repeat: true,
                  height: (MediaQuery.of(context).size.width) * 0.75,
                  width: (MediaQuery.of(context).size.width) * 0.75,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              child: FittedBox(
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              child: Text(
                'Do not worry. Please enter the email address associated with your account',
                maxLines: 3,
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                      child: Icon(
                        Icons.alternate_email,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width) * 0.75,
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          cursorColor: Colors.black54,
                          cursorRadius: const Radius.circular(10),
                          style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'Email ID',
                            hintStyle: GoogleFonts.chakraPetch(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.75,
                  height: (MediaQuery.of(context).size.width) * 0.09,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) {
                              return const ResetPasswordScreen();
                            }),
                          ),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(0, 101, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
