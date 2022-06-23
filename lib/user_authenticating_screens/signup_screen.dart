import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:wellness_buddy/user_authenticating_screens/login_screen.dart';
import 'package:wellness_buddy/user_authenticating_screens/otp_verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  'assets/signup_anim.json',
                  repeat: true,
                  height: (MediaQuery.of(context).size.width) * 0.75,
                  width: (MediaQuery.of(context).size.width) * 0.75,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              child: Text(
                'Sign Up',
                style: GoogleFonts.nunito(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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
                        Icons.person,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width) * 0.75,
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black54,
                          cursorRadius: const Radius.circular(10),
                          style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'Full Name',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                      child: Icon(
                        Icons.phone_android_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 5, 10),
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width) * 0.75,
                        child: TextField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          cursorColor: Colors.black54,
                          cursorRadius: const Radius.circular(10),
                          style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
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
                          textInputAction: TextInputAction.next,
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
                          obscureText: obsText,
                          cursorColor: Colors.black54,
                          textInputAction: TextInputAction.next,
                          style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsText = !obsText;
                                });
                              },
                              icon: Icon(
                                color: Colors.grey.shade600,
                                obsText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            hintText: 'Password',
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
                          obscureText: obsText,
                          cursorColor: Colors.black54,
                          textInputAction: TextInputAction.done,
                          style: GoogleFonts.chakraPetch(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obsText = !obsText;
                                });
                              },
                              icon: Icon(
                                color: Colors.grey.shade600,
                                obsText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            hintText: 'Confirm Password',
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
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                child: FittedBox(
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: 'By signing up, you are agreeing to our ',
                      style: GoogleFonts.nunito(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: const Color.fromRGBO(0, 101, 255, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: 'and  ',
                    style: GoogleFonts.nunito(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Privacy Policy',
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          color: const Color.fromRGBO(0, 101, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.75,
                  height: (MediaQuery.of(context).size.width) * 0.09,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) {
                              return const OTPVerificationScreen();
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
                      'Register',
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                    child: Text(
                      'Already a buddy?',
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(104, 109, 118, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                    child: GestureDetector(
                      child: Text(
                        'Login',
                        style: GoogleFonts.nunito(
                          color: const Color.fromRGBO(0, 101, 255, 1),
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) {
                              return const LoginScreen();
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
