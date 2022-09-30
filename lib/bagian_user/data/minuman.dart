class Minuman {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Minuman({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Minuman> listMinuman = [
  Minuman(
    id: 1,
    name: 'Aqua',
    price: '3.000',
    imageUrl: 'assets/minuman/aqua.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Minuman(
    id: 2,
    name: 'Teh Pucuk',
    price: '2.000',
    imageUrl: 'assets/minuman/tehpucuk.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Minuman(
    id: 3,
    name: 'Ale-ale',
    price: '500',
    imageUrl: 'assets/minuman/ale-ale.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Minuman(
    id: 4,
    name: 'Sprit',
    price: '3.000',
    imageUrl: 'assets/minuman/sprit.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Minuman(
    id: 5,
    name: 'Fanta',
    price: '3.000',
    imageUrl: 'assets/minuman/fanta.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Minuman(
    id: 6,
    name: 'Teh Gelas',
    price: '500',
    imageUrl: 'assets/minuman/tehgelas.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
];
