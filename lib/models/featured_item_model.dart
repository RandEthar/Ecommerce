
class FeaturedItemModel {
  final String image;
    final String title;

  FeaturedItemModel({required this.image, required this.title});
    
}


List<FeaturedItemModel > listFeaturedItemModel =[
FeaturedItemModel(image:"assets/images/Beauty.png", title:"Beauty"),
FeaturedItemModel(image:"assets/images/Fashion.png", title:"Fashion"),
FeaturedItemModel(image: "assets/images/Kids.png", title:"Kids"),
FeaturedItemModel(image: "assets/images/Mens.png", title:"Mens"),
FeaturedItemModel(image: "assets/images/Womens.png", title:"Womens")
];