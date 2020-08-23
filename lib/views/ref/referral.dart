import 'package:flutter/material.dart';
import 'package:playground/main.dart';
import 'package:playground/views/ref/agent.dart';

class Referral extends StatefulWidget {
  @override
  _ReferralState createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {
  List<dynamic> ref = MyApp.ref.reversed.toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildList()
    );
  }
  Future<void> _getData() async {
    setState(() {
      fetchData();
    });
  }
  void fetchData() async {
    setState(() {
      ref.clear();
      ref= MyApp.ref.reversed.toList();
    });
  }
  Widget _buildList() {
    return ref.length != 0
        ?RefreshIndicator(
      child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: ref.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: <Widget>[
                  Container(
                    child:  ListTile(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AgentDetails(
                                  index: index,
                                )));
                      },
                      leading: CircleAvatar(
                          radius: 30
                      ),
                      title: Text(ref[index].name),
                      subtitle: Text(ref[index].cname),
                      trailing: Text(ref[index].contactperson),
                    )
                  )
                ],
              ),
            );
          }),
      onRefresh: _getData,
    )
        : Center(child: CircularProgressIndicator());
  }
}
