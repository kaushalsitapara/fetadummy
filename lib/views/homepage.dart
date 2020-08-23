import 'package:flutter/material.dart';
import 'package:playground/views/directory.dart';
import 'package:playground/views/about.dart';
import 'package:playground/views/referral.dart';
import 'package:playground/views/profile.dart';
import 'package:playground/views/caution.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile())),
              subtitle: Text('Member'),
              leading: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/images/user.png'),
              ),
              title: Text(
                'Jagadish Bhai',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              title: Text('HomePage'),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => directory())),
              title: Text('Directory'),
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => referral())),
              title: Text('Referrals'),
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aboutus())),
              title: Text('About Us'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: const EdgeInsets.all(20),
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => directory())),
              child: Card(
                  elevation: 1.0,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              child: Image(
                            image: AssetImage('assets/images/directory.png'),
                            height: 2.0,
                            fit: BoxFit.cover,
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Directory',
                            textScaleFactor: 1.5,
                          ),
                        ],
                      ))),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => referral())),
              child: Card(
                  elevation: 1.0,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              child: Image(
                            image: AssetImage('assets/images/referral.png'),
                            height: 2.0,
                            fit: BoxFit.cover,
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Referrals',
                            textScaleFactor: 1.5,
                          ),
                        ],
                      ))),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => caution())),
              child: Card(
                  elevation: 1.0,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              child: Image(
                            image: AssetImage('assets/images/caution.png'),
                            height: 2.0,
                            fit: BoxFit.cover,
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Caution',
                            textScaleFactor: 1.5,
                          ),
                        ],
                      ))),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aboutus())),
              child: Card(
                  elevation: 1.0,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              child: Image(
                            image: AssetImage('assets/images/about.png'),
                            height: 2.0,
                            fit: BoxFit.cover,
                          )),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'About Us',
                            textScaleFactor: 1.5,
                          ),
                        ],
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
