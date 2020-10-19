import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Map<String, String> names = {
    '01': 'tempat pemakaman pasien',
    '02': 'tempat pasien dirawat',
    '03': 'virus',
    '04': 'dokter tirta',
    '05': 'desinfektan',
    '06': 'ambulance',
    '07': 'daftar rumah sakit',
    '08': 'pencegahan',
    '09': 'virus lagi',
    '10': 'wisma atlet'
  };
  Map<String, String> desc = {
    '01': ''' tempat pemakaman pasien gejala covid  ''',
    '02': ''' kondisi ruangan tempat dari pasien covid  ''',
    '03': '''  ''',
    '04': ''' argumen dokter tirta tentang melawan corona ''',
    '05': ''' penyemprotan secara bertahap pada setiap tempat ''',
    '06': ''' ambulance yang selalu siap membawa pasien covid ''',
    '07': ''' okupansi ruang perawatan pasien covid ''',
    '08': ''' langkah langkah mencegah virus covid ''',
    '09': '''  ''',
    '10': ''' tempat karantina pasien positif covid '''
  };

  final String value;
  // konstruktor
  ContentPage({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/${this.value}.jpg',
              fit: BoxFit.fill,
            ),
            Container(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 15.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[this.value],
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
                      Text(
                        'Tangerang, Banten',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                    ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc[this.value],
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
