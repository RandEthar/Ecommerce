enum SizeItem { S, M, L, XL, XXL }

class ProductItemModel {
  final String id;
  final String pathImage;
  final String titel;
  final String description;
  final double price;
  final int rating;
  final int discount;
  SizeItem size = SizeItem.S;

  ProductItemModel({
    required this.id,
    required this.pathImage,
    required this.titel,
    required this.price,
    required this.rating,
    required this.discount,
    required this.description,

  });

 

  ProductItemModel copyWith({
    String? id,
    String? titel,
    String? description,
    double? price,
    int? rating,
    int? discount,
    String? pathImage,

  }) {
    return ProductItemModel(
      id: id ?? this.id,
      titel: titel ?? this.titel,
      description: description ?? this.description,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      discount: discount ?? this.discount,
      pathImage: pathImage ?? this.pathImage,
     
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "pathImage": pathImage,
      "titel": titel,
      "description": description,
      "price": price,
      "rating": rating,
      "discount": discount,
   
    };
  }

  factory ProductItemModel.fromMap(Map<String, dynamic> map) {
    return ProductItemModel(
      id: map['id'] ?? "",
      pathImage: map['pathImage'] ?? "",
      titel: map['titel'] ?? "",
      description: map['description'] ?? "",
      price: map['price'] ?? 0.0,
      rating: map['rating'] ?? 0,
      discount: map['discount'] ?? 0,
   
    );
  }
}

List<ProductItemModel> listClothes = [
  ProductItemModel(
    id: 'ByJCuMHMDGEZkhSk9j7E',
    description: "Neque porro quisquam est qui\n dolorem ipsum quia",
    pathImage:
        "https://raw.githubusercontent.com/RandEthar/Ecommerce/refs/heads/main/assets/images/women_printed.png",
    titel: "Women Printed Kurta",
    price: 2499,
    rating: 56890,
    discount: 40,
  ),
  ProductItemModel(
    id: 'RV4RNydQ6TprmpjDNq8J',
    description: "Neque porro quisquam est qui\n dolorem ipsum quia",
    pathImage:
        "https://raw.githubusercontent.com/RandEthar/Ecommerce/refs/heads/main/assets/images/HRX.png",
    titel: "HRX by Hrithik Roshan",
    price: 4999,
    rating: 344567,
    discount: 50,
  ),
  ProductItemModel(
    id: 'kQcRM1kB9AGpDyB8AFN0',
    description:
        "Hair Straightening Brush With\n Keratin Infused Bristles (Black).",
    pathImage:
        "https://raw.githubusercontent.com/hashimsaffarini/Flutter_Course_Round1/refs/heads/main/ecommerce_app/assets/iv.png",
    titel: "Philips BHH880/10",
    price: 1999,
    rating: 646776,
    discount: 50,
  ),
  ProductItemModel(
    id: 'lcsSE5VlRtnFxvExwQfY',
    description:
        "This Titan watch in Black color is\n Iwanted to buy for a long time",
    pathImage:
        "https://raw.githubusercontent.com/hashimsaffarini/Flutter_Course_Round1/refs/heads/main/ecommerce_app/assets/iiv.png",
    titel: "TITAN Men Watch-1806N",
    price: 4999,
    rating: 15007,
    discount: 60,
  )
];
