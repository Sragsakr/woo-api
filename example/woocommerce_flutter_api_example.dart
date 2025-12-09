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
  //   email: "srag.sabry@gmail.com",
  //   firstName: "seraqq",
  //   lastName: "sakqqr",
  //   role: 'customer',
  //   username: "seragSaqqkr50",
  //   password: "Srag12qq3",
  // );

  // try {
  //   final res = await flutterWoocommerce.register(customer);
  //   print(res.toString());
  // } catch (e) {
  //   print(e.toString().cleanErrorMessage);
  // }
  // // return;
  try {
    final data = await flutterWoocommerce.createUserToken(userName: "srag.sabry@gmail.com", password: "Srag123");
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

  // Method 1: Using the enhanced getProducts method (now handles complete search terms)
  // final products =
  //     await flutterWoocommerce.getOrders(status: [WooOrderStatus.underReview]);
  // print("Found ${products.length} products using enhanced getOrders method");

  // Method 2: Using the new dedicated search method for complete terms
  // final productsByCompleteTerm =
  //     await flutterWoocommerce.searchProductsByCompleteTerm(
  //   searchTerm: "غساله بيكو",
  //   orderBy: WooSortOrderBy.title, // Better for search results
  // );
  // print(
  //     "Found ${productsByCompleteTerm.length} products using searchProductsByCompleteTerm method");

  // var user = await flutterWoocommerce.getUserInfo("srag.sabry@gmail.com");
  // await Future.delayed(Duration(seconds: 1));
  // user?.firstName = "Serag ";
  // user?.password = "Srag123";

  // var newUser = await flutterWoocommerce.updateCustomer(user!);
  // var order = await flutterWoocommerce.getOrder(id: 425731);

  // dPrint(order.status?.name.toString() ?? '');

  // order.status = WooOrderStatus.underReview;
  // await flutterWoocommerce.updateOrder(order: order);
}
