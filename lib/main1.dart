import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody => Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAppBar,
              SizedBox(
                height: 5,
              ),
              _buildComplexBodyBox,
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );

  get _buildAppBar => Container(
        height: 70,
        // color: Colors.pink,
        padding: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.dehaze),
            Row(
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(Icons.notifications, size: 30,),
                      Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text("3", style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://t4.ftcdn.net/jpg/03/21/43/07/360_F_321430761_qQi0CU9tzI5w1k1vJgdA02LMtXtsXvJE.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  get _buildComplexBodyBox => Container(
        // color: Colors.brown,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              "Creative Mints",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSearchTextField,
            SizedBox(
              height: 20,
            ),
            _buildAllBox,
          ],
        ),
      );

  get _buildSearchTextField => Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: ("Search..."),
              border: InputBorder.none),
        ),
      );

  get _buildAllBox => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildBox(
                    Colors.green,
                    Icon(
                      Icons.currency_exchange_rounded,
                      size: 40,
                      color: Colors.greenAccent,
                    ),
                    "Transactions",
                    "7 Items"),
                SizedBox(
                  width: 10,
                ),
                _buildBox(
                    Colors.deepOrange,
                    Icon(
                      Icons.savings_sharp,
                      size: 40,
                      color: Colors.orange,
                    ),
                    "Budget",
                    "4 Items"),
              ],
            ),
            Row(
              children: [
                _buildBox(
                    Colors.amber,
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.yellow,
                    ),
                    "Recommendations",
                    "6 Items"),
                SizedBox(
                  width: 10,
                ),
                _buildBox(
                    Colors.deepPurple,
                    Icon(
                      Icons.credit_card,
                      size: 40,
                      color: Colors.blue,
                    ),
                    "Credit Cards",
                    "3 Cards"),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Choose a categories",
              style: TextStyle(fontSize: 25,),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _buildCategoryBox(
                    Colors.green,
                    Icon(
                      Icons.account_balance,
                      color: Colors.white,
                      size: 30,
                    ),
                    "Brand",
                    "Services"),
                SizedBox(
                  width: 10,
                ),
                _buildCategoryBox(
                    Colors.blue,
                    Icon(
                      Icons.credit_card_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    "Make a",
                    "Payment"),
              ],
            ),
          ],
        ),
      );

  _buildBox(Color clr, Icon c, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          color: clr.withOpacity(0.8), borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: c,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  _buildCategoryBox(Color clr, Icon c, String title, String subtitle) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 10,
      ),
      padding: EdgeInsets.only(left: 15),
      height: 80,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: clr, borderRadius: BorderRadius.circular(50)),
            child: c,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
