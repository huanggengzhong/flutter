import "package:flutter/material.dart";

// 准备一个商品信息的抽象类

class Product{
  final String title;//商品标题
  final String description;//商品描述
  Product(this.title,this.description);
}

void main(){
  runApp(MaterialApp(
    title:"参数传递案例",
    home:ProductList(
      // 下面是相当于声明了一个数组
      products:List.generate(50,(index)=>
        Product('商品$index','这是商品详情,编号为$index')
      ),
    )
  ));
}


class ProductList extends StatelessWidget{
  
  final List<Product> products;// 引入上面的数组
  ProductList({Key key,@required this.products}):super(key:key);//挂载在当前组件上,除了this.products,其它是固定写法
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('商品列表页')),
      body:ListView.builder(//动态列表
        itemCount:products.length,
        itemBuilder: (context,index){
          return ListTile(//每个瓦片
              title:Text(products[index].title),//瓦片内容
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>ProductDetail(product:products[index])//括号里的是传递值
                ));
              },
          );
        },
      )
    );
  }
}

class ProductDetail extends StatelessWidget{
  //接收上面传递的值
  final Product product; //二三是抽象类和上面传递的属性
  ProductDetail({Key key,@required this.product}):super(key:key);
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text(product.title)),
      body:Center(child: Text(product.description),)
    );
  }
}