import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class iscHomepage extends StatelessWidget {
  iscHomepage({Key? key}) : super(key: key);

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
      body: Container(
        // padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromARGB(255, 157, 211, 255),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network(
                        'https://stage-cdn.ischoolconnect.com/iSchoolConnect/b2c/bg.png',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Find and Apply to your dream study abroad destinations',
                            style: Theme.of(context).textTheme.headline1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextField(
                          controller: uniController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: 'Search for University',
                          ),
                        ),
                        const SizedBox(height: 20),
                        RaisedButton(
                          onPressed: () {
                            String searchFor = uniController.text;
                            print(searchFor);
                          },
                          padding: const EdgeInsets.all(10),
                          color: Colors.blue,
                          child: Text('Search'),
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 13, 87, 148),
                      Color.fromARGB(255, 99, 185, 255)
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'How is iSchoolConnect different?',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'From career counseling and university selection to funding and visa application, our student counselors use the latest AI technology to help you get into top universities abroad.',
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 99, 185, 255),
                      Color.fromARGB(255, 13, 87, 148),
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () {},
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        color: Colors.blue,
                        child: Text('Login'),
                        textColor: Colors.white,
                      ),
                      const SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () {},
                        padding: const EdgeInsets.symmetric(
                            horizontal: 41, vertical: 15),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: const Text('Register'),
                        textColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue, width: 3),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'To Explore\nmore features',
                    style: Theme.of(context).textTheme.headline1,
                    softWrap: true,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
