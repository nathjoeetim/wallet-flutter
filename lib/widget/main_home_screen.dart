import 'package:banking_app/component/app_bar.dart';
import 'package:banking_app/component/card.dart';
import 'package:banking_app/component/transaction_history.dart';
import 'package:banking_app/configuration/customText.dart';
import 'package:banking_app/configuration/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainHomeScreenWidget extends StatefulWidget {
  const MainHomeScreenWidget({super.key});

  @override
  State<MainHomeScreenWidget> createState() => _MainHomeScreenWidgetState();
}

class _MainHomeScreenWidgetState extends State<MainHomeScreenWidget> {
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
        child: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 5,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // THE TOP APP BAR
              AppBarWidget(
              ),
              SizedBox(
                height: 10,
              ),
              // THE CURRENT BALANCE SECTION
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
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
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Cards(),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: TransactionHistoryWidget(),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
