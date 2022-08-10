import 'package:flutter/material.dart';

class _ListView extends StatelessWidget {
  const _ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.separated(
            primary: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.greenAccent,
                width: 192,
                height: 100,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16);
            },
            itemCount: 20,
          ),
        ),
        const SizedBox(height: 16),
        Flexible(
          child: ListView.separated(
            primary: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.orange,
                width: 192,
                height: 100,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16);
            },
            itemCount: 20,
          ),
        ),
        const SizedBox(height: 16),
        Flexible(
          child: ListView.separated(
            primary: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.indigoAccent,
                width: 192,
                height: 100,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 16);
            },
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
