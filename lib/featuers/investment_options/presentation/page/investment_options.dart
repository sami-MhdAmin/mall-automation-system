import 'package:flutter/material.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/widgets/investment_store.dart';

class InvestmentOptions extends StatelessWidget {
  const InvestmentOptions({super.key});
  TabBar get _tabBar => TabBar(
        labelColor: ColorManager.black,
        unselectedLabelColor: ColorManager.grey,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: ColorManager.black,
        tabs: [
          Tab(
            icon: SizedBox(
                width: 200,
                child: Text(
                  'products',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ),
          Tab(
            icon: SizedBox(
                width: 200,
                child: Text(
                  'income',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: ColorManager.foregroundL,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              // color: ColorManager.backgroundTabBar,
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorManager.foregroundL,
                          ColorManager.backgroundTabBar,
                        ]),
                  ),
                  child: _tabBar),
            ),
          ),
          title: Text(
            'Investment option',
            style: TextStyle(color: ColorManager.backgroundL),
          ),
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
  // final _controller = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //   ..setNavigationDelegate(
  //     NavigationDelegate(
  //       onProgress: (int progress) {
  //         // print the loading progress to the console
  //         // you can use this value to show a progress bar if you want
  //         debugPrint("Loading: $progress%");
  //       },
  //       onPageStarted: (String url) {},
  //       onPageFinished: (String url) {},
  //       onWebResourceError: (WebResourceError error) {},
  //       onNavigationRequest: (NavigationRequest request) {
  //         return NavigationDecision.navigate;
  //       },
  //     ),
  //   )
  //   ..loadRequest(
  //       Uri.parse("https://app.vectary.com/p/67QoljN0bz9vp78OSy1tti"));
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

  InvestmentStandUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // SizedBox(height: 200, child: WebViewWidget(controller: _controller)),
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: const Column(
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
