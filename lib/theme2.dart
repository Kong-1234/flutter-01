import 'package:flutter/material.dart';

class ThemeTwo extends StatefulWidget {
  const ThemeTwo({Key? key}) : super(key: key);

  @override
  State<ThemeTwo> createState() => _ThemeTwoState();
}

class _ThemeTwoState extends State<ThemeTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            Container(
              color: Colors.grey.withOpacity(0.4),
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('Furniture', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.network(
                              'https://img.cppng.com/download/2020-06/11-2-furniture-download-png.png'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        )),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'Find the best furniture style for you',
                            style: TextStyle(fontSize: 25),
                              textAlign: TextAlign.center
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Text('There are many new outfits that make you cool', style: TextStyle(),textAlign: TextAlign.center,),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40, bottom: 30),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Get started',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
