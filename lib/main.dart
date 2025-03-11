import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> items = [
    "Item 50",
    "Item 51",
    "Item 52",
    "Item 53",
    "Item 54"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Mota 1275"),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20),
          itemCount: items.length,
          itemBuilder: (context, index) {
            double height;
            switch (index) {
              case 1:
                height = 150;
                break;
              case 2:
                height = 100;
                break;
              case 3:
                height = 130;
                break;
              case 4:
                height = 80;
                break;
              default:
                height = 60;
            }

            return Container(
              margin: EdgeInsets.only(bottom: 25),
              padding: EdgeInsets.all(16),
              height: height,
              decoration: BoxDecoration(
                color: index == 0 ? Colors.purple : Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del botón
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
        shape: RoundedRectangleBorder(
          // Hace que el botón sea más redondo
          borderRadius: BorderRadius.circular(100),
        ),
        elevation: 10, // Agrega sombra para que se vea más flotante
      ),
    );
  }
}
