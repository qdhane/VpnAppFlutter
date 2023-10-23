import 'countries_server_models.dart';

class CountriesItem {
  int quantity;
  final Countries? product;

  CountriesItem({this.quantity = 1, required this.product});

  void increment() {
    quantity++;
  }
}