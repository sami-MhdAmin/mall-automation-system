import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';

import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_counter.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/cart_card.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/shipping_address_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:geolocator/geolocator.dart';

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

late double latitude;
late double longitude;
Future<void> getCurrentLocation() async {
  try {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    latitude = position.latitude;
    longitude = position.longitude;

    print("Latitude: $latitude, Longitude: $longitude");
  } catch (e) {
    print("Error getting location: $e");
  }
}

Future<void> getAddressFromCoordinates(
    double latitude, double longitude) async {
  try {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(latitude, longitude);

    if (placemarks != null && placemarks.isNotEmpty) {
      Placemark placemark = placemarks[0];

      String name = placemark.name ?? '';
      String street = placemark.street ?? '';
      String subLocality = placemark.subLocality ?? '';
      String locality = placemark.locality ?? '';
      String administrativeArea = placemark.administrativeArea ?? '';
      String country = placemark.country ?? '';

      String address =
          "$name, $street, $subLocality, $locality, $administrativeArea , $country";

      print("Address: $address");
    } else {
      print("No address found for the coordinates.");
    }
  } catch (e) {
    print("Error getting address: $e");
  }
}

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderPage(left: false, title: StringManager.myCart.tr()),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              StringManager.shippingAddress.tr(),
              style: TextStyle(
                color: ColorManager.black,
                fontSize: 45.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              var pos = _determinePosition();
              var sami = getCurrentLocation();
              getAddressFromCoordinates(latitude, longitude);
            },
            child: ShippingAddressCard(
                homeText: StringManager.home.tr(),
                addressText: "place, street"),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              StringManager.orderList.tr(),
              style: TextStyle(
                color: ColorManager.black,
                fontSize: 45.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible(
            child: Column(
              // alignment: AlignmentDirectional.bottomCenter,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return CartCard(
                        price: "\$ 25.0",
                        delete: true,
                      );
                    },
                  ),
                ),
                Container(
                  height: 330.h,
                  color: ColorManager.backgroundL,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringManager.total.tr(),
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 55.sp,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$ 95.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 55.sp,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: StringManager.confirm.tr(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
