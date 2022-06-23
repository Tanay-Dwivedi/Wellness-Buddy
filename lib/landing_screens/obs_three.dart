import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class IntroScreenThree extends StatelessWidget {
  const IntroScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background container
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(240, 152, 25, 1),
                  Color.fromRGBO(237, 222, 93, 1),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          // image container
          Container(
            alignment: const Alignment(0, -0.8),
            child: GlassmorphicContainer(
              width: (MediaQuery.of(context).size.width) * 0.5,
              height: (MediaQuery.of(context).size.width) * 0.5,
              borderRadius: 40,
              linearGradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.2)
              ]),
              border: 0,
              blur: 4,
              borderGradient: LinearGradient(colors: [
                Colors.white24.withOpacity(0.2),
                Colors.white70.withOpacity(0.2)
              ]),
              child: Image.asset(
                'assets/obs_img_three.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          // card container
          Container(
            alignment: const Alignment(0, 0.4),
            child: SizedBox(
              width: (MediaQuery.of(context).size.width) * 0.75,
              height: (MediaQuery.of(context).size.width) * 0.5,
              child: Card(
                color: Colors.white.withOpacity(0.4),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Color.fromRGBO(255, 120, 0, 1), width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: FittedBox(
                    child: Text(
                      '2 cards will be here telling about meeting with doctors',
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
