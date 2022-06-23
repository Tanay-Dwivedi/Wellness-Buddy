import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class IntroScreenTwo extends StatelessWidget {
  const IntroScreenTwo({Key? key}) : super(key: key);

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
                  Color.fromRGBO(69, 104, 220, 1),
                  Color.fromRGBO(176, 106, 179, 1),
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
                'assets/obs_img_two.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          // card container
          Container(
            alignment: const Alignment(0, 0.4),
            child: SizedBox(
              width: (MediaQuery.of(context).size.width) * 0.8,
              height: (MediaQuery.of(context).size.width) * 0.5,
              child: Card(
                color: Colors.white.withOpacity(0.4),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Color.fromRGBO(153, 0, 240, 1), width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: FittedBox(
                    child: Text(
                      '2 cards will be here describing telling about physical activities',
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
