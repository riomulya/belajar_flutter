import 'package:flutter/material.dart';

class Layouting extends StatefulWidget {
  const Layouting({super.key});

  @override
  __Layouting createState() => __Layouting();
}

class __Layouting extends State<Layouting> {
  List<Widget> widgets = [];
  int counter = 1; // Deklarasikan dan inisialisasikan counter

  @override
  void initState() {
    super.initState();
    // Pindahkan logika inisialisasi widget ke sini
    widgets.add(Container(
      color: Colors.blue.shade500,
      width: 150,
      height: 200,
      margin: const EdgeInsets.all(20),
      child: const Center(
        child: Text("Rio Mulya Syawal"),
      ),
    ));
    widgets.add(Container(
      color: Colors.grey.shade500,
      width: 150,
      height: 200,
      margin: const EdgeInsets.all(20),
      child: const Center(
        child: Text("Bayu Nurwidiantoro"),
      ),
    ));
    widgets.add(
      Container(
        color: Colors.orange.shade500,
        width: 150,
        height: 200,
        margin: const EdgeInsets.all(20),
        child: const Center(
          child: Text("Devinta Amalia"),
        ),
      ),
    );
    widgets.add(
      Container(
        color: Colors.pink.shade500,
        width: 150,
        height: 200,
        margin: const EdgeInsets.all(20),
        child: const Center(
          child: Text("M. Rasyid"),
        ),
      ),
    );
    widgets.add(
      Container(
        color: Colors.green.shade500,
        width: 150,
        height: 200,
        margin: const EdgeInsets.all(20),
        child: const Center(
          child: Text("Itmamul Wafa"),
        ),
      ),
    );
    widgets.add(
      Container(
        color: Colors.yellow.shade500,
        width: 150,
        height: 200,
        margin: const EdgeInsets.all(20),
        child: const Center(
          child: Text("Saskia Z.U"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layouting : Kelompok 2"),
      ),
      body: ListView(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Tambah Data"),
              onPressed: () {
                setState(() {
                  widgets.add(
                    Container(
                      color: Colors.yellow.shade500,
                      width: 150,
                      height: 200,
                      margin: const EdgeInsets.all(20),
                      child: Center(
                        child: Text("Data ke - $counter"),
                      ),
                    ),
                  );
                  counter++;
                });
              },
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widgets,
        )
      ]),
    );
  }
}
