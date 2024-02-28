import 'dart:math';
import 'package:flutter/material.dart';

class TransactionSuccessful1 extends StatefulWidget {
  const TransactionSuccessful1({super.key});

  @override
  _TransactionSuccessful1State createState() => _TransactionSuccessful1State();
}

class _TransactionSuccessful1State extends State<TransactionSuccessful1>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Увеличиваем время загрузки до 3 секунд
    )..repeat();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/TransactionSuccessful2');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TransactionSucces1(controller: _controller);
  }
}

class TransactionSucces1 extends StatelessWidget {
  final AnimationController controller;

  const TransactionSucces1({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              const SizedBox(height: 144),
              SizedBox(
                width: 119,
                height: 119,
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: controller.value * 2 * pi,
                      child: CircularProgressIndicator(
                        strokeWidth: 10,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.orange,
                        ),
                        backgroundColor: Colors.grey[200],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 130),
              Container(
                child: Text(
                  'Your rider is on the way to your destination',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tracking Number ',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'R-7458-4567-4434-5854',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Color.fromRGBO(5, 96, 250, 1)),
                  ),
                ],
              ),
              SizedBox(height: 100),
              SizedBox(
                width: double.infinity,
                height: 46,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/TransactionSuccessful2');
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromRGBO(5, 96, 250, 1),
                      width: 2.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                  ),
                  child: const Text(
                    'Track my item',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 46,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile_page');
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Color.fromRGBO(5, 96, 250, 1),
                      width: 2.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'Go back to home page',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(5, 96, 250, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
