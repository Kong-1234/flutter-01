import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: ListView(
        children: [
          PostList(),
          PostList(),
          PostList(),
        ],
      ),
    );
  }
}

class PostList extends StatefulWidget {
  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 5),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                          "https://i2.wp.com/wikifamouspeople.com/wp-content/uploads/2018/08/Kim-Sa-Rang.jpg?resize=655%2C389&ssl=1"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kim sa rang",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Row(
                            children: const [
                              Text("5Hr"),
                              Icon(
                                Icons.home,
                                size: 12,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
                "She’s an actor in “Miss Korea” movie with perfect beauty, body and height! There’s a piece that Kim Sa-rang received a lot of love for. The most popular drama of 2010 with a whopping 38.6% audience rating!"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Image.network(
              "https://i2.wp.com/wikifamouspeople.com/wp-content/uploads/2018/08/Kim-Sa-Rang.jpg?resize=655%2C389&ssl=1",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                Icon(
                  Icons.emoji_emotions,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text("Lee jong suk and 122 liked"),
                Spacer(),
                Text("100 comments")
              ],
            ),
          ),
          const Divider(
            height: 25,
            thickness: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up_alt_outlined,
                            color: isLiked ? Colors.grey : Colors.blue),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(
                              color: isLiked ? Colors.grey : Colors.blue),
                        ),
                      ],
                    )),
                TextButton(
                  onPressed: () {
                    Scaffold.of(context).showBottomSheet<void>(
                      (BuildContext context) {
                        return Container(
                          height: 400,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 35,
                                          backgroundImage: NetworkImage(
                                              "https://media.allure.com/photos/5a26c1d8753d0c2eea9df033/3:4/w_1262,h_1683,c_limit/mostbeautiful.jpg"),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Korosa",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17)),
                                                    Text(
                                                        'Hello every body in the earth'),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: const [
                                                  Text('1 hour ago'),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Like'),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Reply'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Spacer(),
                                  // // ElevatedButton(
                                  // //   child:
                                  // //       Icon(Icons.keyboard_arrow_down_sharp),
                                  // //   onPressed: () {
                                  // //     Navigator.pop(context);
                                  // //   },
                                  // // )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Comment",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.share),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
