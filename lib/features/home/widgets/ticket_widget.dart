import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:tickets_app/config/translations/enum.dart';

class Tickets extends StatelessWidget {
  const Tickets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 171, 175, 178),
      content: TicketWidget(
        width: 350,
        height: 500,
        isCornerRounded: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  Strings.yourName.tr,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    ticketDetailsWidget(Strings.plaes.tr, Strings.city.tr,
                        Strings.date.tr, '24-12-2023'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Container(
                  width: 250,
                  height: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/barcode.jpeg'),
                          fit: BoxFit.cover)),
                ),
              ),
              const Center(
                child: Text(
                  '9824 0972 1742 1298',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/wallet.png'),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc,
    String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                firstDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              secondTitle,
              style: const TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                secondDesc,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      )
    ],
  );
}
