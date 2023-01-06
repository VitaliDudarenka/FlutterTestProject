import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BodyWidgetState();
  }
}

class BodyWidgetState extends State<BodyWidget> {
  String serverResponse = 'Server response';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Text('Send request to server'),
                onTap: () {
                  _makeGetRequest();
                },
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(serverResponse),
              )
            ],
          ),
        ),
      ),
    );
  }

  _makeGetRequest() async {
    Response response = await get(_localHost());
    setState(() {
      serverResponse = response.body;
    });
  }

  String _localHost() {
    if (Platform.isAndroid)
      return 'http://10.0.2.2:3000';
    else
      return 'http://localhost:3000';
  }
}
