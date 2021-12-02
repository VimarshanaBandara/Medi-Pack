import 'package:flutter/material.dart';
import 'package:medi_reminder/constant.dart';


class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 125,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: kSecondary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF073738),
            offset: Offset(2, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: kTextPrimary,
            size: 40,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: kTextPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

