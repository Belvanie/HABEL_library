class Livres{
  String bgImage = '';
  String icon = '';
  String name = '';
  String type = '';
  String resume = '';
  num score = 0;
  num lu = 0;
  String auteur = '';
  List<String> livreSimilaire = [];

  Livres(
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.resume,
    this.score,
    this.lu,
    this.auteur,
    this.livreSimilaire,
  );
  
  static List<Livres> livres(){
    return[
      Livres(
          'images/livre7.jpeg',
          'images/avatar.jpg',
          'My first reader',
          'Amour',
          'It talks about the way i did to create my application.',
          4,
          123,
          'Author 1',
          [
            'images/livre2.jpeg',
            'images/livre4.jpeg',
            'images/livre6.jpeg',
          ],
      ),
      Livres(
        'images/livre9.jpeg',
        'images/avatar.jpg',
        'My second reader',
        'Romans',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
      Livres(
        'images/livre5.jpeg',
        'images/avatar.jpg',
        'My third reader',
        'Animes',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
      Livres(
        'images/livre8.jpeg',
        'images/avatar.jpg',
        'My fourth reader',
        'Poesie',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
      Livres(
        'images/livre7.jpeg',
        'images/avatar.jpg',
        'My fith reader',
        'Histoire',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
      Livres(
        'images/livre9.jpeg',
        'images/avatar.jpg',
        'My sixth reader',
        'Theatre',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
      Livres(
        'images/livre5.jpeg',
        'images/avatar.jpg',
        'My seventh reader',
        'Journaux',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
      Livres(
        'images/livre8.jpeg',
        'images/avatar.jpg',
        'My heigth reader',
        'Mangas',
        'It talks about the way i did to create my application.',
        4,
        123,
        'Author 1',
        [
          'images/livre2.jpeg',
          'images/livre4.jpeg',
          'images/livre6.jpeg',
        ],
      ),
    ];
  }
}