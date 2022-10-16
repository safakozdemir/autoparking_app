import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  String emptyOrFilled = 'Filled';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Center(
            child: Text('Places',
                style: TextStyle(fontSize: 20, color: Colors.black))),
      ),
      body: Container(
        color: Colors.amberAccent[100],
        child: ListView(
          children: [
            const SizedBox(height: 5, width: 5),
            Card(
              elevation: 10,
              child: ListTile(
                iconColor: Colors.amber,
                leading: const Icon(Icons.local_parking_rounded, size: 45),
                title: const Text('Muğla Sıtkı Koçman Otopark Alanı'),
                subtitle: Text(
                  'Maximum park kapasitesi 6',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  size: 40,
                ),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                iconColor: Colors.amber,
                leading: const Icon(Icons.local_parking_rounded, size: 45),
                title: const Text('Muğla RüyaPark AVM Otopark Alanı'),
                subtitle: Text(
                  'Maximum park kapasitesi 6',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  size: 40,
                ),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                iconColor: Colors.amber,
                leading: const Icon(Icons.local_parking_rounded, size: 45),
                title: const Text('Muğla Menteşe Meydan Otopark Alanı'),
                subtitle: Text(
                  'Maximum park kapasitesi 6',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  size: 40,
                ),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                iconColor: Colors.amber,
                leading: const Icon(Icons.local_parking_rounded, size: 45),
                title:
                    const Text('Muğla Menteşe Devlet Hastanesi Otopark Alanı'),
                subtitle: Text(
                  'Maximum park kapasitesi 6',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  size: 40,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
