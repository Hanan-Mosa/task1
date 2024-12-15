import 'dart:io';

void main() {
  final taxes = 0.1;
  List<double> itemsPrice = [];
  Map<String, double> groceryItems = {};
  double totalCost = 0;
  for (int i = 0; i < 5; i++) {
    print('Please,Enter groceryItem & its price');
    String nameItem = stdin.readLineSync()!;
    double priceItem = double.parse(stdin.readLineSync()!);
    groceryItems.addAll({nameItem: priceItem});
    itemsPrice.add(priceItem);
    totalCost += priceItem;
  }
  double totalCostAfterTaxes = totalCost + taxes;
  print('Total Cost of grocery : $totalCost\n'
      'Total Cost of grocery After Adding Taxes : $totalCostAfterTaxes');
}
