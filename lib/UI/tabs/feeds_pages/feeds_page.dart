import 'package:flutter/material.dart';
import 'package:i_musician/UI/custom_widgets/circle_button.dart';
import 'package:i_musician/UI/tabs/feeds_pages/create_feeds_page.dart';
import 'package:i_musician/UI/tabs/feeds_pages/custom_content_scroll_view/widget.dart';

class FeedsPage extends StatefulWidget {
  const FeedsPage({super.key});

  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Color.fromARGB(255, 134, 237, 144),
          expandedHeight: 80,
          // flexibleSpace: FlexibleSpaceBar(
          //   background: Image.network(
          //     'https://assets.newatlas.com/dims4/default/e0da7b4/2147483647/strip/true/crop/5000x3200+0+0/resize/1920x1229!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F85%2F1e%2F064d58a64420a45f14f164afa05c%2Fco-op-live-bowl-1.jpg',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          title: Text(
            'Feeds',
            style: TextStyle(
                fontSize: 30,
                color: Colors.purple[100],
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.camera_alt_outlined,
              iconSize: 30.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateFeedsPage()),
                );
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                CustomContentScrollView(),
                Text(
                  'Treading',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(
                children: [
                  Image.network(
                    'https://i.pinimg.com/736x/ec/2d/1e/ec2d1e070412b3ef8ea7adce4cfc5523.jpg',
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text('Item $index'),
                  ),
                ],
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}
