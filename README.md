
@[TOC]



<br>
<br>
<br>
<br>

# 一、List 集合的 map 方法说明 ( 生成 ListView 组件集合 )

---

<br>


ListView 列表的控件条目 , 一般是遍历集合生成的 ; 

**如 :** 给定如下 List 集合 ; 

```java
const NAMES = [ '宋江', '卢俊义', '吴用', '公孙胜', '关胜'];
```

调用 List 集合的 map 方法 , 可以遍历操作集合中的每一项 , 返回一个新的数组 ; 

map 方法的原型如下 ; 

```java
  Iterable<T> map<T>(T f(E e)) => MappedIterable<E, T>(this, f);
```

使用 map 方法 , 遍历 NAMES 集合 , 然后传入的匿名方法中 , 返回 Widget 组件 , 那么上述原型中的泛型 T 就是 Widget 类型 ; 

下面的方法中 , <font color=blue>map 方法传入了一个匿名函数</font> , 参数是 name , 类型是 String , 返回值是 _generateWidget 函数的返回值 , 其中  <font color=red>_generateWidget 函数返回 Widget 类型</font> , 最终  <font color=magenta>map 方法的返回值是 Iterable\<Widget> 类型</font> , 然后调用  <font color=purple>toList() 方法</font> , 将其转为  <font color=orange>List<Widget\> 类型 ; 

```java
NAMES.map((name) => _generateWidget(name)).toList();
```





<br>
<br>
<br>
<br>

# 二、ListView 垂直列表

---

<br>


**完整代码示例 :** 

```java
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
```

**执行结果 :** 

![在这里插入图片描述](https://img-blog.csdnimg.cn/43a6f4db245240b797cf99fc6fd3a3a3.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_Q1NETiBA6Z-p5puZ5Lqu,size_22,color_FFFFFF,t_70,g_se,x_16)



<br>
<br>
<br>
<br>

# 三、ListView 水平列表

---

<br>



```java
import 'package:flutter/cupertino.dart';
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
          /// 水平滚动设置
          scrollDirection: Axis.horizontal,
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
      //height: 80,
      width: 80,
      //margin: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.only(right: 5),
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
```

**执行结果 :** 

![请添加图片描述](https://img-blog.csdnimg.cn/d3813623b7fb432fb76b767323799b0a.gif)

























































<br>
<br>
<br>
<br>

# 四、相关资源 

---

<br>


**参考资料 :** 
 - **Flutter 官网 :** [https://flutter.dev/](https://flutter.dev/) 
 - **Flutter 插件下载地址 :**  [https://pub.dev/packages](https://pub.dev/packages) 
 - **Flutter 开发文档 :** [https://flutter.cn/docs](https://flutter.cn/docs) **( 强烈推荐 )**
 - **官方 GitHub 地址** : [https://github.com/flutter](https://github.com/flutter)
 - **Flutter 中文社区 :** [https://flutter.cn/](https://flutter.cn/)
 - **Flutter 实用教程 :** [https://flutter.cn/docs/cookbook](https://flutter.cn/docs/cookbook)
 - **Flutter CodeLab :** [https://codelabs.flutter-io.cn/](https://codelabs.flutter-io.cn/)
 - **Dart 中文文档 :** [https://dart.cn/](https://dart.cn/)
 - **Dart 开发者官网 :** [https://api.dart.dev/](https://api.dart.dev/)
 - **Flutter 中文网 :** [https://flutterchina.club/](https://flutterchina.club/) , [http://flutter.axuer.com/docs/](http://flutter.axuer.com/docs/)
 - **Flutter 相关问题 :** [https://flutterchina.club/faq/](https://flutterchina.club/faq/) ( 入门阶段推荐看一遍 )
 - **GitHub 上的 Flutter 开源示例 :** [https://download.csdn.net/download/han1202012/15989510](https://download.csdn.net/download/han1202012/15989510)
 - **Flutter 实战电子书 :** [https://book.flutterchina.club/chapter1/](https://book.flutterchina.club/chapter1/)
 - **Dart 语言练习网站 :** [https://dartpad.dartlang.org/](https://dartpad.dartlang.org/)


<br>

**重要的专题 :** 
 - **Flutter 动画参考文档 :** [https://flutterchina.club/animations/](https://flutterchina.club/animations/)

<br>

**博客源码下载 :** 



 - **GitHub 地址 :** [https://github.com/han1202012/flutter_shared_preferences](https://github.com/han1202012/flutter_shared_preferences) ( 随博客进度一直更新 , 有可能没有本博客的源码 )

 - **博客源码快照 :** ( 本篇博客的源码快照 , 可以找到本博客的源码 )