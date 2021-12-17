import 'dart:convert';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jack_wharton/Model/data_model.dart';
import 'package:jack_wharton/providers/login-api.dart';
import 'package:jack_wharton/utils/const.dart';
import 'package:jack_wharton/utils/database.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataModel> dataModel = [];
  List<Todo> todo = [];
  bool isLoading = false;
  int pageCount = 1;
  late ScrollController _scrollController;

  @override
  void initState() {
    getData();
    super.initState();
    _scrollController = new ScrollController(initialScrollOffset: 5.0)
      ..addListener(_scrollListener);
  }

  getData() async {
    todo = await TodoProvider.instance.getTodo() ?? [];
    setState(() {});
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jake\'s Git'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        controller: _scrollController,
        //// YOU ARE ADDING THE CONTROLLER HERE TO ADD THE SCROLL LISTENER
        physics: ScrollPhysics(),
        itemCount: todo.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if ((index) == (todo.length)) {
            if (isLoading) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
                child: Platform.isAndroid
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Colors.grey,
                      ))
                    : CupertinoActivityIndicator(),
              );
            } else {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 2.h),
              );
            }
          }
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 1.h),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.book,
                      size: 8.h,
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            todo[index].name.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 1.5.h),
                          child: Text(
                            todo[index].discription.toString(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 10.0.sp,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              details(
                                todo[index].language == null ? false : true,
                                todo[index].language.toString(),
                                Icons.code,
                              ),
                              Container(
                                margin: todo[index].openIssues == null
                                    ? EdgeInsets.symmetric(horizontal: 2.h)
                                    : EdgeInsets.only(right: 2.h),
                                child: details(
                                  todo[index].openIssues == null ? false : true,
                                  todo[index].openIssues.toString(),
                                  Icons.coronavirus,
                                ),
                              ),
                              details(
                                todo[index].size == null ? false : true,
                                todo[index].size.toString(),
                                Icons.face_sharp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget details(isVisible, String details, IconData icons) {
    return isVisible == false
        ? Container()
        : Container(
            child: Row(
              children: [
                Icon(icons),
                Padding(
                  padding: EdgeInsets.only(left: 0.7.h),
                  child: Container(
                    child: Text(
                      details.toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 11.5.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  _scrollListener() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      getUrlData();
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      getUrlData();
      // I am connected to a wifi network.
    } else {
      print("comes to botto no internet");
    }
  }

  getUrlData() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        print("comes to bottom $isLoading");
        isLoading = true;

        if (isLoading) {
          print("RUNNING LOAD MORE");

          pageCount = todo.isEmpty
              ? 1
              : (int.parse(todo.last.pageCount.toString())) + 1;
          getItems(pageCount);
        }
      });
    }
  }

  getItems(page) {
    GetData().getData(page).then((response) async {
      if (response.statusCode == 200) {
        List<dynamic> data = (json.decode(response.body));
        if (data.isNotEmpty) {
          for (int i = 0; i < data.length; i++) {
            dataModel.add(DataModel.fromJson(data[i]));
            DataModel model = DataModel.fromJson(data[i]);
            Todo todos = await TodoProvider.instance.insert(Todo(
                null,
                model.description,
                model.name,
                model.language,
                model.openIssues.toString(),
                model.size.toString(),
                page.toString()));
            todo.add(todos);
          }
        }

        setState(() {
          isLoading = false;
        });
      } else {
        buildErrorDialog(context, 'Error', response.body);
      }
    }).catchError((onError) {
      buildErrorDialog(context, 'Error', onError.toString());
    });
  }
}
