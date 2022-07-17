import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 220,
              ),
              Positioned(
                top: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: Image.network(
                      'https://netstorage-legit.akamaized.net/images/bd00d9358adfe705.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              const Positioned(
                right: 0,
                bottom: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 61,
                    backgroundImage: NetworkImage(
                        "https://media.allure.com/photos/5a26c1d8753d0c2eea9df033/3:4/w_1262,h_1683,c_limit/mostbeautiful.jpg"),
                  ),
                ),
              ),
              const Positioned(
                right: 120,
                bottom: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Shenna Mae',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: Colors.blue,
                          )),
                      const SizedBox(width: 15),
                      const Text(
                        'Add to story',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                      )),
                      const SizedBox(width: 15),
                      const Text(
                        'Edit profile',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                        ),
                        Image.network(
                          'https://media.allure.com/photos/5a26c1d8753d0c2eea9df033/3:4/w_1262,h_1683,c_limit/mostbeautiful.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.edit),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "What's new, Yash?",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: const Text(
                              "Let's update some profile info that may have changed",
                              style: TextStyle(fontSize: 15),
                              overflow: TextOverflow.fade,
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Not now',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Update Profile',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.school,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          'Studies at The University of Cambodia,12000 Phnom Penh',
                          style: TextStyle(fontSize: 17),
                          overflow: TextOverflow.fade,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.school,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          'Went to Saint Francios High School, Takeo provice',
                          style: TextStyle(fontSize: 17),
                          overflow: TextOverflow.fade,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.home,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          'Live in Phnom Penh',
                          style: TextStyle(fontSize: 17),
                          overflow: TextOverflow.fade,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          'Single',
                          style: TextStyle(fontSize: 17),
                          overflow: TextOverflow.fade,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
