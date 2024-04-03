import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Penulis {
  final String namapenulis;
  final String nim;
  final String foto;
  final String ttl;
  final String alamat;
  final String noHp;
  final String email;
  final String urlGitHub;
  final List<String> riwayatPendidikan;
  final List<String> penghargaan;

  Penulis({
    required this.namapenulis,
    required this.nim,
    required this.foto,
    required this.ttl,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.urlGitHub,
    required this.riwayatPendidikan,
    required this.penghargaan,
  });
}

List<Penulis> penulisList = [
  Penulis(
    namapenulis: 'Ela Enjelya Putri',
    nim: '22082010073',
    foto: 'enjell.jpg',
    ttl: 'Jambi, 26 Juli 2004',
    alamat: 'Jambi',
    noHp: '082176999604',
    email: '22082010072@student.upnjatim.ac.id',
    urlGitHub: 'https://github.com/ElaEnjelya',
    riwayatPendidikan: [
      'SD 145/VIII Teluk Kuali',
      'MTS Diniyyah Al-Azhar M.Bungo',
      'SMAN 1 Tebo',
    ],
    penghargaan: [
      'Juara 1 Lomba Karya Tulis Ilmiah Tingkat Nasional',
      'Finalis Kompetisi Coding Nasional',
    ],
  ),
  Penulis(
    namapenulis: 'Rakha Maulana',
    nim: '22082010077',
    foto: 'maull.jpg',
    ttl: 'Sidoarjo, 22 Januari 2004',
    alamat: 'Candi Sidoarjo',
    noHp: '085161907446',
    email: '22082010077@student.upnjatim.ac.id',
    urlGitHub: 'https://github.com/maollanaa',
    riwayatPendidikan: [
      'MI Nurul Huda Ngampelsari',
      'SMP Negeri 2 Candi',
      'SMK Negeri 2 Buduran',
    ],
    penghargaan: [
      'Peringkat 5 Kabupaten Sidoarjo OMVN',
      'Juara 2 Kabupaten Sidoarjo OSK',
      'Semifinalis UI/UX Competition X-PROJECT 9.0',
    ],
  ),
];

class ProfilPenulis extends StatelessWidget {
  final Penulis penulis;
  const ProfilPenulis({Key? key, required this.penulis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProfilPenulis(penulis: penulis),
          ),
        );
      },
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(penulis.foto),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      penulis.namapenulis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      penulis.nim,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailProfilPenulis extends StatelessWidget {
  final Penulis penulis;
  const DetailProfilPenulis({Key? key, required this.penulis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 119, 97),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(penulis.foto),
                        ),
                        SizedBox(height: 8),
                        Text(
                          penulis.namapenulis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          penulis.nim,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: penulis.ttl,
                          decoration: InputDecoration(
                            labelText: 'Tempat, Tanggal Lahir',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                          readOnly: true,
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          initialValue: penulis.alamat,
                          decoration: InputDecoration(
                            labelText: 'Alamat',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                          readOnly: true,
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          initialValue: penulis.noHp,
                          decoration: InputDecoration(
                            labelText: 'No. HP',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                          readOnly: true,
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          initialValue: penulis.email,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                          readOnly: true,
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          initialValue: penulis.urlGitHub,
                          decoration: InputDecoration(
                            labelText: 'Profil GitHub',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                          readOnly: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Riwayat Pendidikan:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  ...penulis.riwayatPendidikan.map(
                    (pendidikan) => Text('- $pendidikan'),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Penghargaan:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  ...penulis.penghargaan.map(
                    (penghargaan) => Text('- $penghargaan'),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.end,
                children: [
                  // Icon button GitHub
                  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: IconButton(
                      color: Colors.blue,
                      icon: Image.asset(
                        'github.png',
                        width: 28,
                      ),
                      onPressed: () {
                        _launchURL(penulis.urlGitHub);
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: IconButton(
                      color: Colors.blue,
                      icon: Image.asset(
                        'gmail.png',
                        width: 28,
                      ),
                      onPressed: () {
                        _launchURL('mailto:${penulis.email}');
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Fungsi untuk membuka URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
