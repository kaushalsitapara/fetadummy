import 'package:flutter/material.dart';

class StoreData {
  List<String> cname = new List<String>();
  List<String> owner = new List<String>();
  List<String> contact = new List<String>();
  List<String> address = new List<String>();
  List<String> gstno = new List<String>();
  List<String> email = new List<String>();
  List<String> firm = new List<String>();
  List<String> product = new List<String>();
  List<String> brand = new List<String>();
}

class member extends StatefulWidget {
  @override
  _memberState createState() => _memberState();
}

class _memberState extends State<member> {
  static StoreData _storeData = new StoreData();
  List<String> newDataList;
  TextEditingController _textController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String str =
        "ANJALI,ANSHIMA MILL INDUSTRIES PVT LTD,BHAGIA TEXTILE PVT LTD,BHAGWATI CREATION,BONNYS NX,CLB ENTERPRISES,D G FASHION,DAKSHIN CORPORATION";
    String str1 =
        "KALPESHKUMAR SHAH,MAHAVIRCHAND CHOPRA,GULSHAN BHAGIA,DEVENDRA SINGH PUROHIT,BHARAT BELANI,ADESH BAHETY,MAHESH VALA,KIRANKUMAR PUROHIT";
    String str2 =
        "9825014372,9909947448,9374488788,9618101552,9327707396,9748230400,8866422908,9978138228";
    String str3 =
        "B-15,GF,SUMEL BUSINESS PARK-3,OPP.NEW CLOTH MARKET,RAIPUR,AHMEDABAD.|1,GF,CLOTH COMMERCIAL CENTRE,SAKAR BAZAR,AHMEDABAD.|B-104,KARNAVATI SUNDERVAN,B/H SATKAR STATUS,KUBERNAGAR,AHMEDABAD.|C-50,GF,SUMEL BUSINESS PARK-3,OPP.NEW CLOTH MARKET,RAIPUR,AHMEDABAD.|C-247 TO 253,SUMEL BUSINESS PARK-3,OPP.NEW CLOTH MARKET,RAIPUR,AHMEDABAD.|O/8,SAMET BUSINESS PARK,KHOKHRA CIRCLE,AMRAIWADI,AHMEDABAD.|B-75,1ST FLOOR,SUMEL BUSINESS PARK-1,B/H NEW CLOTH MARKET,SARANGPUR,AHMEDABAD.|C-201,3RD FLOOR,SUMEL BUSINESS PARK-2,B/H VANIJYA BHAWAN,KANKARIA,AHMEDABAD.";
    String str4 =
        "24AAIHK6353E1ZC              AAIHK6353E,24AABCR3783P1ZV           AABCR3783P,24AAHCB7254R1Z3           AAHCB7254R,24ANZPP2428F1ZO           ANZPP2428F,24AATFB2023M1ZE          AATFB2023M,24AOPPB1766D1Z7            AOPPB1766D,24ADFPW6206J1ZD           ADFPW6206J,24AMSPK8064C1ZW         AMSPK8064C";
    String str5 =
        "PROPRIETORSHIP,PRIVATE LTD.,PRIVATE LTD.,PROPRIETORSHIP,PARTNERSHIP,PROPRIETORSHIP,PROPRIETORSHIP,PROPRIETORSHIP";
    String str6 =
        "ANGNA.ANAND@GMAIL.COM,VINAYAKCHOPRA@YAHOO.COM,BHAGIATEXTILE@GMAIL.COM,BHAGWATI0503@GMAIL.COM,BHARATBELANI21@GMAIL.COM,YUVRANIKURTIES@GMAIL.COM,INFO@DGFASHION.IN,DAKSHIN882@GMAIL.COM";
    String str7 =
        "KURTI,BOTTOMS,WESTERN TOP,READYMADE|KURTI,FABRICS|BOTTOMS,LEGGINGS|KURTI|REDYMADE SUIT|KURTI|KURTI,BOTTOMS,WESTERN TOP|KURTI,FABRIC,BOTTOM";
    String str8 =
        "ANJALI,ANSHIMA,HIRSHITA LEGGINGSS,BHAVIKA,BONNYS NX,YUVRANI,HETVI,DAKSHIN";

    List<String> strL = str.split(",");
    List<String> strL1 = str1.split(",");
    List<String> strL2 = str2.split(",");
    List<String> strL3 = str3.split("|");
    List<String> strL4 = str4.split(",");
    List<String> strL5 = str5.split(",");
    List<String> strL6 = str6.split(",");
    List<String> strL7 = str7.split("|");
    List<String> strL8 = str8.split(",");

    for (int i = 0; i < strL.length; i++) {
      _storeData.cname.add(strL[i]);
      _storeData.owner.add(strL1[i]);
      _storeData.contact.add(strL2[i]);
      _storeData.address.add(strL3[i]);
      _storeData.gstno.add(strL4[i]);
      _storeData.firm.add(strL5[i]);
      _storeData.email.add(strL6[i]);
      _storeData.product.add(strL7[i]);
      _storeData.brand.add(strL[i]);
    }
    fetchData();
  }

  void fetchData() {
    newDataList = List.from(_storeData.cname);
  }

  onItemChanged(String value) {
    setState(() {
      newDataList = _storeData.cname
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'Search Here...',
            ),
            onChanged: onItemChanged,
          ),
        ),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: newDataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                            child: ListTile(
                          leading: CircleAvatar(radius: 30),
                          onTap: () {},
                          title: Text(newDataList[index] +
                              "\n" +
                              _storeData.owner[index]),
                          subtitle: Text(_storeData.address[index]),
                          trailing: Text(_storeData.contact[index]),
                        ))
                      ],
                    ),
                  );
                }))
      ],
    );

    /* ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: _storeData.owner.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: <Widget>[
                Container(
                    child:  ListTile(
                      leading: CircleAvatar(
                          radius: 30
                      ),
                      title: Text(_storeData.cname[index]+"\n"+_storeData.owner[index]),
                      subtitle: Text(_storeData.address[index]),
                      trailing: Text(_storeData.contact[index]),
                    )
                )
              ],
            ),
          );
        });*/
  }
}
