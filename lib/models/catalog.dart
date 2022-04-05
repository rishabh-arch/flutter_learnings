class Item {
  final int id;
  final String name;
  final num price;
  final String desc;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.desc,
      required this.color,
      required this.image});

  Item.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        price = json['price'],
        desc = json['desc'],
        color = json['color'],
        image = json['image'];
  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "desc": desc,
        "color": color,
        "image": image
      };
}

class CatalogModel {
  static final catModel = CatalogModel._internal();

CatalogModel._internal();

factory CatalogModel() => catModel;

  static List<Item> items = [];

//Get Item by Id
   Item getItemById(int id) {
    return items.firstWhere((item) => item.id == id);
  }
//Get Item by Postion
   Item getItemByPosition(int position) {
    return items[position];
  }



}
