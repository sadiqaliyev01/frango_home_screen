class FrangoPizzaData {
  FrangoPizzaData({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final String price;

  static List<FrangoPizzaData> getFrangoPizzaData = [
    FrangoPizzaData(
      name: 'Frango Margarita Pizza',
      description: 'Pomidor sousu və mozzarella pendiri',
      price: '11,20 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Fungi Pizza',
      description: 'Pomidor sousu, mozzarella pendiri və göbələk',
      price: '11,20 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Toyuqlu Pizza',
      description: 'Toyuq filesi, göbələk, pomidor sousu, mozzarella pendiri',
      price: '13,60 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Pepperoni Pizza',
      description: 'Pomidor sousu, mozzarella pendiri və servalat',
      price: '13,60 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Sosisli Pizza',
      description: 'Pomidor sousu, mozzarella pendiri və sosiska',
      price: '13,60 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Qarışıq Pizza',
      description:
          'Pomidor sousu, mozzarella pendiri, göbələk, şirin bibər, sosis, qarğıdalı, servalat',
      price: '16,00 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Sezar Pizza',
      description:
          'Pomidor sousu, mozzarella pendiri, toyuq filesi, pomidor, sezar sousu, aysberg və parmezan pendiri',
      price: '14,40 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Chicken BBQ Pizza',
      description: 'Pomidor sousu, mozzarella pendiri, toyuq filesi, BBQ sousu',
      price: '14,40 ₼',
    ),
    FrangoPizzaData(
      name: 'Frango Vegeterian Pizza',
      description:
          'Pomidor sousu, mozzarella pendiri, qara zeytun, qırmızı bibər və yaşıl bibər, göbələk, qarğıdalı',
      price: '12,00 ₼',
    ),
  ];
}
