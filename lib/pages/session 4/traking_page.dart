import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oech_app001/widgets/btn_widget.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InteractiveViewer( 
              minScale: 0.1,
              maxScale: 4.0, 
              child: Container(
                height: 361,
                width: 658,
                child: Image(
                  image: AssetImage('assets/images/traking.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tracking Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 24),
                  SvgPicture.asset('assets/images/fr_170.svg'),
                  const SizedBox(height: 16),
                  Text(
                    'Package Status',
                    style: TextStyle(
                        color: Color.fromRGBO(167, 167, 167, 1), fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                  Row(children: [
                    SvgPicture.asset('assets/images/fr_178.svg'),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 17),
                      child: SvgPicture.asset('assets/images/fr_179.svg'),
                    ),
                  ]),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: ButtonWidget(
                      buttonName: 'View Package Info',
                      buttonColor: const Color.fromRGBO(5, 69, 250, 1),
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/send_a_package_2_page');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
