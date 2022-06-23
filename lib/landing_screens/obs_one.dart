import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class IntroScreenOne extends StatelessWidget {
  const IntroScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //background gradient
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 175, 189, 1),
                  Color.fromRGBO(255, 195, 160, 1),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          // image container
          Container(
            alignment: const Alignment(0, -0.68),
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
                'obs_img_one.png',
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
                      color: Color.fromRGBO(249, 129, 58, 1), width: 0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: FittedBox(
                    child: Text(
                      '2 cards will be here telling about diets',
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
