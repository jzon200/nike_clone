import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.title,
    this.subtitle = '',
    this.actionLabel = '',
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(20, 20, 0, 16),
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String actionLabel;
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final titleColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.headline6,
        ),
        Visibility(
          visible: subtitle.isNotEmpty,
          child: Text(
            subtitle,
            style: textTheme.headline6?.copyWith(
              color: Colors.grey,
            ),
          ),
        )
      ],
    );

    final header = actionLabel.isNotEmpty
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              titleColumn,
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(primary: Colors.black),
                  child: Text(
                    actionLabel,
                    style: textTheme.subtitle1?.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ],
          )
        : titleColumn;

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header, child],
      ),
    );
  }
}
