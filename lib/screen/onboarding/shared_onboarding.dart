import 'package:expenz_new/constants/colors.dart';
import 'package:expenz_new/constants/constan.dart';
import 'package:flutter/cupertino.dart';

class SharedOnboarding extends StatelessWidget {
  final String title;
  final String imagepath;
  final String description;
  const SharedOnboarding({
    super.key,
    required this.title,
    required this.imagepath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kdefaultpadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagepath,
            width: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Kgrey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
