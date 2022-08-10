import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImportData extends StatefulWidget {
  const ImportData({Key? key}) : super(key: key);
  @override
  State<ImportData> createState() => _ImportDataState();
}

class _ImportDataState extends State<ImportData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Inserting Data'),
          ),
          body: ListView(children: <Widget>[
            Center(
                child: Text(
              'Students',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            DataTable(
              columns: [
                DataColumn(label: Text('Id')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('KM')),
                DataColumn(label: Text('Phone Number')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Arya')),
                  DataCell(Text('6')),
                  DataCell(Text('67666666669')),
                ]),
                DataRow(cells: [
                  DataCell(Text('12')),
                  DataCell(Text('John')),
                  DataCell(Text('9')),
                  DataCell(Text('677777777777777')),
                ]),
                DataRow(cells: [
                  DataCell(Text('42')),
                  DataCell(Text('Tony')),
                  DataCell(Text('8')),
                  DataCell(Text('6666666666')),
                ]),
              ],
            ),
          ])),
    );
  }
}
