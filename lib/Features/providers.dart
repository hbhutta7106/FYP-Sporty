import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fyp/Features/Advertisement/ads_notifire.dart';
import 'package:fyp/Features/Authentication/auth_controller.dart';
import 'package:fyp/Features/Authentication/auth_service.dart';
import 'package:fyp/Features/Orders/order_notifier.dart';
import 'package:fyp/Features/Product/cart_provider.dart';
import 'package:fyp/Features/Product/product_provider.dart';
import 'package:fyp/Features/Users/Customer/customer_notifier.dart';
import 'package:fyp/Features/Users/Seller/seller_notifier.dart';
import 'package:fyp/Models/advertisemnet.dart';
import 'package:fyp/Models/cart_model.dart';
import 'package:fyp/Models/customer_model.dart';
import 'package:fyp/Models/order_model.dart';
import 'package:fyp/Models/seller_model.dart';

import '../Models/product_model.dart';
import 'Orders/seller_order_notifier.dart';

// These provider will Work for the Authentication and Authorization
final authControllerProvider = StateProvider((ref) {
  final authRepo = ref.watch(authServicesProvider);
  return AuthenticationController(authRepo);
});

final authServicesProvider = StateProvider((ref) {
  return AuthServices();
});

// Here will be the Customer Provider
final customerProvider =
    StateNotifierProvider<CustomerNotifier, CustomerModel>((ref) {
  return CustomerNotifier();
});
// Implementtionof the Seller Provider
final sellerProvider =
    StateNotifierProvider<SellerNotifier, SellerModel>((ref) {
  return SellerNotifier();
});

final productProvider =
    StateNotifierProvider<ProductNotifier, List<Products>>((ref) {
  List<Products> prod = [];
  return ProductNotifier(prod);
});

final adProvider =
    StateNotifierProvider<AdsNotifier, List<Advertisements>>((ref) {
  List<Advertisements> ads = [];
  return AdsNotifier(ads);
});

final cartProvider =
    StateNotifierProvider<CartNotifier, List<CartModel>>((ref) {
  List<CartModel> list = [];
  return CartNotifier(list);
});

final orderProvider = StateNotifierProvider((ref) {
  List<OrderModel> orders = [];
  return Order(orders);
});

final sellerOrderProvider = StateNotifierProvider<SellerOrder,List<OrderModel>>((ref) {
  return SellerOrder();
});
