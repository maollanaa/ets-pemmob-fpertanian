import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProgramStudi {
  final String nama;
  final String akreditasi;
  final String gambar;
  final String profilSingkat;
  final String visi;
  final List<String> misi;
  final List<String> profilLulusan;
  final String urlWebsite;
  final String urlDaftarDosen;

  ProgramStudi({
    required this.nama,
    required this.akreditasi,
    required this.gambar,
    required this.profilSingkat,
    required this.visi,
    required this.misi,
    required this.profilLulusan,
    required this.urlWebsite,
    required this.urlDaftarDosen,
  });
}

List<ProgramStudi> programStudiList = [
  ProgramStudi(
    nama: 'Sarjana Agroteknologi',
    akreditasi: 'Akreditasi A',
    gambar: 'S1_Agroteknologi.png',
    profilSingkat:
        'Program Studi Agroteknologi di Fakultas Pertanian, UPN "Veteran" Jawa Timur didirikan pada 17 Mei 1968 dan telah mencapai peringkat akreditasi A. Terdiri dari 3 bidang minat: Ilmu Tanah, Hama Penyakit Tanaman, dan Agronomi.',
    visi:
        'Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.',
    misi: [
      'Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja',
      'Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat',
      'Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal',
      'Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional',
      'Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi'
    ],
    profilLulusan: [
      'Ahli pertanian dataran rendah',
      'Profesional pertanian patriotik berdaya saing'
    ],
    urlWebsite: 'https://agrotek.upnjatim.ac.id/',
    urlDaftarDosen:
        'https://agrotek.upnjatim.ac.id/en/dosen-dan-tenaga-kependidikan/',
  ),
  ProgramStudi(
    nama: 'Magister Agroteknologi',
    akreditasi: 'Akreditasi Baik',
    gambar: 'S2_Agroteknologi.png',
    profilSingkat:
        'Program Studi Magister Agroteknologi di UPN "Veteran" Jawa Timur dibuka pada tahun 2017 setelah keluarnya KEPPRES No : 62/2014, memperoleh akreditasi Baik pada tahun 2020. Fasilitas yang memadai dan tenaga pengajar berkualitas, termasuk dosen tamu dan tetap.',
    visi:
        'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara',
    misi: [
      'Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara',
      'Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian',
      'Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal',
      'Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas'
    ],
    profilLulusan: [
      'Pelaku Bidang Pertanian',
      'Manajer/Pemimpin di bidang Pertanian',
      'Pendidik dan Fasiliator Pertanian',
      'Peneliti Agroteknologi',
      'Konsultan Pertanian'
    ],
    urlWebsite: 'https://magrotek.upnjatim.ac.id/',
    urlDaftarDosen:
        'https://magrotek.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/',
  ),
  ProgramStudi(
    nama: 'Sarjana Agribisnis',
    akreditasi: 'Akreditasi Unggul',
    gambar: 'S1_Agribisnis.png',
    profilSingkat:
        'Program Studi Sarjana Agribisnis di Fakultas Pertanian UPN "Veteran" Jawa Timur telah mengalami transformasi sejak 1994, memperoleh akreditasi A pada tahun 2015. Setelah perubahan status menjadi Perguruan Tinggi Negeri pada tahun 2014, program ini terus berkembang dengan tambahan Program Magister dan Doktor Agribisnis.',
    visi:
        'Terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
    misi: [
      'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.',
      'Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan menajerial di bidang agribisnis.',
      'Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.'
    ],
    profilLulusan: [
      'Wirausaha Mandiri Berbasis Digital',
      'Manajer Professional',
      'Penyuluh Pertanian',
      'Birokrat atau ASN'
    ],
    urlWebsite: 'https://agribis.upnjatim.ac.id/',
    urlDaftarDosen: 'https://agribis.upnjatim.ac.id/pengajar/',
  ),
  ProgramStudi(
    nama: 'Magister Agribisnis',
    akreditasi: 'Akreditasi Unggul',
    gambar: 'S2_Agribisnis.png',
    profilSingkat:
        'Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999).',
    visi:
        'Menjadi Program Studi Magister Agribisnis yang Ungguk dan Berkarakter Bela Negara',
    misi: [
      'Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/ mengisi peluang kerja dalam bidang agribisnis',
      'Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berdaya guna untuk kesejahteraan masyarakat',
      'Menyelenggarakan pengabdian kepada masyarakat berbasis riset di bidang agribisnis dan kearifan lokal.'
    ],
    profilLulusan: [
      'Pengusaha Agribisnis',
      'Manajer Professional Agribisnis',
      'Konsultan Bidang Agribisnis',
      'Peneliti Bidang Agribisnis',
      'Pendidik Bidang Agribisnis',
      'Aparatur Sipil Negara'
    ],
    urlWebsite: 'https://magri.upnjatim.ac.id/',
    urlDaftarDosen:
        'https://magri.upnjatim.ac.id/dosen-dan-tenaga-kependidikan/',
  ),
  ProgramStudi(
    nama: 'Doktor Agribisnis',
    akreditasi: 'Akreditasi Baik',
    gambar: 'S3_Agribisnis.png',
    profilSingkat:
        'Program Studi Doktor Agribisnis UPN “Veteran” Jawa Timur merupakan program studi doktor agribisnis pertama dan satu-satunya di Surabaya.',
    visi:
        'Menjadi Program Studi Doktor Agribisnis yang Unggul dan Berkarakter Bela Negara serta Terwujudnya Fokus pada Agripreneurship Digital untuk Menghasilkan Sumber Daya Manusia Profesional.',
    misi: [
      'Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/ mengisi peluang kerja dalam bidang agribisnis',
      'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.',
      'Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis baik dalam dan luar negeri.'
    ],
    profilLulusan: [
      'Tenaga Pendidik (dosen) pada program Sarjana dan Pascasarjana',
      'Konsultan Ahli/Staf Ahli terutama pada bidang agribisnis',
      'Pengelola Riset dan Pengembangan (R & D) terutama pada lembaga penelitian atau perusahaan agribisnis.',
      'Ahli Perencanaan strategis bidang Pertanian dan Agribisnis pada Badan Perencanaan Daerah (BAPEDA) maupun Nasional (BAPENAS) di Instansi Pemerintah maupun perusahaan di tingkat corporate maupun Holding company.'
    ],
    urlWebsite: 'https://dokgri.upnjatim.ac.id/',
    urlDaftarDosen: 'https://dokgri.upnjatim.ac.id/#edu-team-section',
  ),
];

class DetailProgramStudi extends StatefulWidget {
  final ProgramStudi programStudi;

  DetailProgramStudi({required this.programStudi});

  @override
  _DetailProgramStudiState createState() => _DetailProgramStudiState();
}

class _DetailProgramStudiState extends State<DetailProgramStudi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Prodi ${widget.programStudi.nama}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 12.0),
                    child: Image.asset(
                      widget.programStudi.gambar,
                      width: 160,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 24.0, top: 24.0, bottom: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.programStudi.nama,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            widget.programStudi.akreditasi,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              launchUrl(
                                  Uri.parse(widget.programStudi.urlWebsite));
                            },
                            child: Container(
                              width: 200,
                              child: Text(
                                'Website ${widget.programStudi.nama}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(8.0),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profil Singkat',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          widget.programStudi.profilSingkat,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Visi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          widget.programStudi.visi,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Misi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: widget.programStudi.misi
                                .map((lulusan) => Text(
                                      '$lulusan\n',
                                      textAlign: TextAlign.justify,
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profil Lulusan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: widget.programStudi.profilLulusan
                                .map((lulusan) => Text('- $lulusan'))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dosen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        InkWell(
                          onTap: () {
                            launchUrl(
                                Uri.parse(widget.programStudi.urlDaftarDosen));
                          },
                          child: Text(
                            'Daftar Dosen ${widget.programStudi.nama}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
