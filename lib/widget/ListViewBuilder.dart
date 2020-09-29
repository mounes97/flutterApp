// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:myfirstapp/Model/API.dart';
// import 'package:myfirstapp/Services/ApiServes.dart';
//
// class ListViewBuilder extends StatefulWidget {
//
//   @override
//   _ListViewBuilderState createState() => _ListViewBuilderState();
// }
// List<ProductDataModel> _myData = [];
//
// class _ListViewBuilderState extends State<ListViewBuilder> {
//
//
//   _getApiModel() async {
//   var url = 'homepageproducts';
//   var temp = await ApiService.getUsers(url);
//   setState(() {
//     Iterable list = temp["Data"];
//     _myData= list.map((l)=>ProductDataModel.fromJson(l)).toList();
//
//   });
// }
// @override
//   void initState() {
//     _getApiModel();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return
//       _myData.isNotEmpty
//         ? buildListView()
//
//         :
//     Scaffold(
//     body: Center(
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//     SpinKitCircle(
//     color: Colors.white,
//     size: 100.0,
//     ),
//     ]),
//     ),
//
//     );
//   }
//
//   ListView buildListView() {
//     return ListView.builder( itemCount: _myData.length,
//     itemBuilder: (BuildContext context, int index) {
//       return Container(
//         height: 50,
//         margin: EdgeInsets.all(2),
//         child: Center(
//         child: Column(
//           children:<Widget>[ Text('${_myData[index].name}',style: TextStyle(fontSize: 18) ),
//             Image.network(_myData[index].defaultPictureModel.imageUrl),
//         ]
//         )
//       )
//       );
//     },
//   );
//   }
// }