import 'package:flutter/material.dart';
import 'package:oech_app001/pages/session%201/onboarding3.dart';
import 'package:oech_app001/pages/session%201/onboarding4.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 111),
                 Image.asset('assets/images/s1_Onboarding 1.png'),
                const SizedBox(height: 48),
                const Text(
                  'Quick Delivery At Your\n Doorstep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Color.fromARGB(255, 5, 96, 250),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Enjoy quick pick-up and delivery to\n your destination',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 58, 58, 58)),
                  ),
                ),
                const SizedBox(height: 82),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(
                                  milliseconds: 300), 
                              pageBuilder: (_, __, ___) =>
                                  Onboarding3Page(), 
                              transitionsBuilder: (_, animation, __, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              side: BorderSide(
                                color: Color.fromARGB(255, 5, 96, 250),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 5, 96, 250),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(
                                  milliseconds: 300),
                              pageBuilder: (_, __, ___) =>
                                  Onboarding4Page(),
                              transitionsBuilder: (_, animation, __, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Color.fromARGB(255, 5, 96, 250),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
