import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/uni_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AllUniversities extends StatefulWidget {
  const AllUniversities({Key? key}) : super(key: key);

  @override
  State<AllUniversities> createState() => _AllUniversitiesState();
}

class _AllUniversitiesState extends State<AllUniversities> {
  final TextEditingController uniController = new TextEditingController();

  var info = [
    {
      'name': 'Harvard University',
      'city': 'Cambridge',
      'state': 'Masachusetts',
      'country': 'USA',
      'rank': '1',
      'rate': '5',
    }
  ];

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
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 273,
                        child: TextField(
                          controller: uniController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'Search for University',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    RaisedButton(
                      onPressed: () {
                        String searchFor = uniController.text;
                        uniController.clear();
                        print(info[0]['name']);
                      },
                      padding: const EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Text('Search'),
                      textColor: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 370,
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(10),
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
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1),
                                            SizedBox(height: 10),
                                            Row(children: [
                                              FaIcon(
                                                FontAwesomeIcons.locationPin,
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165),
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Text(
                                                  'Cambridge, Masachusetts, USA',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                              )
                                            ]),
                                            SizedBox(height: 10),
                                            Row(children: [
                                              FaIcon(FontAwesomeIcons.award,
                                                  color: Color.fromARGB(
                                                      255, 142, 204, 255)),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      '1',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1,
                                                    ),
                                                    Text(
                                                      'ISC Rank',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ]),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                FaIcon(FontAwesomeIcons.person,
                                                    color: Color.fromARGB(
                                                        255, 142, 204, 255)),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        '5%',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1,
                                                      ),
                                                      Text(
                                                        'Acceptance\nRate',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  RaisedButton(
                                    onPressed: () {},
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                    color: Colors.blue,
                                    child: Text('View Courses Offered'),
                                    textColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        width: 120,
                                        child: Image.network(
                                            'https://cdn.ischoolconnect.com/logo/1991.png'),
                                      ),
                                      Container(
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Text('Stanford University',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1),
                                            SizedBox(height: 10),
                                            Row(children: [
                                              FaIcon(
                                                FontAwesomeIcons.locationPin,
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165),
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Text(
                                                  'Stanford, California, USA',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                              )
                                            ]),
                                            SizedBox(height: 10),
                                            Row(children: [
                                              FaIcon(FontAwesomeIcons.award,
                                                  color: Color.fromARGB(
                                                      255, 142, 204, 255)),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      '2',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1,
                                                    ),
                                                    Text(
                                                      'ISC Rank',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ]),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                FaIcon(FontAwesomeIcons.person,
                                                    color: Color.fromARGB(
                                                        255, 142, 204, 255)),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        '4%',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1,
                                                      ),
                                                      Text(
                                                        'Acceptance\nRate',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  RaisedButton(
                                    onPressed: () {},
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                    color: Colors.blue,
                                    child: Text('View Courses Offered'),
                                    textColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        width: 120,
                                        child: Image.network(
                                            'https://cdn.ischoolconnect.com/logo/2219.png'),
                                      ),
                                      Container(
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Text('Cambridge University',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1),
                                            SizedBox(height: 10),
                                            Row(children: [
                                              FaIcon(
                                                FontAwesomeIcons.locationPin,
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165),
                                              ),
                                              SizedBox(width: 5),
                                              Expanded(
                                                child: Text(
                                                  'Cambridge, Cambridgeshire, UK',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                ),
                                              )
                                            ]),
                                            SizedBox(height: 10),
                                            Row(children: [
                                              FaIcon(FontAwesomeIcons.award,
                                                  color: Color.fromARGB(
                                                      255, 142, 204, 255)),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      '3',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1,
                                                    ),
                                                    Text(
                                                      'ISC Rank',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ]),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                FaIcon(FontAwesomeIcons.person,
                                                    color: Color.fromARGB(
                                                        255, 142, 204, 255)),
                                                SizedBox(width: 10),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        '21%',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1,
                                                      ),
                                                      Text(
                                                        'Acceptance\nRate',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  RaisedButton(
                                    onPressed: () {},
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 15),
                                    color: Colors.blue,
                                    child: Text('View Courses Offered'),
                                    textColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
