import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(right: 60.0),
          child: Center(
              child: Text(
                "Ochat",
                style: TextStyle(
                    color: Colors.indigo, fontSize: 28, fontWeight: FontWeight.bold),
              )),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.deepPurple,
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                          "https://media.allure.com/photos/5a26c1d8753d0c2eea9df033/3:4/w_1262,h_1683,c_limit/mostbeautiful.jpg"),
                    ),
                  ],
                ),
              ),
              BodyDetails(
                label: "Name",
                subtitle: "Bunthoeun",
              ),
              BodyDetails(
                label: "ID",
                subtitle: "Mr.Shroud",
              ),
              BodyDetails(
                label: "Phone",
                subtitle: "+855967891234",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BodyDetails extends StatelessWidget {
  final String label, subtitle;

  BodyDetails({required this.label, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.grey),
              ),
              Text(
                subtitle,
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}