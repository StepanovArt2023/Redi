import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/app_bar.dart';

class SendPackage2 extends StatefulWidget {
  static const routeName = '/send_a_package-page';
  const SendPackage2({super.key});

  @override
  State<SendPackage2> createState() => _SendPackage2State();
}

class _SendPackage2State extends State<SendPackage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        title: AppBarWidget(
          text: 'Send a package',
          isBack: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text('Package Information',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(5, 96, 250, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8),
              Text('Origin details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  )),
              SizedBox(height: 4),
              Text('Mbaraugba, Ovom Amaa Asaa, Abia state',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 12,
                  )),
              SizedBox(height: 4),
              Text('+234 56543 96854',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 12,
                  )),
              SizedBox(height: 8),
              Text('Destination details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 4),
              Text('19 Ademola Alabi close, lagos',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 12,
                  )),
              SizedBox(height: 4),
              Text('+234 70644 80655',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(167, 167, 167, 1),
                    fontSize: 12,
                  )),
              SizedBox(height: 8),
              Text('Other details',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  )),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Package Items',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'Books ans stationary, Garri Ngwa',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(236, 128, 0, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Weight of items',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    '1000kg',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(236, 128, 0, 1), fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Worth of Items',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'N50,000',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(236, 128, 0, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Traking Number',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'R-7458-4567-4434-5854',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(236, 128, 0, 1), fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Container(
                height: 2.0,
                color: Color.fromRGBO(167, 167, 167, 1),
              ),
              SizedBox(height: 8),
              Text('Charges',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(5, 96, 250, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Charges',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'N2,500.00',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(236, 128, 0, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Instant delivery',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'N300.00',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(236, 128, 0, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Tax and Service Charges',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'N200.00',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(236, 128, 0, 1), fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 8.5),
              Container(
                height: 2.0,
                color: Color.fromRGBO(167, 167, 167, 1),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Package total',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Spacer(),
                  Text(
                    'N3000.00',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(236, 128, 0, 1), fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 46),
              //Кнопки
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 158,
                    height: 48,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'home_page');
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color.fromRGBO(5, 96, 250, 1),
                          width: 1.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: const Text(
                        'Report',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(5, 96, 250, 1),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 158,
                    height: 48,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/DeliverySuccessful1');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Color.fromRGBO(5, 96, 250, 1),
                      ),
                      child: const Text(
                        'Successful',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
