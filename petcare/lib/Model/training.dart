// class TrainingModel {
//   static final itmes = [
//     // Item(
//     //   image : ,"Assets/Training/image2.png","Assets/Training/image3.png","Assets/Training/image4.png","Assets/Training/image5.png",
//     //   Title : ,"Puppy Kinderganten and Playgroups","Canine Good Citizen Test","Theraphy Dogs",
//     //   authorname : ,"By Duke Fuzzington","By Sir Fluffington","By Baron Fuzzypaws",
//     //   rating = ,5.0,5.0,4.8,5.0,

//     // ),
//   ];
// }

List<Item> itemModel = [
  Item(
      image: "Assets/Training/image1.png",
      Title: "Obedience Courses",
      authorname: "By Jhon Smith",
      rating: 4.8),
  Item(
      image: "Assets/Training/image2.png",
      Title: "Specialty Classes & Workshops",
      authorname: "By Duke Fuzzington",
      rating: 5.0),
  Item(
      image: "Assets/Training/image5.png",
      Title: "Puppy Kinderganten and Playgroups",
      authorname: "By Sir Fluffington",
      rating: 5.0),
  Item(
      image: "Assets/Training/image3.png",
      Title: "Canine Good Citizen Test",
      authorname: "By Sir Fluffington",
      rating: 5.0),
  Item(
      image: "Assets/Training/image4.png",
      Title: "Theraphy Dogs",
      authorname: "By Baron Fuzzypaws",
      rating: 4.8),
];

class Item {
  final String image;
  final String Title;
  final String authorname;
  final num rating;

  Item(
      {required this.image,
      required this.Title,
      required this.authorname,
      required this.rating});
}
