import 'dart:convert';

// Fungsi decode list JSON → list productEntry
List<productEntry> productEntryFromJson(String str) =>
    List<productEntry>.from(json.decode(str).map((x) => productEntry.fromJson(x)));

// Fungsi encode list → JSON string
String productEntryToJson(List<productEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class productEntry {
  String id;
  String name;
  int price;
  String description;
  String? thumbnail;
  String category;
  bool isFeatured;
  int stock;
  bool isOfficialMerch;
  String size;
  bool isSigned;
  int? user;  
  bool isLowStock;  

  productEntry({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.category,
    required this.isFeatured,
    required this.stock,
    required this.isOfficialMerch,
    required this.size,
    required this.isSigned,
    required this.user,
    required this.isLowStock,
  });

  factory productEntry.fromJson(Map<String, dynamic> json) => productEntry(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        isFeatured: json["is_featured"],
        stock: json["stock"],
        isOfficialMerch: json["is_official_merch"],
        size: json["size"],
        isSigned: json["is_signed"],
        user: json["user"],
        isLowStock: json["is_low_stock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "thumbnail": thumbnail,
        "category": category,
        "is_featured": isFeatured,
        "stock": stock,
        "is_official_merch": isOfficialMerch,
        "size": size,
        "is_signed": isSigned,
        "user": user,
        "is_low_stock": isLowStock,
      };
}
