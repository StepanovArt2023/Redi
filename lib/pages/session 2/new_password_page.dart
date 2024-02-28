import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_password_widget.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  var buttonColor = Color.fromRGBO(167, 167, 167, 1);

  @override
  void initState() {
    super.initState();
    confirmPass.addListener(() {
      if (confirmPass.text != '' && pass.text != '') {
        buttonColor = Color(0xff0560FA);
      } else {
        buttonColor = Color(0xffA7A7A7);
      }
      setState(() {});
  });
}

  @override
  void dispose() {
    pass.removeListener(() {});
    confirmPass.removeListener(() {});
    super.dispose();
  }

  bool checkedValue = false;
  final pass = TextEditingController();
  final confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 170, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'New Password',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(58, 58, 58, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text('Enter new password',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(167, 167, 167, 1))),
              const SizedBox(height: 56),
              Container(
                padding: EdgeInsets.zero,
                width: double.infinity,
                child: S2TextFieldPasswordWidget(
                  controller: pass,
                  textTitle: 'Password',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '**********',
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: EdgeInsets.zero,
                width: double.infinity,
                child: S2TextFieldPasswordWidget(
                  controller: confirmPass,
                  textTitle: 'Confirm Password',
                  textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                  textSize: 14,
                  hintText: '**********',
                ),
              ),
              const SizedBox(height: 56),
              SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  buttonName: 'Log in',
                  buttonColor: buttonColor,
                  onTap: () {
                    if (buttonColor == Color.fromARGB(255, 5, 96, 250)) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        '/main_page',
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
