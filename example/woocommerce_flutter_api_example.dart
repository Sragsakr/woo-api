import 'dart:math';

import 'package:woocommerce_flutter_api/woocommerce_flutter_api.dart';

void main() async {
  final flutterWoocommerce = FlutterWooCommerce(
    baseUrl: 'https://ehabcenter.com',
    username: 'ck_132bffb30f3f7b2e594cd05c09eb1c697bed8e0c',
    password: 'cs_8ae6921152e19603937fc5dd209bbbc699a7bc6c',
    lang: "ar",
    useFaker: false,
  );
 
 /// get coupon by code
 final coupon = await flutterWoocommerce.getCoupons(code: "oct-elaraby-8000");
 print(coupon.toString());
return;
  try {
    WooOrder order = WooOrder(
      lineItems: [
        WooLineItem(
          productId: 24305,
          quantity: 1,
          total: "3519",
        )
      ],
      status: WooOrderStatus.onHold,
      couponLines: [
        WooOrderCouponLine(
          id: Random().nextInt(1000000),
          code: "oct-elaraby-8000",
          discount: 8000.00,
        )
      ],
      total: "3519",
    );
    final res = await flutterWoocommerce.createOrder(order: order);
    print(res.toString());
  } catch (e) {
    print(e.toString().cleanErrorMessage);
  }
}
