import 'package:flutter/material.dart';
import 'package:playground/main.dart';


class Review extends StatefulWidget {
  Review({Key key, this.index}) : super(key: key);
  final int index;
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController charge = new TextEditingController();
  TextEditingController comment= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Agent'),
    ),
    body: SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Charge'),
                  controller: charge,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Enter Negative/Positive';
                    else
                      return null;
                  },
                ),
              ),
              /*Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  controller: name,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Type Name ...';
                    else
                      return null;
                  },
                ),
              ),*/
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Comment'),
                  controller: comment,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Comment';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: (){
                    MyApp.ref[widget.index].charge.add(charge.text);
                 //   MyApp.ref[widget.index].reviewer.add(name.text);
                    MyApp.ref[widget.index].comment.add(comment.text);
                  },
                  child: Text("Post"),
                ),
              )// Add TextFormFields and RaisedButton here.
            ])),
      ),
    ));
  }
}
