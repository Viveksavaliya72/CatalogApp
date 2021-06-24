import 'package:catalogapp/core/store.dart';
import 'package:catalogapp/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartMode {
//catalog field
  late CatalogModel _catalog;

//Collection Of Ids: Store Ids of each item
  final List<int> _itemIds = [];
// Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // Get Items In The Cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Total Price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  late final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  late final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
