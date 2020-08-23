import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';
import 'package:playground/views/directorystructures.dart';

class directory extends StatefulWidget {
  @override
  _directoryState createState() => _directoryState();
}

class _directoryState extends State<directory> {
  TextEditingController _textController = TextEditingController();
  Widget searchbar() {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        hintText: 'Search Here...',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Directory'),
          leading: Container(),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Members'),
            ),
            Tab(
              child: Text('Sellers'),
            ),
            Tab(
              child: Text('Agents'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          member(),
          member(),
          member(),
        ]),
      ),
    );
  }
}
