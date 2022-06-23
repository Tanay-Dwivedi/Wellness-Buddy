import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Lottie.asset(
                'assets/login_anim.json',
                repeat: true,
                height: (MediaQuery.of(context).size.width) * 0.75,
                width: (MediaQuery.of(context).size.width) * 0.75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              child: Text(
                'Login',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: const Color.fromRGBO(0, 101, 255, 1),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(0, 101, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
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
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width) * 0.75,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Container(
                            height: 2,
                            color: const Color.fromRGBO(104, 109, 118, 1),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 0,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          child: Text(
                            'OR',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          child: Container(
                            height: 2,
                            color: const Color.fromRGBO(104, 109, 118, 1),
                          ),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(241, 245, 246, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/google_icon.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Login with Google',
                            style: GoogleFonts.nunito(
                              color: Colors.black87,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
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
                      'New buddy?',
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(104, 109, 118, 1),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                    child: Text(
                      'Register',
                      style: GoogleFonts.nunito(
                        color: const Color.fromRGBO(0, 101, 255, 1),
                        fontSize: 15,
                      ),
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
