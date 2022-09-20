// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'job_cards.dart';
import 'recently_added.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ////////// Menu Icon
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300]),
                    child: Image.asset(
                      'lib/icons/menu.png',
                      height: 41,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  ////////// Text -> Discover a New Path
                  Text(
                    'Discover a New Path',
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 35,
                  ),

                  ////////// Text Field + Filter Icon
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'search for a new job',
                                hintStyle: TextStyle(fontSize: 18),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 35,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.asset(
                            'lib/icons/filter.png',
                            height: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ////////// Rows with Cards
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'For You',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            JobCards(
                              Logo: 'lib/icons/uber.png',
                              BgColors: Color.fromARGB(150, 0, 0, 0),
                              TimePeriod: 'Full Time',
                              JobTitle: 'UI/UX Designer',
                              JobPay: '43',
                              FontColor: Colors.white,
                            ),
                            JobCards(
                              Logo: 'lib/icons/google.png',
                              BgColors: Colors.white,
                              TimePeriod: 'Full Time',
                              JobTitle: 'Product Designer',
                              JobPay: '55',
                              FontColor: Color.fromARGB(225, 0, 0, 0),
                            ),
                            JobCards(
                                Logo: 'lib/icons/huawei.png',
                                BgColors: Color.fromARGB(255, 211, 127, 127),
                                TimePeriod: 'Part Time',
                                JobTitle: 'Software Engineer',
                                JobPay: '71',
                                FontColor: Colors.white),
                            JobCards(
                                Logo: 'lib/icons/apple.png',
                                BgColors: Colors.black87,
                                TimePeriod: 'Full Time',
                                JobTitle: 'Data Analyist',
                                JobPay: '121',
                                FontColor: Colors.white)
                          ],
                        ),
                      ],
                    ),
                  ),

                  //////// Recently added
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Recently Added',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    child: ListView(
                      children: [
                        RecentlyAdded(
                            ListTileLogo: 'lib/icons/apple.png',
                            LeadingTitle: ' Data Analyst',
                            SubTitle: 'Apple',
                            JobPay: '121'),
                        RecentlyAdded(
                            ListTileLogo: 'lib/icons/huawei.png',
                            LeadingTitle: 'Software Engineer',
                            SubTitle: 'Huawei',
                            JobPay: '71'),
                        RecentlyAdded(
                            ListTileLogo: 'lib/icons/adidas.png',
                            LeadingTitle: 'Product Designer',
                            SubTitle: 'Adidas',
                            JobPay: '35'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
