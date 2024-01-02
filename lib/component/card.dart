import 'package:banking_app/configuration/customText.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Stack(children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(
                  Radius.circular(36),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 2.0),
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.black,
                    )
                  ],
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(36),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 13.0, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/i5.png',
                                  height: 35,
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/i4.png',
                            height: 50,
                          ),
                          const PrimaryText(
                            size: 14,
                            text: 'DEBIT CARD',
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              PrimaryText(
                                size: 14,
                                text: 'Nathaniel Etim',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PrimaryText(
                                size: 14,
                                text: '12/28',
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 118.0),
                            child: Image.asset(
                              'assets/master.png',
                              height: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
          const SizedBox(
            width: 10,
          ),
          Stack(children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(
                  Radius.circular(36),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, left: 2.0),
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.black,
                    )
                  ],
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(36),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 13.0, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/i5.png',
                                  height: 35,
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/i4.png',
                            height: 50,
                          ),
                          const PrimaryText(
                            size: 14,
                            text: 'DEBIT CARD',
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              PrimaryText(
                                size: 14,
                                text: 'Nathaniel Etim',
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              PrimaryText(
                                size: 14,
                                text: '12/28',
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 118.0),
                            child: Image.asset(
                              'assets/master.png',
                              height: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
