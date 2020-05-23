import 'package:flutter/material.dart';

class Produitdetail extends StatefulWidget {
  final produitdetail_name;
  final produitdetail_newprice;
  final produitdetail_oldprice;
  final produitdetail_picture;

  Produitdetail({
    this.produitdetail_name,
    this.produitdetail_newprice,
    this.produitdetail_oldprice,
    this.produitdetail_picture,
    });

  @override
  _ProduitdetailState createState() => _ProduitdetailState();
}

class _ProduitdetailState extends State<Produitdetail> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(        
        backgroundColor: Colors.red,
        elevation: 0.1,
        title: Text('kayDjeude'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
            Icons.search,
            color: Colors.white,
          ), 
          onPressed: (){}),
          new IconButton(
            icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ), 
          onPressed: (){})
        ],
      ),     

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile( 
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.produitdetail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.produitdetail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("${widget.produitdetail_oldprice} CFA",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),

                      Expanded(
                        child: new Text("${widget.produitdetail_newprice} CFA",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                      )
                    ],
                  ),
                )
              )
              ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size")
                      ),
                      Expanded(
                      child: new Icon(Icons.arrow_drop_down)
                      ),
                  ],
                ),),
              ),

              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Color")
                      ),
                      Expanded(
                      child: new Icon(Icons.arrow_drop_down)
                      ),
                  ],
                ),),
              ),

              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Qty")
                      ),
                      Expanded(
                      child: new Icon(Icons.arrow_drop_down)
                      ),
                  ],
                ),),
              )
            ],
          ),

        Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white ,
                elevation: 0.2,
                child: new Text("Acheter Now"),
                ),
              ),
              
              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red), onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}),

            ],
          ),
        ]
      ),
    );
  }
}