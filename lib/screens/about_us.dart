import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/uni_info.dart';
import './programs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class aboutus extends StatefulWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  State<aboutus> createState() => _aboutus();
}

class _aboutus extends State<aboutus> {
  final TextEditingController uniController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.all(30),
          child: Image.asset(
            'assets/images/iSchoolConnect-logo.png',
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 94, 183, 255),
        ),
      ),
      drawer: const MainDrawer(),
      body: Stack(children: [
        Container(
          // padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 106, 185, 250),
                Colors.white,
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Us',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        Text(
                          'Our Story',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Studying at a prestigious university abroad is something that thousands of students from all over the world dream about. Researching and applying to these universities is a complicated and time-consuming hassle. But it does not have to be. iSchoolConnect is the simple one stop shop for all your higher education requirements.',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Our Vision',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Studying at a prestigious university abroad is something that thousands of students from all over the world dream about. Researching and applying to these universities is a complicated and time-consuming hassle. But it does not have to be. iSchoolConnect is the simple one stop shop for all your higher education requirements.',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Our Mission',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Studying at a prestigious university abroad is something that thousands of students from all over the world dream about.',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Core Values',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Row(
                          children: [
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/growth.png',
                                    width: 50,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Growth',
                                      style:
                                          Theme.of(context).textTheme.bodyText1)
                                ],
                              ),
                            )),
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/entrepreneurial.png',
                                    width: 50,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Entrepreneurial\nMindset',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/creativity.png',
                                    width: 50,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Creativity',
                                      style:
                                          Theme.of(context).textTheme.bodyText1)
                                ],
                              ),
                            )),
                            Card(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/customer.png',
                                    width: 50,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Customer\nSatisfaction',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  )
                                ],
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
