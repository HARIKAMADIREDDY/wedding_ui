import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onButtonPressed;

  const FoodCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          height: 100,
        ),
        Text(title),
        ElevatedButton(
          onPressed: onButtonPressed,
          style: ElevatedButton.styleFrom(
            //backgroundColor: Colors.pink,
            foregroundColor: Colors.pink,
             backgroundColor: Colors.transparent, // Transparent background
       shadowColor: Colors.transparent, // Remove shadow
       side: BorderSide(color: Colors.pink, width: 2),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'Add',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
