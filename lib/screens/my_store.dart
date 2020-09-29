import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myfirstapp/Model/API.dart';
import 'package:myfirstapp/Model/SliderModel.dart';
import 'package:myfirstapp/Services/ApiServes.dart';
import 'package:myfirstapp/widget/ListViewBuilder.dart';
import 'package:myfirstapp/widget/buildDrawer.dart';

bool flag = false;

class myStore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myStoreState();
  }
}

class _myStoreState extends State<myStore> {
  List<SliderData> _data = [];
  List<ProductDataModel> _myData = [];
  _getApiModel() async {
    var url = 'homepageproducts';
    var temp = await ApiService.getUsers(url);
    setState(() {
      Iterable list = temp["Data"];
      _myData = list.map((l) => ProductDataModel.fromJson(l)).toList();
    });
  }

  _getSliderModel() async {
    var url = 'homepagebanner';
    var temp = await ApiService.getUsers(url);

    setState(() {
      Iterable list = temp["Data"];
      _data = list.map((l) => SliderData.fromJson(l)).toList();
    });
  }

  @override
  void initState() {
    _getSliderModel();
    _getApiModel();
    super.initState();
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return (_data.isNotEmpty)
        ? buildScaffold()
        : Scaffold(
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SpinKitCircle(
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ]),
            ),
          );
  }

  Scaffold buildScaffold() {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Bella'),
      ),
      body: SafeArea(
        child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: _data.length,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                itemBuilder: (context, index) {
                  return Container(
                    child: Center(
                        child: Image.network(_data[index].imageUrl,
                            fit: BoxFit.cover, width: 1000)),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _data.map((url) {
                  int index = _data.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Color.fromRGBO(255, 255, 255, 0.9)
                          : Color.fromRGBO(255, 255, 255, 0.4),
                    ),
                  );
                }).toList(),
              ),ListView.builder(
                itemCount: _myData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: <Widget>[
                    Text('${_myData[index].name}',
                        style: TextStyle(fontSize: 18)),
                    Image.network(
                      _myData[index].defaultPictureModel.imageUrl,width: 350,fit: BoxFit.cover,),
                  ]);
                },
              )
            ],
          ),



      ),
    );
  }
}
