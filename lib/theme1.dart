import 'package:flutter/material.dart';

class ThemeOne extends StatefulWidget {
  const ThemeOne({Key? key}) : super(key: key);

  @override
  State<ThemeOne> createState() => _ThemeOneState();
}

class _ThemeOneState extends State<ThemeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 40,
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.dashboard_sharp, color: Colors.pink,),
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            actions: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.shopping_bag_outlined),
              ),
              SizedBox(width: 5),
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://cf.ltkcdn.net/baby/images/orig/211177-2121x1414-Cheerful-baby.jpg'),
              ),
            ],
            flexibleSpace: Container(
              color: Colors.grey[100],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.grey.withOpacity(0.2),
              padding: const EdgeInsets.only(top: 28.0, left: 8, right: 8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const TextField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              label: Text('Search...'),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.filter_list_outlined, color: Colors.white,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.indigo, Colors.greenAccent]),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Get special discount'),
                              Text('50%',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                              Text('OFF',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          right: 10,
                          child: Image.network(
                            'https://www.freeiconspng.com/thumbs/shoes-png/running-shoes-images-download-29.png',
                            width: 200,
                          )),
                      Positioned(
                        right: 20,
                        top: 20,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              shape: BoxShape.circle),
                          child: Icon(Icons.star),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(Icons.border_all, color: Colors.pinkAccent,),
                                SizedBox(width: 5),
                                Text('All', style: TextStyle(color: Colors.pinkAccent),)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://www.freeiconspng.com/thumbs/shoes-png/running-shoes-images-download-29.png',
                                  width: 35,
                                ),
                                SizedBox(width: 5),
                                Text('Footwear')
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(Icons.watch),
                                SizedBox(width: 5),
                                Text('Watch')
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(Icons.diamond_outlined),
                                SizedBox(width: 5),
                                Text('Jewely')
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(Icons.earbuds),
                                SizedBox(width: 5),
                                Text('Earphone')
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text('View all'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 500,
                          // color: Colors.green,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.yellow.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text('New'),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          'https://www.freeiconspng.com/thumbs/shoes-png/running-shoes-images-download-29.png',
                                          width: 150,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      'Nike Shoew',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "\$12.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text('New'),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          'https://static.wixstatic.com/media/2cd43b_70674f11a01e43f19366ee72aee4b8bb~mv2.png/v1/fill/w_320,h_507,q_90/2cd43b_70674f11a01e43f19366ee72aee4b8bb~mv2.png',
                                          width: 70,
                                          fit: BoxFit.cover,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      'EMPORIO Watch',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "\$23.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 500,
                          // color: Colors.green,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 30),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          'https://img.cppng.com/download/2020-06/11-2-furniture-download-png.png',
                                          width: 150,
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'Sofa Shoew',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      "\$20.50",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    right: 10, bottom: 10),
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 30),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          'https://www.pngarts.com/files/7/Modern-Furniture-Transparent-Background-PNG.png',
                                          width: 150,
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'Sofa Shoew',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      "\$20.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
