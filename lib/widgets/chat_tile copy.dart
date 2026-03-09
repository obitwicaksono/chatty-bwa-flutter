// import 'package:flutter/material.dart';
// import 'package:chatty_bwa/theme.dart';
// import 'package:chatty_bwa/models/chat_list.dart';

// class ChatTile extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: EdgeInsets.only(top: 16),
//         child: Row(
//           children: [
//             Image.asset(imageUrl, width: 55, height: 55),
//             SizedBox(width: 12),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(name, style: titleTextStyle),
//                 Text(
//                   text,
//                   style: unread
//                       ? subtitleTextStyle.copyWith(
//                           color: blackColor,
//                         )
//                       : subtitleTextStyle,
//                 ),
//               ],
//             ),
//             Spacer(),
//             Text(time, style: subtitleTextStyle),
//           ],
//         ),
//       ),
//     );
//   }
// }
