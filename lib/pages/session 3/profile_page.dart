import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oech_app001/widgets/app_bar.dart';
import 'package:oech_app001/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

var balance = '10.712:00';

class _ProfilePageState extends State<ProfilePage> {
  var switchBtn = false;
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
          text: 'Profile',
          isBack: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    // Аватарка
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/s5_ava_Ken.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // Приветствие и баланс
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Ken',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff3a3a3a)),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Current balance: ',
                            style: TextStyle(
                              color: Color(0xff3a3a3a),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: balance,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0560fa),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        if (balance == '10.712:00') {
                          balance = '***';
                        } else if (balance == '***') {
                          balance = '10.712:00';
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 16,
                        width: 16,
                        child: balance == '***'
                            ? SvgPicture.asset('assets/images/eye_on.svg')
                            : SvgPicture.asset('assets/images/s4_eye.svg'),
                      ),
                    ),
                    SizedBox(width: 25)
                  ],
                ),
              ),
              SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    const Text(
                      'Enable dark Mode',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(58, 58, 58, 1),
                      ),
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 0.7, // Уменьшаем размер на 20%
                      child: CupertinoSwitch(
                        activeColor: Color(0xff0560fa),
                        value: switchBtn,
                        onChanged: (bool value) {
                          switchBtn = !switchBtn;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              const ProofileWidget(
                title: 'Edit Profile',
                subTitle: 'Name, phone no, address, email ...',
                icon: Icons.account_circle_outlined,
                iconColor: Color.fromRGBO(58, 58, 58, 1),
              ),
              const ProofileWidget(
                title: 'Statemets & Reports',
                subTitle: 'Download transaction details, orders, deliveries',
                icon: Icons.task,
                iconColor: Color.fromRGBO(58, 58, 58, 1),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/notification_page');
                },
                child: const ProofileWidget(
                  title: 'Notification Settings',
                  subTitle: 'mute, unmute, set location & tracking setting',
                  icon: Icons.notifications_none_outlined,
                  iconColor: Color.fromRGBO(58, 58, 58, 1),
                ),
              ),
              const ProofileWidget(
                title: 'Card & Bank account settings',
                subTitle: 'cange cards, delete card details',
                icon: Icons.wallet_outlined,
                iconColor: Color.fromRGBO(58, 58, 58, 1),
              ),
              const ProofileWidget(
                title: 'Referrals',
                subTitle: 'check no of friends and earn',
                icon: Icons.refresh_sharp,
                iconColor: Color.fromRGBO(58, 58, 58, 1),
              ),
              const ProofileWidget(
                title: 'About Us',
                subTitle: 'know more about us, terms and conditions',
                icon: Icons.add_box_outlined,
                iconColor: Color.fromRGBO(58, 58, 58, 1),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/sign_in_page',
                    (Route<dynamic> route) => false,
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 6),
                  child: Container(
                    width: double.infinity,
                    height: 62,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Log Out',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(58, 58, 58, 1),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right_sharp),
                      ],
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
