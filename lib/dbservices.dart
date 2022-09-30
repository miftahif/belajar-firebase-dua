//import 'dart:ffi';

import 'package:belajar_firebase_dua/dataclass.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference tblCatatan =
    FirebaseFirestore.instance.collection("tabelCatatan");

//Menampilkan data dari data base
class Database {
  static Stream<QuerySnapshot> getData(String judul) {
    //Menampilkan semua data dari data base
    if (judul == "")
      return tblCatatan.snapshots();
    //Menampilkan data yang di cari dari data base berdasarkan judul /  id
    else
      return tblCatatan
          // .where("judulCat",isEqualTo: judul)
          .orderBy("judulCat")
          .startAt([judul]).endAt([judul + '\uf8ff']).snapshots();
  }

  //Perintah tambambah data
  static Future<void> tambahData({required itemCatatan item}) async {
    DocumentReference docRef = tblCatatan.doc(item.itemJudul);
    await docRef
        .set(item.toJson())
        .whenComplete(() => print("data berhasil diinput"))
        .catchError((e) => print(e));
  }

  //Perintah ubah data
  static Future<void> ubahData({required itemCatatan item}) async {
    DocumentReference docRef = tblCatatan.doc(item.itemJudul);
    await docRef
        .update(item.toJson())
        .whenComplete(() => print("data berhasil di ubah"))
        .catchError((e) => print(e));
  }

  //Hapus data
  static Future<void> hapusData({required String judulhapus}) async {
    DocumentReference docRef = tblCatatan.doc(judulhapus);
    await docRef
        .delete()
        .whenComplete(() => print("data berhasil di hapus"))
        .catchError((e) => print(e));
  }
}
