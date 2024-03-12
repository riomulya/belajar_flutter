import 'package:flutter/material.dart';

class ProfilKelompok {
  final String nama;
  final String foto;
  final String gender;

  ProfilKelompok({
    required this.nama,
    required this.foto,
    required this.gender,
  });
}

class ProfileSpacing extends StatefulWidget {
  const ProfileSpacing({Key? key}) : super(key: key);

  @override
  __ProfileSpacingState createState() => __ProfileSpacingState();
}

class __ProfileSpacingState extends State<ProfileSpacing> {
  List<ProfilKelompok> kelompok = [
    ProfilKelompok(
      nama: "ListView Separated",
      foto: "https://source.unsplash.com/random/?syntax",
      gender: "flag",
    ),
    ProfilKelompok(
      nama: "Rio Mulya Syawal",
      foto: "https://source.unsplash.com/random/?male",
      gender: "male",
    ),
    ProfilKelompok(
      nama: "Bayu Nurwidiantoro",
      foto: "https://source.unsplash.com/random/?male,indonesian",
      gender: "male",
    ),
    ProfilKelompok(
      nama: "Itmamul Wafa",
      foto: "https://source.unsplash.com/random/?male,malaysian",
      gender: "male",
    ),
    ProfilKelompok(
      nama: "M Rasyid",
      foto: "https://source.unsplash.com/random/?male,javanesian",
      gender: "male",
    ),
    ProfilKelompok(
      nama: "Devinta Amalia",
      foto: "https://source.unsplash.com/random/?female",
      gender: "female",
    ),
    ProfilKelompok(
      nama: "Saskia Z.U",
      foto: "https://source.unsplash.com/random/?female,person",
      gender: "female",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: const Text(
          "ProfileSpacing : Kelompok 2",
        ),
      ),
      body: ListView.separated(
        itemCount: kelompok.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(kelompok[index].nama),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(kelompok[index].foto),
            ),
          );
        },
        separatorBuilder: (context, index) {
          if (index == 0) {
            return const ListTile(
              title: Text(
                "Anggota Laki - Laki",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            );
          } else if (index == 4) {
            return const ListTile(
              title: Text(
                "Anggota Perempuan",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
