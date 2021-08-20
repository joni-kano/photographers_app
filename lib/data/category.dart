class Category{
  String imageurl;
  String categoryName;
  Category({this.imageurl, this.categoryName});
}
List<Category>categories = [
  Category(
    imageurl: "assets/a.jpg",
    categoryName: "birthday"
  ),
  Category(
    imageurl: "assets/b.jpg",
    categoryName: "wedding"
  ),
  Category(
    imageurl: "assets/c.jpg",
    categoryName: "Adventures"
  ),
];