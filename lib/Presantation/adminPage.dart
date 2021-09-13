import 'package:flutter/material.dart';
import 'package:skedaddle/Common/Button.dart';
import 'package:skedaddle/Common/themeBody.dart';
import 'package:skedaddle/Utils/colors.dart';
import 'package:skedaddle/Utils/constants.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return themeBody(
      title: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Technician Details',
          textAlign: TextAlign.left,
          style: UIHeadingStyle,
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(
                "$index",
                style: TextStyle(color: UiWhiteColor, fontSize: 25),
              ),
              title: Text(
                "Name $index",
                style: TextStyle(color: UiWhiteColor, fontSize: 25.0),
              ),
              trailing: Icon(Icons.list),
            );
          }),
    );
  }
}
// Row _textCard({
//   String srno,
//   String name,
//   Widget icon,
// }) {
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       kHorizontalSpace(),
//       Expanded(
//         flex: 1,
//         child: Text(
//           srno,
//           style: TextStyle(color: UiWhiteColor, fontSize: 20.0),
//         ),
//       ),
//       Expanded(flex: 1, child: Container()),
//       Expanded(
//           child: Text(
//         name,
//         style: TextStyle(color: UiWhiteColor, fontSize: 20.0),
//       )),
//       kHorizontalSpace(),
//       Expanded(child: IconButton(onPressed: () {}, icon: icon)),
//       kHorizontalSpace(),
//     ],
//   );
// }



