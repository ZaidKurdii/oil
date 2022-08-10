import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('Please import your data as an EXCEL file below\n'),
              ),
              Container(
                child: ElevatedButton(
                  child: Text('Upload File'),
                  onPressed: () {
                    //get excel file
                  },
                ),
              ),
              Container(
                child: Text(
                    '\n\nIf you do not have an EXCel file please enter your data manualy'),
              ),
              Container(
                child: ElevatedButton(
                  child: Text('Insert data'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UploadFile()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
