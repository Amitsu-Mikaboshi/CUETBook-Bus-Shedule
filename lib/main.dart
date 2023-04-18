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
        primarySwatch: Colors.blue,
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
        title: Text('CUET BUS SHEDULE',style: TextStyle(fontWeight: FontWeight.bold),),

      ),
      body: Center(
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
                DataRow(

                  cells: [DataCell(
                    Text(
                      'Jomuna',
                    ),
                  ),

                    DataCell(
                      Text(
                        '5.00am',
                      ),
                    ),

                    DataCell(
                      Text(
                        'CUET',
                      ),
                    ),]
                ),

                DataRow(
                    cells: [DataCell(
                      Text(
                        'Padma',
                      ),
                    ),

                      DataCell(
                        Text(
                          '7.00am',
                        ),
                      ),

                      DataCell(
                        Text(
                          'CUET',
                        ),
                      ),]
                ),

                DataRow(
                  cells: [DataCell(
                    Text(
                      'buriganga',
                    ),
                  ),

                    DataCell(
                      Text(
                        '7.00am',
                      ),
                    ),

                    DataCell(
                      Text(
                        'CUET',
                      ),
                    ),
                  ]
            ),
          ],
        ),
      ),
    );
  }
}
