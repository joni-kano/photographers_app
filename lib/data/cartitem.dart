class CardItem{
  String imageUrl;
  String title;
  String country;
  String price;
  int ratingCount;
  double rating;

  CardItem({this.imageUrl,this.title,this.country,this.price,this.ratingCount,this.rating});
}
List<CardItem> experiences =[ 
  CardItem(
    imageUrl:"assets/bg.jpg",
    title:"Khalifa",
    country:"India",
    price:"1200",
    ratingCount: 645,
    rating: 4.99,

  ),
  CardItem(
    imageUrl:"assets/c.jpg",
    title:"Kampalresort",
    country:"Uganda",
    price:"1200",
    ratingCount: 645,
    rating: 4.99,
  ),
  CardItem(
    imageUrl:"assets/a.jpg",
    title:"Amboseli",
    country:"Tanzania",
    price:"1200",
    ratingCount: 645,
    rating: 4.99,
  ),
  CardItem(
    imageUrl:"assets/b.jpg",
    title:"MogadishReport",
    country:"Somalia",
    price:"1200",
    ratingCount: 645,
    rating: 4.99,
  )

];