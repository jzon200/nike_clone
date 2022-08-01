import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class SectionList extends StatelessWidget {
  const SectionList({
    Key? key,
    required this.title,
    required this.items,
    this.subTitle = '',
  }) : super(key: key);

  final String title;
  final String subTitle;
  final List items;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const maxSize = 144.0;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.headline6,
          ),
          Visibility(
            visible: subTitle.isNotEmpty,
            child: Text(
              subTitle,
              style: textTheme.headline6?.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
          // TODO: Add Image
          Container(
            height: 192,
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListView.separated(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    // TODO: Add Navigation Functionality
                  },
                  child: Ink(
                    width: maxSize,
                    height: maxSize,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: maxSize,
                          color: lightGrey,
                          margin: const EdgeInsets.only(bottom: 8.0),
                        ),
                        Text(
                          items[index],
                          style: textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (_, index) {
                return const SizedBox(width: 4.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
