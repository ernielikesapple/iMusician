import 'package:flutter/material.dart';
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
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Followin',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            // background: Image.network(
            //   'https://www.nyc.gov.sg/omw-api/CMS/Uploads/Job/Musician-040321115604.png',
            //   fit: BoxFit.cover,
            // ),
            background: CustomContentScrollView(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'static component of scroll view!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}
