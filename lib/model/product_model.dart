class Product {
  String? id;
  String? name;
  String? content;
  List<String>? imgUrls;
  String? price;
  String? category;


  Product({this.id, this.name, this.content, this.imgUrls, this.category, this.price});

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json["name"],
        content = json['content'],
        price = json['price'],
        category = json["category"],
        imgUrls = json['imgUrls'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name' : name,
    'content': content,
    'imgUrls': imgUrls,
    'category' : category,
    'price': price,
  };
}