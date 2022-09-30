import 'package:belajar_firebase_dua/bagian_user/screen/kebersihan/kebersihan_page.dart';

class itemCatatan {
  final String itemJudul;
  final String itemIsi;

  itemCatatan({required this.itemJudul, required this.itemIsi});

  Map<String, dynamic> toJson() {
    return {"judulCat": itemJudul, "isiCat": itemIsi};
  }

  factory itemCatatan.fromJson(Map<String, dynamic> json) {
    return itemCatatan(itemJudul: json['judulCat'], itemIsi: json['isiCat']);
  }
}
