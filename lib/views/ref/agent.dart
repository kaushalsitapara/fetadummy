import 'package:flutter/material.dart';
import 'package:playground/main.dart';
import 'package:playground/views/ref/review.dart';

class AgentDetails extends StatefulWidget {
  AgentDetails({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _AgentDetailsState createState() => _AgentDetailsState();
}

class _AgentDetailsState extends State<AgentDetails> {
  List<dynamic> ref = MyApp.ref.reversed.toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(MyApp.ref[MyApp.ref.length - widget.index - 1].charge.length==0){
    MyApp.ref[MyApp.ref.length - widget.index - 1].charge.add("Positive");
    MyApp.ref[MyApp.ref.length - widget.index - 1].comment
        .add("Comment By Reviewer");
    MyApp.ref[MyApp.ref.length - widget.index - 1].reviewer
        .add("Name Of Reviewer");}
    ref = MyApp.ref.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Agent'),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: SizedBox(
                          width: 200,
                            height: 200,
                            child: ListTile(
                      leading: CircleAvatar(radius: 30),
                      onTap: () {},
                      title: Text(ref[widget.index].name),
                      subtitle: Text(ref[widget.index].area +
                          ref[widget.index].city +
                          ref[widget.index].state),
                      trailing: Text(ref[widget.index].cname),
                    ))),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Review(
                                    index: MyApp.ref.length - widget.index - 1 ,
                                  )));
                        },
                        child: Text("Add Review"),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                child: RefreshIndicator(
                  child: Container(
                      child: SizedBox(
                          //width: 200,
                          height: 500,
                          child:  ListView.builder(
                              padding: EdgeInsets.all(8),
                              itemCount: ref[widget.index].charge.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                          child: ListTile(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AgentDetails(
                                                            index: index,
                                                          )));
                                            },
                                            leading: CircleAvatar(radius: 0),
                                            title: Text(
                                                ref[widget.index].comment[index]
                                             //   ref[widget.index].reviewer[index]),
                                            ),
                                            trailing:
                                            Text(ref[widget.index].charge[index]),
                                          ))
                                    ],
                                  ),
                                );
                              }))),
                  onRefresh: _getData,
                ),
              )
            ],
          ),
        )));
  }

  Future<void> _getData() async {
    setState(() {
      fetchData();
    });
  }

  void fetchData() async {
    setState(() {
      ref = MyApp.ref.reversed.toList();
    });
  }
}
