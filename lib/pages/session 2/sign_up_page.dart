import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oech_app001/widgets/btn_widget.dart';
import 'package:oech_app001/widgets/policy_page.dart';
import 'package:oech_app001/widgets/s2_text_field_password_widget.dart';
import 'package:oech_app001/widgets/s2_text_field_widget2.dart'; // Импорт вашей страницы политики конфиденциальности

class SignUpPage extends StatefulWidget {
  static const routeName = '/sign_up-page';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Color buttonColor = const Color.fromRGBO(167, 167, 167, 1);

  @override
  void initState() {
    super.initState();
    // Обновление состояния кнопки при изменении значений в контроллерах и флажке Checkbox
    nameController.addListener(_updateButtonState);
    numberController.addListener(_updateButtonState);
    emailController.addListener(_updateButtonState);
    passController.addListener(_updateButtonState);
    confirmPassController.addListener(_updateButtonState);
  }

  // Метод для обновления состояния кнопки
  void _updateButtonState() {
    setState(() {
      if (nameController.text.isNotEmpty &&
          numberController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passController.text.isNotEmpty &&
          confirmPassController.text.isNotEmpty &&
          checkedValue) {
        buttonColor = const Color.fromARGB(255, 5, 96, 250);
      } else {
        buttonColor = const Color.fromRGBO(167, 167, 167, 1);
      }
    });
  }

  bool checkedValue = false;
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.zero,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Отступ
                  const SizedBox(height: 78),
                  //Заголовок
                  const Text(
                    'Create an account',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(58, 58, 58, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  //Отступ
                  const SizedBox(height: 8),
                  //Подзаголовок
                  const Text(
                    'Complete the sign up process to get started',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(167, 167, 167, 1),
                    ),
                  ),
                  //Отступ
                  const SizedBox(height: 33),
                  //Текстовое поле 1
                  S2TextFieldWidget2(
                    controller: nameController,
                    textTitle: 'Full name',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: 'Ivanov Ivan',
                  ),
                  const SizedBox(height: 15),
                  //Текстовое поле 2
                  S2TextFieldWidget2(
                    inputType: TextInputType.phone,
                    controller: numberController,
                    textTitle: 'Phone Number',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '+7(999)999-99-99',
                  ),
                  const SizedBox(height: 15),
                  //Текстовое поле 3
                  S2TextFieldWidget2(
                    inputType: TextInputType.emailAddress,
                    controller: emailController,
                    textTitle: 'Email Address',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '***********@gmail.com',
                  ),
                  const SizedBox(height: 15),
                  //Текстовое поле 4
                  S2TextFieldPasswordWidget(
                    controller: passController,
                    textTitle: 'Password',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '**********',
                  ),
                  const SizedBox(height: 15),
                  //Текстовое поле 5
                  S2TextFieldPasswordWidget(
                    controller: confirmPassController,
                    textTitle: 'Confirm Password',
                    textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                    textSize: 14,
                    hintText: '**********',
                  ),
                  const SizedBox(height: 20),
                  //Кнопка соглашения
                  Row(
                    children: <Widget>[
                      SizedBox(
                        child: Checkbox(
                          activeColor: const Color.fromARGB(255, 5, 96, 250),
                          value: checkedValue,
                          onChanged: (newValue) {
                            setState(
                              () {
                                checkedValue = newValue!;
                                _updateButtonState();
                              },
                            );
                          },
                        ),
                      ),

                      //Пользовательское соглашение:
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return PrivacyPolicyPage();
                              },
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'By ticking this box, you agree to our ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(167, 167, 167, 1),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Terms and\n               conditions and private policy',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(235, 188, 46, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ButtonWidget(
                          buttonName: 'Sign Up',
                          buttonColor: buttonColor,
                          onTap: () {
                            if (buttonColor ==
                                Color.fromARGB(255, 5, 96, 250)) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                '/home_page',
                                (Route<dynamic> route) => false,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Already have an account? ',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(167, 167, 167, 1)),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sign in',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 96, 250, 1)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, '/sign_in_page');
                                  },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          children: [
                            Text(
                              'or sign in using',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(167, 167, 167, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Image(
                            image:
                                AssetImage('assets/images/s2_icon_google.png'),
                            height: 16,
                            width: 16),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
