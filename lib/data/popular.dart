class Category2{
  String imageurl;
  String categorytitle;
  String place; 
  double rating;
  Category2({this.imageurl, this.categorytitle, this.place,this.rating});
}
List<Category2>categories2= [
  Category2(
    imageurl: "assets/a.jpg",
    categorytitle: "birthday",
    place: "nakuru",
    rating: 4.9,

  ),
  Category2(
    imageurl: "assets/b.jpg",
    categorytitle: "wedding",
    place: "mombasa",
    rating: 5.0,
  ),
  Category2(
    imageurl: "assets/c.jpg",
    categorytitle: "Adventures",
    place: "eldoret",
    rating: 3.5,
  ),
];