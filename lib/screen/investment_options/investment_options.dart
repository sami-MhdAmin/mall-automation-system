import 'package:flutter/material.dart';
import 'package:jessy_mall/helpers/app_colors.dart';

class InvestmentOptions extends StatelessWidget {
  const InvestmentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.foregroundL,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.store_mall_directory)),
              Tab(icon: Icon(Icons.table_rows_rounded)),
            ],
          ),
          title: const Text('Investment option'),
        ),
        body: TabBarView(
          children: [
            //began investment store UI
            InvestmentStoreUI(),
            //End investment store UI

            // began investment stand
            Icon(Icons.directions_transit),
            //end investment stand
          ],
        ),
      ),
    );
  }
}

class Listing {
  final String photoUrl;
  final String floor;
  final String space;
  final String type;
  final String price;

  Listing({
    required this.photoUrl,
    required this.floor,
    required this.space,
    required this.type,
    required this.price,
  });
}

class InvestmentStoreUI extends StatelessWidget {
  final List<Listing> listings = [
    Listing(
      photoUrl:
          'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
      floor: '3rd floor',
      space: '120 sq. ft.',
      type: 'Snack',
      price: '\$500/year',
    ),
    Listing(
      photoUrl:
          'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
      floor: '1st floor',
      space: '80 sq. ft.',
      type: 'Caffe',
      price: '\$400/year',
    ),
    // Add more listings as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(listings[index].photoUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              title: Text(listings[index].type),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4.0),
                  Text(listings[index].floor),
                  SizedBox(height: 4.0),
                  Text(listings[index].space),
                  SizedBox(height: 8.0),
                  Text(
                    listings[index].price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
