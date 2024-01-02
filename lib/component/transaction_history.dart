import 'package:banking_app/configuration/customText.dart';
import 'package:banking_app/widget/detail_page.dart';
import 'package:flutter/material.dart';

class TransactionHistoryWidget extends StatefulWidget {
  const TransactionHistoryWidget({super.key});

  @override
  State<TransactionHistoryWidget> createState() =>
      _TransactionHistoryWidgetState();
}

class _TransactionHistoryWidgetState extends State<TransactionHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PrimaryText(
              text: 'Transaction History',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DetailPageScreen(),
                ));
              },
              child: const PrimaryText(
                text: 'See all',
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                size: 13,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 27,
        ),
        const PrimaryText(
          text: 'Google Curses',
          color: Colors.white,
          fontWeight: FontWeight.w100,
          size: 35,
        ),
        const SizedBox(
          height: 18,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText(
              text: 'App Design Basics',
              color: Colors.white54,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
            PrimaryText(
              text: '-\$1290',
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
          ],
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        const PrimaryText(
          text: 'Microsoft',
          color: Colors.black,
          fontWeight: FontWeight.normal,
          size: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText(
              text: 'App Design Basics',
              color: Colors.white54,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
            PrimaryText(
              text: '-\$1290',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
          ],
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        const PrimaryText(
          text: 'Microsoft',
          color: Colors.black,
          fontWeight: FontWeight.normal,
          size: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText(
              text: 'App Design Basics',
              color: Colors.white54,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
            PrimaryText(
              text: '-\$1290',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
          ],
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
        PrimaryText(
          text: 'Microsoft',
          color: Colors.black,
          fontWeight: FontWeight.normal,
          size: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText(
              text: 'App Design Basics',
              color: Colors.white54,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
            PrimaryText(
              text: '-\$1290',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              size: 17,
            ),
          ],
        ),
      ],
    );
  }
}
