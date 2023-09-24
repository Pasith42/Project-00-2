import 'package:app002/SHOPPING_LIST_APP/model/category.dart';
import 'package:app002/SHOPPING_LIST_APP/model/grocery_item.dart';
import 'package:app002/SHOPPING_LIST_APP/data/categories.dart';

final groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categories.dairy]!),
  GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categories.fruit]!),
  GroceryItem(
      id: 'c',
      name: 'Beef Steak',
      quantity: 1,
      category: categories[Categories.meat]!),
];