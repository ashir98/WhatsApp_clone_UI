class StatusModel {
  final String title;
  final String image;
  final String subtitle;

  StatusModel(
      {required this.title, required this.image, required this.subtitle});

  static List statusData = [
    StatusModel(title: 'Azeem', subtitle: '5:12 PM', image: 'images/2.jpg'),
    StatusModel(title: 'Areeb', subtitle: '3:46 PM', image: 'images/3.jpg'),
    StatusModel(title: 'Ashir', subtitle: '1:26 PM', image: 'images/1.jpg'),
    StatusModel(title: 'Hamza', subtitle: '1:26 PM', image: 'images/4.jpg'),
    StatusModel(title: 'Rocky', subtitle: '1:26 PM', image: 'images/5.jpg'),
    StatusModel(title: 'Hashim', subtitle: '1:26 PM', image: 'images/6.jpg'),
    StatusModel(title: 'Taimoor', subtitle: '1:26 PM', image: 'images/7.jpg'),
    StatusModel(title: 'Zeeshan', subtitle: '1:26 PM', image: 'images/8.jpg'),
    StatusModel(title: 'Huzaifa', subtitle: '1:26 PM', image: 'images/9.jpg'),
    StatusModel(title: 'Ali', subtitle: '1:26 PM', image: 'images/10.jpg'),
    StatusModel(title: 'Sameer', subtitle: '1:26 PM', image: 'images/11.jpg'),
  ];
}
