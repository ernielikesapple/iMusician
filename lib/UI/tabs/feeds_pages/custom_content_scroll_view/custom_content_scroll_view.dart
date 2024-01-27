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
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Image.network(
                'https://www.nyc.gov.sg/omw-api/CMS/Uploads/Job/Musician-040321115604.png',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ],
    );
  }
}
