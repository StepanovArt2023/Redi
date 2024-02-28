import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oech_app001/widgets/app_bar.dart';
import 'package:oech_app001/widgets/send_package.dart';

class SendPackage extends StatefulWidget {
  const SendPackage({super.key});
  @override
  State<SendPackage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPackage> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _othersController = TextEditingController();
  final TextEditingController _addressControllerDD = TextEditingController();
  final TextEditingController _countryControllerDD = TextEditingController();
  final TextEditingController _phoneControllerDD = TextEditingController();
  final TextEditingController _othersControllerDD = TextEditingController();
  final TextEditingController _itemsController = TextEditingController();
  final TextEditingController _kgController = TextEditingController();
  final TextEditingController _worthController = TextEditingController();
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
          isBack: false,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          children: [
            const SizedBox(height: 43),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      child:
                          SvgPicture.asset('assets/images/s4_orig_detail.svg'),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Origin Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SendPackageWidget(
                    controller: _addressController, hintText: 'Address'),
                SendPackageWidget(
                    controller: _countryController, hintText: 'State,Country'),
                SendPackageWidget(
                    controller: _phoneController, hintText: 'Phone number'),
                SendPackageWidget(
                    controller: _othersController, hintText: 'Others'),
                SizedBox(
                  height: 39,
                ),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      child:
                          SvgPicture.asset('assets/images/s4_des_details.svg'),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Destination Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SendPackageWidget(
                    controller: _addressControllerDD, hintText: 'Address'),
                SendPackageWidget(
                    controller: _countryControllerDD,
                    hintText: 'State,Country'),
                SendPackageWidget(
                    controller: _phoneControllerDD, hintText: 'Phone number'),
                SendPackageWidget(
                    controller: _othersControllerDD, hintText: 'Others'),

                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      child: SvgPicture.asset('assets/images/s4_pack_detailes.svg'),),
                    SizedBox(width: 8),
                    Text(
                      'Package Details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SendPackageWidget(
                    controller: _itemsController, hintText: 'package items'),
                SendPackageWidget(
                    controller: _kgController, hintText: 'Weight of item(kg)'),
                SendPackageWidget(
                    controller: _worthController, hintText: 'Worth of items'),

                SizedBox(height: 39),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select delivery type',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      height: 75,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffcfcfcf),
                              blurRadius: 1,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Color(0xff0560fa),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/receipt_page');
                          },
                            icon: Icon(Icons.access_time),
                            color: Colors.white,
                          ),
                          Text(
                            'Instant delivery',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 75,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffcfcfcf),
                              blurRadius: 1,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/wall');
                            },
                            icon: SvgPicture.asset(
                                'assets/images/s4_calendar.svg'),
                            color: Color(0xffa7a7a7),
                          ),
                          Text(
                            'Scheduled delivery',
                            style: TextStyle(
                              color: Color(0xffa7a7a7),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            )
          ],
        ),
      )),
    );
  }
}