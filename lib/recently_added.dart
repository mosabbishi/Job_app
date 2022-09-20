// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class RecentlyAdded extends StatelessWidget {
  final String ListTileLogo;
  final String LeadingTitle;
  final String SubTitle;
  final String JobPay;
  const RecentlyAdded(
      {super.key,
      required this.ListTileLogo,
      required this.LeadingTitle,
      required this.SubTitle,
      required this.JobPay});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            child: ListTile(
              leading: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(ListTileLogo)),
              title: Text(
                LeadingTitle,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(SubTitle),
              trailing: Container(
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  '\$$JobPay/h',
                  style: TextStyle(fontSize: 17.5, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
