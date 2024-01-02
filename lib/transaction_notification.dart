import 'package:banking_app/configuration/customText.dart';
import 'package:flutter/material.dart';

class TransactionNotification extends StatefulWidget {
  const TransactionNotification({super.key});

  @override
  State<TransactionNotification> createState() =>
      _TransactionNotificationState();
}

class _TransactionNotificationState extends State<TransactionNotification> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Row(
        children: [
          Expanded(
            child: PrimaryText(
              text: 'You have received an \namount of money from',
              size: 20,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PrimaryText(
                text: '-\$159.99',
                size: 20,
                color: Colors.white,
              ),
              PrimaryText(
                text: 'Paypal',
                size: 15,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
