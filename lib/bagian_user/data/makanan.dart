class Makanan {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Makanan({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Makanan> listMakanan = [
  Makanan(
    id: 1,
    name: 'Banana Cake',
    price: '79.000',
    imageUrl: 'assets/makanan/box1.jpeg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Makanan(
    id: 2,
    name: 'Bolu Gula Aren',
    price: '94.000',
    imageUrl: 'assets/makanan/box2.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Makanan(
    id: 5,
    name: 'Brownies Keju',
    price: '104.000',
    imageUrl: 'assets/makanan/box5.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Makanan(
    id: 6,
    name: 'Brownies Almond',
    price: '94.000',
    imageUrl: 'assets/makanan/box6.jpeg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Makanan(
    id: 3,
    name: 'Coffee Cake Pudding',
    price: '99.000',
    imageUrl: 'assets/makanan/box3.jpeg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Makanan(
    id: 4,
    name: 'Puding Cake Tiramisu',
    price: '99.000',
    imageUrl: 'assets/makanan/box4.jpeg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
];
