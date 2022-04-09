import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
// import 'package:expansion_card/expansion_card.dart';

class guide extends StatelessWidget {
  const guide({Key? key}) : super(key: key);

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
                        'Guide',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      Text(
                        'Where To Study ?',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'United States of America\nCanada\nUnited Kingdom',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'What Tests should I take for admissions ?',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'GRE\nGMAT\nACT\nSAT\nTOEFL',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'What is the Visa Process ?',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Step 1: Select the type of visa you are applying for.\nStep 2: Next, check your eligibility.\nStep 3: Fill the online application form entering all required information.\nStep 4: And finally appear for the visa interview along with all required documents at a select embassy.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Image.network(
                          'https://img.freepik.com/free-vector/design-inspiration-concept-illustration_114360-3992.jpg?w=740&t=st=1649491448~exp=1649492048~hmac=b8cc1cb387e95d59eccf8c882e58ae67beee5faac75614d7d779a02dfcd8dabb',
                          width: 250,
                        ),
                      )
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
