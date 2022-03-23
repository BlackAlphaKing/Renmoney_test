import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renmoney_test/Mainpage/datadetail.dart';
import 'package:renmoney_test/constants/constants.dart';
import 'package:renmoney_test/data/temporary_data.dart';
import 'package:renmoney_test/provider/theme_provider.dart';

class ListedDataPage extends StatefulWidget {
  final String transDate, transName, amount, reference, status, transType;
  final IconData iconData;
  const ListedDataPage(
      {this.transDate,
      this.transName,
      this.amount,
      this.reference,
      this.status,
      this.iconData,
      this.transType});

  @override
  State<ListedDataPage> createState() => _ListedDataPageState();
}

class _ListedDataPageState extends State<ListedDataPage> {
  List<ListedDataPage> listedDataPage = <ListedDataPage>[
    ListedDataPage(
        iconData: Icons.arrow_upward,
        transType: 'sent',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'John'),
    ListedDataPage(
        iconData: Icons.arrow_downward,
        transType: 'received',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'John'),
    ListedDataPage(
        iconData: Icons.arrow_upward,
        transType: 'sent',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'Micheal'),
    ListedDataPage(
        iconData: Icons.arrow_upward,
        transType: 'sent',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'John'),
    ListedDataPage(
        iconData: Icons.arrow_upward,
        transType: 'sent',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'John'),
    ListedDataPage(
        iconData: Icons.arrow_upward,
        transType: 'sent',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'John'),
    ListedDataPage(
        iconData: Icons.arrow_upward,
        transType: 'sent',
        amount: '#50,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'John'),
    ListedDataPage(
        iconData: Icons.list,
        transType: 'airtime',
        amount: '#1,000',
        status: 'Successful',
        reference: 'OX127379782f',
        transDate: '27th October 2020',
        transName: 'Airtime Recharge'),
  ];

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    // print(KListedDataPage);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextStyleGoogle("All Transactions", 18, FontWeight.w700),
              ),
              Expanded(
                child: ListView(
                  children: listedDataPage.map((ListedDataPage _list) {
                    return GestureDetector(
                      onTap: () {
                        changeScreen(
                            context,
                            DetailPage(
                              id: _list.reference,
                              name: _list.transName,
                              date: _list.transDate,
                              amount: _list.amount,
                              status: _list.status,
                            ));
                      },
                      child: Card(
                        color: Color(0xFFF8FCFD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          trailing: _list.transType == "sent"
                              ? Text(
                                  "-${_list.amount}",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )
                              : _list.transType == "received"
                                  ? Text(
                                      "+${_list.amount}",
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    )
                                  : Text(
                                      "-${_list.amount}",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                          subtitle: Text(
                            '${_list.transDate}',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          leading: _list.transType == "sent"
                              ? CircleAvatar(
                                  child: Icon(_list.iconData),
                                  backgroundColor: Colors.purple[100],
                                )
                              : _list.transType == "received"
                                  ? CircleAvatar(
                                      child: Icon(_list.iconData),
                                      backgroundColor: Colors.green[100],
                                    )
                                  : CircleAvatar(
                                      child: Icon(_list.iconData),
                                      backgroundColor: Colors.red[100],
                                    ),
                          title: _list.transType == "sent"
                              ? Text(
                                  "Money Sent To ${_list.transName}",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )
                              : _list.transType == "received"
                                  ? Text(
                                      "Money Received from ${_list.transName}",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    )
                                  : Text(
                                      _list.transName,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        )));
  }
}
