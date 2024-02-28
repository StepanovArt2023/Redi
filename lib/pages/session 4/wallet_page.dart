import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oech_app001/widgets/app_bar.dart';
import 'package:oech_app001/widgets/top_up_button.dart';
import 'package:oech_app001/widgets/trans_history_widget.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

var balance = '10.712:00';

class _WalletPageState extends State<WalletPage> {
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
          text: 'Wallet',
          isBack: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 27),
                Row(
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

                SizedBox(height: 28),

                // серый виджет Top Up

                Container(
                  width: double.infinity,
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xffcfcfcf),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                       Text(
                          'Top Up',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff3a3a3a)),
                        ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TopUpButton(
                            icon: SvgPicture.asset('assets/images/s4_bank.svg'),
                            txt: 'Bank',
                            onPressed: () {},
                          ),
                          TopUpButton(
                            icon:
                                SvgPicture.asset('assets/images/s4_transf.svg'),
                            txt: 'Transfer',
                            onPressed: () {},
                          ),
                          TopUpButton(
                            icon: SvgPicture.asset('assets/images/s4_card.svg'),
                            txt: 'Card',
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/DeliverySuccessfulPage2');
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 41),

                // заголовок истории трат
                Row(
                  children: [
                   Text(
                        'Transaction History',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3a3a3a)),
                      ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                // траты
                Column(
                  children: [
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Delivery fee',
                        day: 'July 7, 2022'),
                    TransactionWidget(
                        summa: 'N2,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Lalalalala',
                        day: 'July 4, 2022'),
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Third Delivery',
                        day: 'July 1, 2022'),
                    TransactionWidget(
                        summa: 'N1,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Another One',
                        day: 'June 27, 2022'),
                    TransactionWidget(
                        summa: 'N2,500.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Experts Are The Best',
                        day: 'June 23, 2022'),
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Delivery fee',
                        day: 'June 17, 2022'),
                    TransactionWidget(
                        summa: 'N2,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Lalalalala',
                        day: 'July 4, 2022'),
                    TransactionWidget(
                        summa: '-N3,000.00',
                        sumColor: Color(0xffed3a3a),
                        shop: 'Third Delivery',
                        day: 'July 1, 2022'),
                    TransactionWidget(
                        summa: 'N1,000.00',
                        sumColor: Color(0xff35b369),
                        shop: 'Another One',
                        day: 'June 27, 2022'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // BOTTOM BAR
     
    );
  }
}