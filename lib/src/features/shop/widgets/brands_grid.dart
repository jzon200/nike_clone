import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/colors.dart';

class BrandsGrid extends StatelessWidget {
  const BrandsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            lightGrey,
            Colors.transparent,
          ],
          radius: 0.75,
          focal: Alignment.center,
        ),
      ),
      child: GridView.count(
        crossAxisCount: 3,
        primary: false,
        shrinkWrap: true,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (final assetName in _brandLogos)
            Material(
              color: theme.scaffoldBackgroundColor,
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: assetName.contains('.svg')
                      ? SizedBox(
                          width: 44.0,
                          child: SvgPicture.asset(assetName),
                        )
                      : Image.asset(
                          assetName,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

const _brandLogos = [
  'assets/brands/nike_logo.svg',
  'assets/brands/nike_lab_logo.png',
  'assets/brands/air_jordan_logo.svg',
  'assets/brands/nikesb_logo.svg',
  'assets/brands/nike_acg_logo.svg',
  'assets/brands/nike_by_you_logo.svg',
];
