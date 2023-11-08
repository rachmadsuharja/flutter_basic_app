import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Rachsoe', style: TextStyle(color: Colors.blueAccent)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.blueAccent,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/default.jpg'),
            ),
          )
        ],
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(children: [
            const SizedBox(height: 30),
            Text(
              'Hai, Harja!',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Text(
                'Apakah Anda sedang mencari sesuatu? Tenang saja, Kami telah menyediakan berbagai kebutuhan sehari-hari untuk Anda',
                style: TextStyle(
                  color: Colors.white70,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
          ]),
        ),
        Transform.translate(
          offset: const Offset(0, -70),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 5),
              ],
            ),
            child: Row(
              children: [
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Apa yang sedang anda cari?',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
