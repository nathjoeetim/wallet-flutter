import 'package:flutter/material.dart';

import '../configuration/customText.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            image: DecorationImage(
              image: AssetImage('assets/menuss.png'),
            ),
          ),
        ),
        const PrimaryText(text: 'Home'),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Badge(
              child: Image.asset(
                'assets/i2.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
