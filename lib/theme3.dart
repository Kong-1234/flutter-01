import 'package:flutter/material.dart';

class ThemeThree extends StatefulWidget {
  const ThemeThree({Key? key}) : super(key: key);

  @override
  State<ThemeThree> createState() => _ThemeThreeState();
}

class _ThemeThreeState extends State<ThemeThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 40,
            leading: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.dehaze,
                color: Colors.pink,
              ),
            ),
            actions: const [
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
              padding: const EdgeInsets.only(top: 18.0, left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Choose',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Your Product',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              label: Text('Find your product'),
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
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.filter_list_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              color: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: const Text(
                                'All',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: const Text('Footwear',
                                  style: TextStyle(color: Colors.grey))),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: const Text('Watch',
                                  style: TextStyle(color: Colors.grey))),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: const Text('Jewely',
                                style: TextStyle(color: Colors.grey)),
                          ),
                        ),
                        const SizedBox(width: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: const Text(
                              'Earphone',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 600,
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [Icon(Icons.favorite)],
                                      ),
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Shoes',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "\$12.00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.add, color: Colors.white,),
                                        )
                                      ],
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Icon(Icons.favorite_border)
                                        ],
                                      ),
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Watch',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "\$23.00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.add, color: Colors.white,),
                                        )
                                      ],
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
                          height: 550,
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Icon(Icons.favorite_border)
                                        ],
                                      ),
                                    ),
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Chair',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "\$20.00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.add, color: Colors.white,),
                                        )
                                      ],
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
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 18.0, bottom: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Icon(Icons.favorite_border)
                                        ],
                                      ),
                                    ),
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
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Chair',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "\$25.00",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.add, color: Colors.white,),
                                        )
                                      ],
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
