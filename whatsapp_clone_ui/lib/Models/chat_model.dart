// ignore_for_file: prefer_const_constructors, annotate_overrides

class ChatModel {
  final String title;
  final String subtitle;
  final String trailing;
  final String image;

  ChatModel(
      {required this.title,
      required this.subtitle,
      required this.trailing,
      required this.image});
}

List<ChatModel> chatData = [
  ChatModel(
      title: 'Azeem',
      subtitle: 'Hey',
      trailing: '5:12 PM',
      image: 'images/2.jpg'),
  ChatModel(
      title: 'Areeb',
      subtitle: 'AssalamuAlaikum',
      trailing: '3:46 PM',
      image: 'images/3.jpg'),
  ChatModel(
      title: 'Ashir',
      subtitle: 'Hey! How are you?',
      trailing: '1:26 PM',
      image: 'images/1.jpg'),
  ChatModel(
      title: 'Hamza',
      subtitle: 'Bhai?',
      trailing: '2/08/2022',
      image: 'images/4.jpg'),
  ChatModel(
      title: 'Rocky',
      subtitle: 'Where are you?',
      trailing: '1/08/2022',
      image: 'images/5.jpg'),
  ChatModel(
      title: 'Hashim',
      subtitle: 'Please call me',
      trailing: '1/08/2022',
      image: 'images/6.jpg'),
  ChatModel(
      title: 'Taimoor',
      subtitle: 'Pick me up!',
      trailing: '29/07/2022',
      image: 'images/7.jpg'),
  ChatModel(
      title: 'Zeeshan',
      subtitle: 'Hey bro',
      trailing: '28/07/2022',
      image: 'images/8.jpg'),
  ChatModel(
      title: 'Huzaifa',
      subtitle: '.',
      trailing: '27/07/2022',
      image: 'images/9.jpg'),
  ChatModel(
      title: 'Ali',
      subtitle: 'you free?',
      trailing: '27/07/2022',
      image: 'images/10.jpg'),
  ChatModel(
      title: 'Sameer',
      subtitle: 'Hey bro',
      trailing: '27/07/2022',
      image: 'images/11.jpg'),
];
























// class List extends StatelessWidget {
//   final String title;
//   final String subTitle;
//   final String image;
//   final String trailing;

//   List(
//       {required this.image,
//       required this.title,
//       required this.subTitle,
//       required this.trailing});

//   // ignore: empty_constructor_bodies
//   Widget build(BuildContext context) {
//     return MediaQuery.removePadding(
//       context: context,
//       removeTop: true,
//       child: ListTile(
//         leading: CircleAvatar(
//           minRadius: 10,
//           maxRadius: 30,
//           backgroundImage: AssetImage(image),
//         ),
//         title: Text(title),
//         subtitle: Row(
//           children: [
//             Icon(
//               Icons.done_all_rounded,
//               color: Colors.blue,
//               size: 18,
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Text(subTitle),
//           ],
//         ),
//         trailing: Text(
//           trailing,
//           style: TextStyle(color: Color(0xff80909a)),
//         ),
//       ),
//     );
//   }
// }
