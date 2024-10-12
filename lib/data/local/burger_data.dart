class BurgerData {
  BurgerData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<BurgerData> getBurgerData = [
    BurgerData(
      name: '"Frango" Burger',
      description:
          'Məl əti, burger sousu, turşu, kahı, "Frango" sousu (seçim ilə)',
      price: '6,00 ₼',
    ),
    BurgerData(
      name: '"Frango" Çizburger',
      description:
          'Mal əti, burger sousu, çedar pendiri, turşu, kahı, "Frango" sousu (seçim ilə)',
      price: '6.56 ₼',
    ),
    BurgerData(
      name: 'Sarımsaq & Barbekyu Burgeri',
      description:
          'Mal əti, çedar pendiri, karamelizə edilmiş soğan, burger sousu, turşu, kahı, "Frango" sarımsaq & barbekyu sousu',
      price: '6,56 ₼',
    ),
    BurgerData(
      name: 'Meksikan Burger',
      description:
          'Mal əti, çedar pendiri, meksikan salsa sousu, halapenyo bibəri, kahı, "Frango" sousu (seçim ilə)',
      price: '7,36 ₼',
    ),
    BurgerData(
      name: 'Göbələkli Burger',
      description:
          'Mal əti, burger sousu, çedar pendiri, göbələk, turşu, kahı, "Frango" sousu (seçim ilə)',
      price: '7,36 ₼',
    ),
    BurgerData(
      name: '"Frango" İkili Burger Böyük',
      description:
          'İkiqat mal əti, ikiqat hisə verilmiş mal qabırğaları, ikiqat çedar pendiri, karamelizə edilmiş soğan, göbələk, burger sousu, turşu, kahı, "Frango" sousu (seçim ilə)',
      price: '11,36 ₼',
    ),
  ];
}
