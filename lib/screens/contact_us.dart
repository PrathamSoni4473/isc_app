import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/uni_info.dart';
import './programs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUs();
}

class _ContactUs extends State<ContactUs> {
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
            child: Column(children: [
              Card(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Us',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      Text(
                        'Contact Details',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "University application is a complex and often confusing process. Our friendly AI Chatbot can answer most of your questions. Have a question that wasn't answered? Write to us, we're always happy to help!",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.envelope,
                              color: Color.fromARGB(255, 142, 204, 255)),
                          SizedBox(width: 10),
                          Text('info@ischoolconnect.com')
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.phoneSquare,
                              color: Color.fromARGB(255, 142, 204, 255)),
                          SizedBox(width: 10),
                          Text('+91 9145332283')
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.mapMarker,
                              color: Color.fromARGB(255, 142, 204, 255)),
                          SizedBox(width: 10),
                          Text(
                              'Mumbai, India: 504, Quantum Towers, Rambaug Lane, \nBehind SBI Bank, Off SV Road, Malad West, \nMumbai, Maharashtra- 400064')
                        ],
                      ),
                      Image.network(
                          'https://img.freepik.com/free-vector/email-marketing-internet-chatting-24-hours-support_335657-3009.jpg?t=st=1649491071~exp=1649491671~hmac=dff243323f1138f4e71a5f2cf55ee38fb071a59caf62eb094d0475c6aa7f2c62&w=996')
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
