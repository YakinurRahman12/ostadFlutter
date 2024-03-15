void main() {
  /// kept dynamic cause there is a double value.
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.50},
    {"name": "Banana", "color": "Yellow", "price": 1.50},
    {"name": "Orange", "color": "Orange", "price": 3.00}
  ];
  double discountPercentage = 10;
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);
  print(
      "Fruit Details After Applying ${discountPercentage.toInt()}% Discount:");
  applyPriceDiscount(fruits, discountPercentage);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var each_fruit in fruits) {
    print(
        "Name: ${each_fruit["name"]}, Color: ${each_fruit["color"]}, Price: \$${each_fruit["price"]}");
  }
}

void applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  double discountFactor = (100 - discountPercentage) / 100;
  for (var fruit in fruits) {
    fruit["price"] *= discountFactor;
  }
  displayFruitDetails(fruits);
}
