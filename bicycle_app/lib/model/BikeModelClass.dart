class BikeModelClass {
  String img;
  String type;
  String name;
  String discription;
  String price;
  BikeModelClass(
      {required this.img,
      required this.discription,
      required this.name,
      required this.type,
      required this.price});
}

List bikes = [
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2Fbi11.png?alt=media&token=c3d753b9-ddaa-4620-8a0d-cfe7451debcf",
    "type": "Road Bike",
    "name": "Kiross",
    "price": "₹19,599",
    "dis":
        "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia. "
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2Fbi21.png?alt=media&token=6056dba6-479a-45b9-9eda-c9f3a06da892",
    "type": "Road Bike",
    "name": "GT Bike",
    "price": "₹25,599",
    "dis":
        "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia. "
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2Fb131.png?alt=media&token=8078656d-dc78-4b63-ad95-a06e68e93ed0",
    "type": "Road Bike",
    "name": "Ross",
    "price": "₹35,599",
    "dis":
        "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia. "
  },
  {
    "img":
        "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2Fbi41.png?alt=media&token=45bf2131-76d1-4165-afd9-efe05a4232e6",
    "type": "Road Bike",
    "name": "Scott",
    "price": "₹19,599",
    "dis":
        "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia. "
  },
];

class CardModel{
  String img;
  String name;
  String price;
  CardModel({required this.img, required this.name, required this.price});
}

List<CardModel> cards = [];
