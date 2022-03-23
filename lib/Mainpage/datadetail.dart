import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renmoney_test/constants/constants.dart';
import 'package:renmoney_test/provider/theme_provider.dart';

class DetailPage extends StatefulWidget {
  final String id, name, amount, date, status;
  const DetailPage({this.id, this.name, this.amount, this.date, this.status});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    TextStyleGoogle("Transaction Details", 18, FontWeight.w700),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    height: size.height * .48,
                    width: size.width * .80,
                    child: Card(
                      elevation: themeProvider.isDarkMode ? 0 : 2,
                      color: white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, bottom: 20, left: 10, right: 10),
                              child: TextStyleGoogleNormal(
                                  "Detailed summary of transaction",
                                  16,
                                  FontWeight.w500,
                                  Colors.blue),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal("Recepient", 14,
                                      FontWeight.w500, Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal(widget.name, 16,
                                      FontWeight.w800, Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal("Amount", 14,
                                      FontWeight.w500, Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal(widget.amount,
                                      16, FontWeight.w800, Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal("Date", 14,
                                      FontWeight.w500, Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal(widget.date, 16,
                                      FontWeight.w800, Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal("Reference", 14,
                                      FontWeight.w500, Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal(widget.id, 16,
                                      FontWeight.w800, Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal("Status", 14,
                                      FontWeight.w500, Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      bottom: 20,
                                      left: 10,
                                      right: 10),
                                  child: TextStyleGoogleNormal(
                                    widget.status,
                                    16,
                                    FontWeight.w800,
                                    widget.status == "Successful"
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
