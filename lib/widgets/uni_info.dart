import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter_example/icons.dart';

class UniInfo extends StatelessWidget {
  var uniName = '';

  UniInfo(this.uniName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 120,
              child:
                  Image.network('https://cdn.ischoolconnect.com/logo/1313.png'),
            ),
            Container(
              width: 120,
              child: Column(
                children: [
                  Text(uniName, style: Theme.of(context).textTheme.subtitle1),
                  SizedBox(height: 10),
                  Row(children: [
                    FaIcon(
                      FontAwesomeIcons.locationPin,
                      color: Color.fromARGB(255, 165, 165, 165),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        'Cambridge,\nMasachusetts,\nUSA',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    )
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    FaIcon(FontAwesomeIcons.award,
                        color: Color.fromARGB(255, 142, 204, 255)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '1',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'ISC Rank',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    )
                  ]),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.person,
                          color: Color.fromARGB(255, 142, 204, 255)),
                      SizedBox(width: 10),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '5%',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              'Acceptance\nRate',
                              style: Theme.of(context).textTheme.bodyText2,
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
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          color: Colors.blue,
          child: Text('View Courses Offered'),
          textColor: Colors.white,
        ),
      ],
    );
  }
}
