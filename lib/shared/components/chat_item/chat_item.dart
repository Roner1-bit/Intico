import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../components.dart';

class ChatItemWidget extends StatelessWidget{
  var index;

  ChatItemWidget(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (index % 2 == 0) {
      //This is the sent message. We'll later use data from firebase instead of index to determine the message is sent or received.
      return Column(children: <Widget>[
        Row(
          mainAxisAlignment:
          MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              width: 200.0,
              decoration: BoxDecoration(
                  color: primarySwatch,
                  borderRadius: BorderRadius.circular(8.0)),
              margin: const EdgeInsets.only(right: 10.0),
              child: Text(
                'This is a sent message',
                style: TextStyle(color: primarySwatch),
              ),
            )
          ], // aligns the chatitem to right end
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
                child: Text(
                  DateFormat('dd MMM kk:mm')
                      .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                  style: TextStyle(
                      color: primarySwatch,
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal),
                ),
              )])
      ]);
    } else {
      // This is a received message
      return Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  width: 200.0,
                  decoration: BoxDecoration(
                      color: primarySwatch,
                      borderRadius: BorderRadius.circular(8.0)),
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'This is a received message',
                    style: TextStyle(color: primarySwatch),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
              child: Text(
                DateFormat('dd MMM kk:mm')
                    .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                style: TextStyle(
                    color: primarySwatch,
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal),
              ),
            )
          ],
        ),
      );
    }  }

}