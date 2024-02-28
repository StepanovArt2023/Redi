import 'package:flutter/material.dart';
import 'package:oech_app001/pages/session%201/onboarding3.dart';

class Onboarding4Page extends StatelessWidget {
  const Onboarding4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 133),
              Image.asset('assets/images/s1_Onboarding 4.png'),
              const SizedBox(height: 59),
              const Text(
                'Flexible Payment',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color.fromARGB(255, 5, 96, 250),
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 271,
                child: Text(
                    'Different modes of payment either before and after delivery without stress',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 58, 58, 58)),
                  ),
              ),
              
              const SizedBox(height: 88),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/onboarding3');
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 5, 96, 250),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
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
    );
  }
}
