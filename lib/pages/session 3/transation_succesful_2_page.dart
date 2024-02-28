import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionSuccessful2 extends StatefulWidget  {
  const TransactionSuccessful2({super.key});

  @override
  State<TransactionSuccessful2> createState() => _TransactionSuccessful2State();
}

class _TransactionSuccessful2State extends State<TransactionSuccessful2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Center(
                child: Column(children: [
                  SizedBox(height: 156),
                  Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 130,
                    child: AnimatedSvg(),
                ),
                  SizedBox(height: 75),
                Column(
                    children: [
                      Container(
                        child: Text('Transaction Successful',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                  SizedBox(height: 8),
                          Text(
                            'Your rider is on the way to your destination',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                  SizedBox(height: 8),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tracking Number ',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'R-7458-4567-4434-5854',
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Color.fromRGBO(5, 96, 250, 1)),
                                ),
                              ]),
                          SizedBox(height: 100),
                          SizedBox(
                width: double.infinity,
                height: 46,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tracking_page');
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
                    ],
        ),
                ],
                ),

              ),
      ),
          ],
        ),
      ),
    );
  }
}

class AnimatedSvg extends StatefulWidget {
  @override
  _AnimatedSvgState createState() => _AnimatedSvgState();
}

class _AnimatedSvgState extends State<AnimatedSvg>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Stack(
            children: [
              // Внешний контур
              Positioned.fill(
                child: Transform.scale(
                  scale: _isExpanded ? 0.5 : 1.1,
                  child: SvgPicture.asset(
                    'assets/images/ellipse.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Внутренний контур, анимированный
              Positioned.fill(
                child: Transform.scale(
                  scale: _isExpanded
                      ? 1 + _controller.value * 0.1
                      : 1 - _controller.value * 0.4,
                  child: SvgPicture.asset(
                    'assets/images/check.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
