import 'package:banking_app/component/app_bar.dart';
import 'package:banking_app/transaction_notification.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import '../configuration/customText.dart';

class DetailPageScreen extends StatefulWidget {
  const DetailPageScreen({super.key});

  @override
  State<DetailPageScreen> createState() => _DetailPageScreenState();
}

class _DetailPageScreenState extends State<DetailPageScreen> {
  bool onFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xff3C382D),
            Colors.black,
            Colors.black,
            Colors.red,
            Colors.orangeAccent,
            Color(0xffECD670),
            Color(0xffECD670),
          ],
          radius: 1.4,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white54,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  const PrimaryText(
                    text: 'Details',
                    fontWeight: FontWeight.w200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:
                            const Icon(Icons.account_balance_wallet_outlined)),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: 'Current Balance',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          PrimaryText(
                            text: '\$1800,57',
                            size: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.upload_sharp,
                                color: Colors.teal,
                              ),
                              PrimaryText(
                                text: '3.10% More Than Last Month',
                                color: Colors.teal,
                                size: 12,
                                fontWeight: FontWeight.w100,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 190,
                          width: 300,
                          child: SfSparkLineChart(
                            color: Colors.yellow,
                            data: const <double>[
                              4,
                              1,
                              36,
                              24,
                              100,
                              80,
                              6,
                              30,
                              5,
                              10,
                              23,
                              50,
                              70,
                              20,
                              40,
                              60,
                              80,
                              100,
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              child: const PrimaryText(
                                text: 'D',
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              child: const PrimaryText(
                                text: 'W',
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              child: const PrimaryText(
                                text: 'M',
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              child: const PrimaryText(
                                text: 'Y',
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              child: const PrimaryText(
                                text: 'ALL',
                                color: Colors.white,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //   transaction Notification
                      const TransactionNotification(),
                     const  SizedBox(
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: SwipeableButtonView(
                          onFinish: () => onFinished,
                          onWaitingProcess: () {
                            Future.delayed(const Duration(seconds: 2), () {
                              setState(() {
                                onFinished:
                                true;
                              });
                            });
                          },
                          activeColor: const Color(0xffF2E6CC),
                          buttonWidget: Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                )),
                            child: const Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.black,
                            ),
                          ),
                          buttonText: 'Slide To Verify Payment',
                          buttontextstyle:const  TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
