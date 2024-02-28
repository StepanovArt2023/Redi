import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Onboarding3Page extends StatelessWidget {
  const Onboarding3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 150),
                  Image.asset('assets/images/s1_Onboarding 3.png'),
                  const SizedBox(height: 63),
                  const Text(
                    'Real-time Tracking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color.fromARGB(255, 5, 96, 250),
                    ),
                  ),
                  const SizedBox(height: 17),
                   SizedBox(
                    width: 301,
                     child: Text(
                        'Track your packages/items from the\n comfort of your home till final destination',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromARGB(255, 58, 58, 58),
                        ),
                      ),
                   ),
                  
                  const SizedBox(height: 92),
                   SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign_up_page');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: const Color.fromARGB(255, 5, 96, 250),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  
                  const SizedBox(height: 20),
                  RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 167, 167, 167)),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Sign in',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 5, 96, 250)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/sign_in_page');
                              })
                      ]))
                ],
              ),
            ),
          ),
        ));
  }
}
