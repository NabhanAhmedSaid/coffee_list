import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("List Of Coffee"),
        titleSpacing: 0.00,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight:  Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          
        ),
        elevation: 0.00,
        backgroundColor: Colors.orangeAccent[400],
      ),
      body:ListView(
        children: [
          const Center(
            child: Text("List Of Coffee",
            textScaleFactor: 3,

            ),
          ),
          DataTable(
            columns: const [
              DataColumn(label: Text("Id")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Price")),
              DataColumn(label: Text("Action")),
              
            ],
            rows:  [
              DataRow(
                cells:  [
                  DataCell(Text("1")),
                  DataCell(Text("Espresso")),
                  DataCell(Text("0.700 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],

              ),
              DataRow(
                cells: [
                  DataCell(Text("2")),
                  DataCell(Text("Macchiato")),
                  DataCell(Text("1.200 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
                

              ),
              DataRow(
                cells: [
                  DataCell(Text("3")),
                  DataCell(Text("Americano")),
                  DataCell(Text("1.100 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("4")),
                  DataCell(Text("Cappuccino")),
                  DataCell(Text("1.400 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("5")),
                  DataCell(Text("Flat White")),
                  DataCell(Text("1.700 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
               DataRow(
                cells: [
                  DataCell(Text("6")),
                  DataCell(Text("Latte")),
                  DataCell(Text("1.300 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),

              DataRow(
                cells: [
                  DataCell(Text("7")),
                  DataCell(Text("Cortado")),
                  DataCell(Text("1.800 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("8")),
                  DataCell(Text("Affogato")),
                  DataCell(Text("1.400 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("9")),
                  DataCell(Text("Irish Coffee")),
                  DataCell(Text("1.900 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("10")),
                  DataCell(Text("Black Coffee")),
                  DataCell(Text("1.600 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("11")),
                  DataCell(Text("Turkish Coffee")),
                  DataCell(Text("2.100 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
                DataRow(
                cells: [
                  DataCell(Text("12")),
                  DataCell(Text("Iced Coffee")),
                  DataCell(Text("0.900 OMR")),
                  DataCell(IconButton(icon:const Icon(Icons.shopping_cart_checkout),onPressed: (){}))

                ],
              ),
              
            ]
                    ),
                    
        ]
      ),
    
    );
  }
}
