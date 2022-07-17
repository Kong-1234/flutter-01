import 'package:flutter/material.dart';

class InstagramIUClone extends StatefulWidget {
  const InstagramIUClone({Key? key}) : super(key: key);

  @override
  State<InstagramIUClone> createState() => _InstagramIUCloneState();
}

class _InstagramIUCloneState extends State<InstagramIUClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('Instagram'),
            Icon(Icons.arrow_drop_down_sharp)
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.chat_bubble_outlined),
          ),
        ],
      ),
      body: _buildbody,
    );
  }
  
  get _buildbody {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildStory,
          //_buildPost,
        ],
      ),
    );
  }
  
  get _buildStory {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 88,
                    height: 88,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.purple, Colors.orange],
                      )
                    ),
                  ),
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                  ),
                  const CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage('https://m.media-amazon.com/images/I/61rBLjzUBXL.jpg'),
                  ),
                ],
              ),
              Text('Sokaroka')
            ],
          ),
        ],
      ),
    );
  }
  
  get _buildPost {
    
  }
}
