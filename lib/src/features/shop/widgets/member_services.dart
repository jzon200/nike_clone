import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../theme/colors.dart';

class MemberServices extends StatelessWidget {
  const MemberServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      height: 288,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _memberServices.length,
        itemBuilder: (context, index) {
          final item = _memberServices[index];
          return InkWell(
            onTap: () {},
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 256,
                    height: 256,
                    color: lightGrey,
                    child: Center(
                      child: Icon(
                        item['icon'] as IconData,
                        size: 64.0,
                      ),
                    ),
                  ),
                  Text(
                    item['title'] as String,
                    overflow: TextOverflow.visible,
                    style: textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 4.0);
        },
      ),
    );
  }
}

const _memberServices = [
  {
    'title': 'Shipping & Deliver',
    'icon': FontAwesomeIcons.vanShuttle,
  },
  {
    'title': 'Check your Order Status',
    'icon': FontAwesomeIcons.clipboardCheck,
  },
  {
    'title': 'Returns',
    'icon': Icons.shopping_bag,
  },
  {
    'title': 'Contact Us',
    'icon': FontAwesomeIcons.userGroup,
  },
  {
    'title': 'Chat With Us',
    'icon': FontAwesomeIcons.solidMessage,
  },
];
