import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class MyInterests extends StatelessWidget {
  const MyInterests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      height: 224,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _myInterests.length,
        itemBuilder: (context, index) {
          final item = _myInterests[index];
          return InkWell(
            onTap: () {},
            child: Ink(
              width: 224,
              decoration: BoxDecoration(
                color: nikeBlack87,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    nikeBlack87.withOpacity(0.2),
                    BlendMode.srcOver,
                  ),
                  image: AssetImage(item['assetName'] as String),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  item['title'] as String,
                  style: textTheme.headline6?.copyWith(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 4);
        },
      ),
    );
  }
}

const _myInterests = [
  {
    'title': 'Running',
    'assetName': 'assets/my_interests/running.jpg',
  },
  {
    'title': 'Training & Gym',
    'assetName': 'assets/my_interests/training_gym.jpg',
  },
  {
    'title': 'Basketball',
    'assetName': 'assets/my_interests/basketball.jpg',
  },
  {
    'title': 'Lifestyle',
    'assetName': 'assets/my_interests/lifestyle.jpg',
  },
];
