import 'package:flutter/material.dart';

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
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.network(
                      listings[index].photoUrl,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listings[index].type,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Floor: ${listings[index].floor}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Space: ${listings[index].space}',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          listings[index].price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
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
