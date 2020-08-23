import 'package:flutter/material.dart';
import 'package:playground/main.dart';
import 'package:playground/views/ref/referraldata.dart';
class NewReferral extends StatefulWidget {
  @override
  _NewReferralState createState() => _NewReferralState();
}

class _NewReferralState extends State<NewReferral> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController stateTEC = new TextEditingController();
  TextEditingController nameTEC= new TextEditingController();
  TextEditingController cnameTEC= new TextEditingController();
  TextEditingController areaTEC= new TextEditingController();
  TextEditingController cityTEC= new TextEditingController();
  TextEditingController contactpersonTEC= new TextEditingController();
  TextEditingController typeTEC= new TextEditingController();
  TextEditingController catTEC= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'State'),
                  controller: stateTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Enter State';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Shop / Agent / Distributor Name'),
                  controller: nameTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Type Name ...';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Company Name'),
                  controller: cnameTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Company Name';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Area'),
                  controller: areaTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Area';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'City'),
                  controller: cityTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'City';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Contact Person'),
                  controller: contactpersonTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Contact Person';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Type'),
                  controller: typeTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Retailer';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Category'),
                  controller: catTEC,
                  keyboardType: TextInputType.text,
                  validator: (String str) {
                    if (str.length <= 0)
                      return 'Category';
                    else
                      return null;
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: (){
                        Referaal r = new Referaal();
                        r.state=stateTEC.text;
                        r.name=nameTEC.text;
                        r.cname=cnameTEC.text;
                        r.area=areaTEC.text;
                        r.city=cityTEC.text;
                        r.contactperson=contactpersonTEC.text;
                        r.type=typeTEC.text;
                        r.cat=catTEC.text;

                        MyApp.ref.add(r);
                  },
                  child: Text("Post"),
                ),
              )// Add TextFormFields and RaisedButton here.
            ])),
      ),
    );
  }
}
