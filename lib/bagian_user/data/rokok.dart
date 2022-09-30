class Rokok {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Rokok({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Rokok> listRokok = [
  Rokok(
    id: 1,
    name: 'Gudang Garam Filter',
    price: '22.000',
    imageUrl: 'assets/rokok/garpit.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Rokok(
    id: 2,
    name: 'Djarum Super',
    price: '22.000',
    imageUrl: 'assets/rokok/super.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Rokok(
    id: 3,
    name: 'Sampoerna Mild',
    price: '25.000',
    imageUrl: 'assets/rokok/mild.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Rokok(
    id: 4,
    name: 'LA Bold',
    price: '25.000',
    imageUrl: 'assets/rokok/labold.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Rokok(
    id: 5,
    name: 'Signature',
    price: '20.000',
    imageUrl: 'assets/rokok/signatur.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Rokok(
    id: 6,
    name: 'LA Light',
    price: '25.000',
    imageUrl: 'assets/rokok/lalight.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
];
