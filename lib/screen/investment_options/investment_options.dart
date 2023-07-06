import 'package:flutter/material.dart';
import 'package:jessy_mall/helpers/app_colors.dart';
import 'package:jessy_mall/screen/investment_options/widgets/investment_store.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InvestmentOptions extends StatelessWidget {
  InvestmentOptions({super.key});
  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.store_mall_directory)),
          Tab(icon: Icon(Icons.table_rows_rounded)),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.foregroundL,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: AppColors.backgroundTabBar,
              child: _tabBar,
            ),
          ),
          title: const Text('Investment option'),
        ),
        body: TabBarView(
          children: [
            //began investment store UI
            InvestmentStoreUI(),
            //End investment store UI

            // began investment stand
            InvestmentStandUI(),
            //end investment stand
          ],
        ),
      ),
    );
  }
}

class Listing {
  final String space;
  final String type;
  final String price;

  Listing({
    required this.space,
    required this.type,
    required this.price,
  });
}

class InvestmentStandUI extends StatelessWidget {
  // Create a webview controller
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // print the loading progress to the console
          // you can use this value to show a progress bar if you want
          debugPrint("Loading: $progress%");
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
        Uri.parse("https://app.vectary.com/p/67QoljN0bz9vp78OSy1tti"));
  final List<Listing> listings = [
    Listing(
      space: '120 sq. ft.',
      type: 'Snack',
      price: '\$500/year',
    ),
    Listing(
      space: '80 sq. ft.',
      type: 'Caffe',
      price: '\$400/year',
    ),
    // Add more listings as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 200, child: WebViewWidget(controller: _controller)),
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "In this option you can immediately invest until 5 stands,\n every stand have one metter space, and you can have a type in each stand."),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Available types\n price per month \n types: kitchen stuff, Detergent, canned food."),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
