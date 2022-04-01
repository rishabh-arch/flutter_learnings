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
}

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Dog Meme",
        price: 999,
        desc: "Funnnny",
        color: "#3305a",
        image:
            "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbreakforbuzz.com%2Fwp-content%2Fuploads%2F2019%2F02%2FImage-dr%25C3%25B4le-du-jour-Mais-non-tes-pas-gros%25E2%2580%25A6.png&f=1&nofb=1"), Item(
        id: 2,
        name: "Dog Meme",
        price: 899,
        desc: "Funnnny",
        color: "#3305a",
        image:
            "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbreakforbuzz.com%2Fwp-content%2Fuploads%2F2019%2F02%2FImage-dr%25C3%25B4le-du-jour-Mais-non-tes-pas-gros%25E2%2580%25A6.png&f=1&nofb=1"),
             Item(
        id: 3,
        name: "Dog Meme",
        price: 799,
        desc: "Funnnny",
        color: "#3305a",
        image:
            "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fbreakforbuzz.com%2Fwp-content%2Fuploads%2F2019%2F02%2FImage-dr%25C3%25B4le-du-jour-Mais-non-tes-pas-gros%25E2%2580%25A6.png&f=1&nofb=1")
  ];
}
