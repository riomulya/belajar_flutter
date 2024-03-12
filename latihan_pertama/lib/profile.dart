import 'package:flutter/material.dart';

// Deklarasi kelas ProfilKelompok
class ProfilKelompok {
  final String nama;
  final String foto;

  ProfilKelompok({required this.nama, required this.foto});
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  __ProfileState createState() => __ProfileState();
}

class __ProfileState extends State<Profile> {
  List<ProfilKelompok> kelompok = [
    ProfilKelompok(
        nama: "Rio Mulya Syawal",
        foto: "https://source.unsplash.com/random/?male"),
    ProfilKelompok(
        nama: "Bayu Nurwidiantoro",
        foto: "https://source.unsplash.com/random/?male,indonesian"),
    ProfilKelompok(
        nama: "Itmamul Wafa",
        foto: "https://source.unsplash.com/random/?male,malaysian"),
    ProfilKelompok(
        nama: "M Rasyid",
        foto: "https://source.unsplash.com/random/?male,javanesian"),
    ProfilKelompok(
        nama: "Devinta Amalia",
        foto: "https://source.unsplash.com/random/?female"),
    ProfilKelompok(
        nama: "Saskia Z.U",
        foto: "https://source.unsplash.com/random/?female,person"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: const Text("Profile : Kelompok 2",),
      ),
      body: ListView.builder(
        itemCount: kelompok.length,
        itemBuilder: (context, index) {
          return Card(
              color: Colors.grey.shade100,
              margin: const EdgeInsets.all(15),
              child: ListTile(
                title: Text(kelompok[index].nama),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(kelompok[index].foto),
                ),
              ));
        },
      ),
    );
  }
}
