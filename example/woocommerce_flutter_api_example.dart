import 'package:woocommerce_flutter_api/woocommerce_flutter_api.dart';

void main() async {
  final flutterWoocommerce = FlutterWooCommerce(
    baseUrl: 'https://www.ehabcenter.com',
    username: 'ck_132bffb30f3f7b2e594cd05c09eb1c697bed8e0c',
    password: 'cs_8ae6921152e19603937fc5dd209bbbc699a7bc6c',
    lang: "ar",
    useFaker: false,
  );

  // WooCustomer customer = WooCustomer(
  //   email: "srag11@gmail.com",
  //   firstName: "seraqq3",
  //   lastName: "sakqqr4",
  //   role: 'customer',
  //   username: "seragSaqqkr505",
  //   password: "Srag12qq3",
  // );

  // try {
  //   final res = await flutterWoocommerce.register(customer);
  //   print(res.toString());
  // } catch (e) {
  //   print(e.toString().cleanErrorMessage);
  // }
  // return;
  try {
    final data = await flutterWoocommerce.createUserToken(
      userName: "srag11@gmail.com",
      password: "Srag12qq3",
    );
    print(data["token"].toString());
    final token = data["token"];
    final userEmail = data["user_email"];
    final verifyToken = await flutterWoocommerce.verifyUserToken(token: token);
    if (verifyToken) {
      final userId = await flutterWoocommerce.getUserInfo(userEmail);
      print(userId.toString());
    }
  } catch (e) {
    print(e.toString().cleanErrorMessage);
  }
    return;
//delete account
  try {
    final res = await flutterWoocommerce.deleteAccount(68330);
    print(res.toString());
  } catch (e) {
    print(e.toString().cleanErrorMessage);
  }
  return;
}
