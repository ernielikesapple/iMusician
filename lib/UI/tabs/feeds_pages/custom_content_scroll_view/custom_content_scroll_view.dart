import 'package:flutter/material.dart';

class CustomContentScrollView extends StatefulWidget {
  const CustomContentScrollView({super.key});

  @override
  State<CustomContentScrollView> createState() =>
      _CustomContentScrollViewState();
}

class _CustomContentScrollViewState extends State<CustomContentScrollView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy8MZ6g7n4tf_QqQyXeeBw45qDIgplNAbz1w&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
