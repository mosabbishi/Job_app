// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class JobCards extends StatelessWidget {
  final String Logo;
  final Color BgColors;
  final String TimePeriod;
  final String JobTitle;
  final String JobPay;
  final Color FontColor;
  const JobCards(
      {super.key,
      required this.Logo,
      required this.BgColors,
      required this.TimePeriod,
      required this.JobTitle,
      required this.JobPay,
      required this.FontColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: BgColors, borderRadius: BorderRadius.circular(10)),
        width: 280,
        height: 175,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ////////// The logo and time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Logo,
                    height: 60,
                  ),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        TimePeriod,
                        style: TextStyle(fontSize: 20, color: FontColor),
                      )),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    JobTitle,
                    style: TextStyle(
                        fontSize: 27,
                        color: FontColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$$JobPay/h',
                    style: TextStyle(fontSize: 17, color: FontColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
