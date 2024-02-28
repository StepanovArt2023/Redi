import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Text('Политика конфиденциальности',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700
      ),),
      content: SingleChildScrollView(
        child: Padding(
  padding: const EdgeInsets.all(16.0),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Дата вступления в силу: 26.02.2024',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Мы в Redi ценим вашу конфиденциальность. Настоящая Политика конфиденциальности объясняет, как мы собираем, используем, раскрываем и защищаем вашу информацию при использовании нашего мобильного приложения.',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          '1. Сбор и использование информации',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Мы можем собирать различные типы информации, когда вы используете наше мобильное приложение. Это может включать информацию, которую вы предоставляете нам непосредственно, такую как ваше имя, адрес электронной почты и другие контактные данные.',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        // Добавьте остальные разделы аналогичным образом
        Text(
          '5. Изменения в политике конфиденциальности',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Мы можем время от времени обновлять нашу Политику конфиденциальности. Любые изменения вступают в силу с момента их публикации в нашем мобильном приложении. Мы рекомендуем периодически просматривать нашу Политику конфиденциальности для ознакомления с любыми изменениями.',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          'Связь с нами',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Если у вас возникли вопросы или предложения относительно нашей Политики конфиденциальности, обращайтесь к нам по следующим контактным данным: Redi@gmail.com',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  ),
),

      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Close",
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 96, 250),
            fontWeight: FontWeight.w500,
            fontSize: 14
          )),
        ),
      ],
    );
  }
}
