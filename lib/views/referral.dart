import 'package:flutter/material.dart';
import 'package:playground/views/ref/newrefereal.dart';
import 'package:playground/views/ref/referral.dart';
import 'package:playground/views/referralstructures.dart';

class referral extends StatefulWidget {
  @override
  _referralState createState() => _referralState();
}

class _referralState extends State<referral> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Directory'),
          leading: Container(),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Ask for reference'),
            ),
            Tab(
              child: Text('Request received'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          member(),
          Referral(),
        ]),
      ),
    );
  }
}
