class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "Gram Chetan Kendra",
        desc: "NGO",
        color: "#ffffff",
        image: "saviour/images/Gram Chetna Kendra.png"),
    Item(
        id: 2,
        name: "JanMitram",
        desc: "NGO",
        color: "#33505a",
        image: "images/JanMitram.png"),
    Item(
        id: 3,
        name: "Sanklpa Taru",
        desc: "NGO",
        color: "#ffffff",
        image: "images/SankalpTaru.png"),
    Item(
        id: 4,
        name: "Tropical Research and Development",
        desc: "NGO",
        color: "#ffffff",
        image: "images/Tropical Research and Development Centre.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.image});
}
