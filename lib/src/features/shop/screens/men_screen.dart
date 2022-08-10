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
            const Section(
              title: 'Recommended for You',
              child: ThumbnailListView(size: 208, items: _recommendations),
            ),
            const Section(
              title: 'Recently Viewed',
              actionLabel: 'Clear',
              child: ThumbnailListView(size: 208, items: _recommendations),
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

const _highlights = [
  Thumbnail(
    title: 'Member Days is Coming',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Cop Your Fave 👟 Drop',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Sneakers of the Week',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Air Zoom G.T. Cut 2',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Nike React Pegasus Trail 4',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Nike React Infinity Run Flyknit 3',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Nike Metcon 8',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Nike Waffle One SE',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Air Max Flyknit Racer',
    imageSrc: '',
  ),
  Thumbnail(
    title: 'Nike By You',
    imageSrc: '',
  ),
];

const _discountOffers = [
  DiscountedProduct(
    name: 'Nike Space Hippie 04',
    price: 7595,
    discountedPrice: 4559,
  ),
  DiscountedProduct(
    name: 'Nike Free Metcon 4',
    price: 6445,
    discountedPrice: 3869,
  ),
  DiscountedProduct(
    name: 'Nike Dri-FIT Run Division Rise 365',
    price: 2195,
    discountedPrice: 1759,
  ),
  DiscountedProduct(
    name: 'Nike Sportswear',
    price: 7595,
    discountedPrice: 4559,
  ),
  DiscountedProduct(
    name: 'Nike Sport Clash',
    price: 1995,
    discountedPrice: 1199,
  ),
  DiscountedProduct(
    name: 'Nike Air Max 90',
    price: 7345,
    discountedPrice: 4409,
  ),
];

const _runningShoes = [
  Thumbnail(title: 'The On-The-Goer'),
  Thumbnail(title: 'The Jogger'),
  Thumbnail(title: 'The Runner'),
  Thumbnail(title: 'The Runner'),
];

const _popularSearches = [
  'Air Force 1',
  'Air Jordan 1',
  'Air Max',
  'Blazer',
];

const _recommendations = [
  Product(
    name: 'NOCTA Hot Step Air Terra',
    price: 7795,
  ),
  Product(
    name: 'Zion 2 PF',
    price: 6595,
  ),
  Product(
    name: 'Nike ZoomX Vaporfly NEXT% 2',
    price: 10995,
  ),
  Product(
    name: 'Nike Waffle One SE',
    price: 5295,
  ),
  Product(
    name: 'Nike Everyday Plus',
    price: 495,
  ),
  Product(
    name: 'Chelsea F.C. 2022/23 Stadium Home',
    price: 3595,
  ),
];
