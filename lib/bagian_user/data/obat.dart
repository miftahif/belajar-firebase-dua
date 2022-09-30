class Obat {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Obat({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Obat> listObat = [
  Obat(
    id: 1,
    name: 'Bodrex',
    price: '3.000',
    imageUrl: 'assets/obat/bodrex.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Obat(
    id: 2,
    name: 'Paramex',
    price: '3.000',
    imageUrl: 'assets/obat/paramex.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Obat(
    id: 3,
    name: 'Tolak Angin',
    price: '1.000',
    imageUrl: 'assets/obat/tolakangin.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Obat(
    id: 4,
    name: 'Antangin',
    price: '1.000',
    imageUrl: 'assets/obat/antangin.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Obat(
    id: 5,
    name: 'Promag',
    price: '5.000',
    imageUrl: 'assets/obat/promag.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Obat(
    id: 6,
    name: 'komix',
    price: '1.000',
    imageUrl: 'assets/obat/komix.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
];
