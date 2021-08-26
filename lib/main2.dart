import 'package:flutter/material.dart';

const NAMES = [ '宋江', '卢俊义', '吴用', '公孙胜', '关胜',
                '林冲', '秦明', '呼延灼', '花荣', '柴进',
                '李应', '朱仝', '鲁智深', '武松', '董平',
                '张清', '杨志', '徐宁', '索超', '岱宗',
                '刘唐', '李逵', '史进', '穆弘' '雷横' ];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /// 材料设计主题
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          /// 标题组件
          title: Text("ListView 示例"),
        ),

        /// 列表组件
        body: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  /// 创建列表
  List<Widget> _buildList(){
    /// 遍历 NAMES 数组
    /// 调用 map 方法遍历数组元素
    return NAMES.map((name) => _generateWidget(name)).toList();
  }

  Widget _generateWidget(name){
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.black),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 20
        ),
      ),
    );
  }
}