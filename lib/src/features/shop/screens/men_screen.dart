import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../api/mock_nike_service.dart';
import '../widgets/widgets.dart';

class MenScreen extends StatelessWidget {
  const MenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: MockNikeService.getShopData('men'),
      builder: (context, AsyncSnapshot<ShopData> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.black),
          );
        }

        return ListView(
          children: [
            Section(
              title: "This Week's Highlights",
              child: ThumbnailListView(
                items: snapshot.data?.weeksHiglights ?? [],
              ),
            ),
            const CategoryList(),
            const Section(
              title: "Find The Right Running Shoes",
              child: ThumbnailListView(size: 176, items: _runningShoes),
            ),
            Section(
              title: "Shop By Collection",
              child: ThumbnailListView(
                items: snapshot.data?.collections ?? [],
              ),
            ),
            Section(
              title: "Just In",
              padding: const EdgeInsets.all(20.0),
              child: NewestProducts(products: snapshot.data?.products ?? []),
            ),
            const Section(
              title: 'Popular Searches',
              child: PopularSearches(searches: _popularSearches),
            ),
            Section(
              title: 'Recommended for You',
              child: ThumbnailListView(
                size: 208,
                items: snapshot.data?.recommendations ?? [],
              ),
            ),
            Section(
              title: 'Recently Viewed',
              actionLabel: 'Clear',
              child: ThumbnailListView(
                size: 208,
                items: snapshot.data?.recommendations ?? [],
              ),
            ),
            const Section(
              title: 'Shop By Brand',
              padding: EdgeInsets.all(20.0),
              child: BrandsGrid(),
            ),
            const Section(
              title: 'My Interests',
              actionLabel: 'Add Interest',
              child: MyInterests(),
            ),
            const Section(
              title: 'Nike Member Services',
              child: MemberServices(),
            ),
            const FindStore(),
          ],
        );
      },
    );
  }
}

const _runningShoes = [
  Thumbnail(
    title: 'The On-The-Goer',
    imageSrc:
        "https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/0a5fd739-f66d-46c9-a909-048816de4017/free-run-2-shoes-brpN8q.png",
  ),
  Thumbnail(
    title: 'The Jogger',
    imageSrc:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b5cbae38-2cf5-4c09-a33b-84776ced2bb8/react-miler-3-road-running-shoes-7bGFwT.png",
  ),
  Thumbnail(
    title: 'The Runner',
    imageSrc:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/5218dd66-7865-48c9-b4d9-87ed201eed2b/zoomx-vaporfly-next-2-road-racing-shoes-D4ntS0.png",
  ),
  Thumbnail(
    title: 'The Racer',
    imageSrc:
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/dec81d47-4188-405f-a126-37c47c665e87/zoomx-vaporfly-next-2-road-racing-shoes-fG92S8.png",
  ),
];

const _popularSearches = [
  'Air Force 1',
  'Air Jordan 1',
  'Air Max',
  'Blazer',
];
