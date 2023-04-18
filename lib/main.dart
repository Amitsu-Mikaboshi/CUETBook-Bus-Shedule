import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Center(
          child: Text(
            'CUET BUS SHEDULE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DataTable(
              columns: const [
                DataColumn(
                  label: Text('Bus'),
                ),
                DataColumn(
                  label: Text('Time'),
                ),
                DataColumn(
                  label: Text('Departure Place'),
                ),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('ALL')),
                  DataCell(Text('6.00am')),
                  DataCell(Text('CUET')),
                ]),
                DataRow(cells: [
                  DataCell(Text('ALL')),
                  DataCell(Text('7.15am')),
                  DataCell(Text('Rastar Matha')),
                ]),
                DataRow(cells: [
                  DataCell(Text('ALL')),
                  DataCell(Text('2.35pm')),
                  DataCell(Text('CUET')),
                ]),
                DataRow(cells: [
                  DataCell(Text('ALL')),
                  DataCell(Text('4.15pm')),
                  DataCell(Text('Station')),
                ]),
                DataRow(cells: [
                  DataCell(Text('ALL')),
                  DataCell(Text('7.15pm')),
                  DataCell(Text('Station')),
                ]),
              ],
            ),
            SizedBox(width: double.infinity),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.orange.withOpacity(0.2), BlendMode.dstATop),
            image: ExactAssetImage('images/totoro.png'),
          ),
        ),
      ),
      backgroundColor: Colors.orange[400],
    );
  }
}
