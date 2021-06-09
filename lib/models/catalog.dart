class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:"https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSrcv2IRiQzpN-4rXlZ7A9waEMF3Xl0GRGnN9YegZJRdw15hLlvAQ&usqp=CAc",
        ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
