import 'package:flutter/material.dart';

class NewsFragment extends StatelessWidget {
  const NewsFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NEWS TODAY'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildNewsItem(
              context,
              'https://awsimages.detik.net.id/community/media/visual/2020/01/16/43bbf8f7-05cb-4361-8c0c-ecb0d02382e2.jpeg?w=750&q=90',
              'Kucing',
              'Kucing merupakan salah satu hewan peliharaan yang paling digemari oleh masyarakat dari kalangan manapun. Peliharaan dengan julukan Anabul yang merupakan singkatan dari Anak Bulu ini sering kali bertingkah lucu dan membuat yang melihatnya menjadi tertawa sendiri. Meskipun banyak yang mengunggah gambar kucing lucu di internet, setiap unggahan akan selalu menjadi sorotan. Hal ini karena semua penggemar kucing tidak akan pernah merasa bosan dengan berbagai tingkah lakunya yang sering dianggap unik dan malah membuat mereka terlihat semakin imut.',
            ),
            _buildNewsItem(
              context,
              'https://www.shutterstock.com/image-photo/close-photo-asian-palm-civet-260nw-2120793173.jpg',
              'Musang',
              'Jenis musang paling mahal perlu kamu kenali agar tidak salah membeli. Walaupun banyak orang yang menganggap musang merupakan binatang liar yang kadang mengganggu, tidak sedikit juga yang telah memelihara dan menjinakkannya.',
            ),
            _buildNewsItem(
              context,
              'https://awsimages.detik.net.id/community/media/visual/2021/09/11/burung-gereja-atau-passer-montanus-malaccensis-lip-keecc-by-savia-eolorg_169.jpeg?w=700&q=90',
              'Burung',
              'Burung adalah anggota kelompok hewan bertulang belakang yang memiliki bulu dan sayap. Jenis-jenis burung begitu bervariasi, mulai dari burung kolibri yang kecil dan dapat mengepakkan sayap dengan sangat cepat, penguin yang menyelam dengan sayapnya, hingga burung unta, yang lebih tinggi dari manusia.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsItem(
      BuildContext context, String imageUrl, String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      content,
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
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
