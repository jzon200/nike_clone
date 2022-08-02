import 'package:flutter/material.dart';

class FindStore extends StatelessWidget {
  const FindStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          const Divider(
            height: 1.0,
            indent: 20.0,
            endIndent: 20.0,
          ),
          ListTile(
            onTap: () {
              // TODO: Add Functionality
            },
            leading: const Icon(
              Icons.location_pin,
              color: Colors.black,
            ),
            title: Text(
              'Find a Nike Store',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
