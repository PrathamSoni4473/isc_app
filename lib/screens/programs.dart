import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/uni_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Programs_info extends StatefulWidget {
  const Programs_info({Key? key}) : super(key: key);

  @override
  State<Programs_info> createState() => _Programs_info();
}

class _Programs_info extends State<Programs_info> {
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
                Color.fromARGB(255, 148, 207, 255),
                Colors.white,
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            // width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Container(
                // padding: const EdgeInsets.all(10),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: 120,
                            child: Image.network(
                                'https://cdn.ischoolconnect.com/logo/1313.png'),
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              children: [
                                Text('Harvard University',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                SizedBox(height: 10),
                                Row(children: [
                                  FaIcon(
                                    FontAwesomeIcons.locationPin,
                                    color: Color.fromARGB(255, 165, 165, 165),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      'Cambridge, Masachusetts, USA',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  )
                                ]),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('About', style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 5),
              Text(
                  'Established in 1636, Harvard University is one of the oldest and most prestigious universities in the world. The Ivy League university is placed 5th in the QS World University Rankings 2022, 2nd in THE World Rankings, 3rd in Best Value Schools, and 5th in Graduate Employability.',
                  style: Theme.of(context).textTheme.subtitle2),
              SizedBox(height: 10),
              Divider(color: Colors.black),
              SizedBox(height: 10),
              Text('Courses', style: Theme.of(context).textTheme.headline3),
              SingleChildScrollView(
                child: Column(
                  children: [
                    // ==============================================
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              'Accounting and Management',
                              style: Theme.of(context).textTheme.headline4,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text('Doctorate',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Degree',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('5 Years',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Tenure',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('-',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Tuition Fees',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  )
                                ])
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              'African and American Studies',
                              style: Theme.of(context).textTheme.headline4,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text('Doctorate',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Degree',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('6 Years',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Tenure',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('50,928 USD',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Tuition Fees',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  )
                                ])
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              'Anthropology',
                              style: Theme.of(context).textTheme.headline4,
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text('Doctorate',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Degree',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('7 Years',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Tenure',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('50,928 USD',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1),
                                      Text('Tuition Fees',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2),
                                    ],
                                  )
                                ])
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.black),
                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'HighLights',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Get information about the students, faculty, campus & more.',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              SizedBox(height: 10),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total Students'),
                                  Text('20739')
                                ],
                              ),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('International Students'),
                                  Text('24%')
                                ],
                              ),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text('Student Gender Distributioin'),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.mars,
                                                size: 20,
                                                color: Color.fromARGB(
                                                    255, 55, 93, 246),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text('Male'),
                                                Text('54%')
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.venus,
                                                color: Color.fromARGB(
                                                    255, 176, 73, 184),
                                                size: 20,
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text('Female'),
                                                Text('46%')
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Student Faculty Ratio'),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.graduationCap,
                                                color: Color.fromARGB(
                                                    255, 30, 39, 74),
                                                size: 20,
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text('Students'),
                                                Text('10')
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.users,
                                                color: Color.fromARGB(
                                                    255, 87, 42, 21),
                                                size: 20,
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text('Faculty'),
                                                Text('3')
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Graduation Rate'),
                                  Text('99%')
                                ],
                              ),
                              Divider(color: Colors.black),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Avg. annual Earning after Graduation'),
                                  Text('92739 USD')
                                ],
                              ),
                              Divider(color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // ====================================
                  ],
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
