

import 'package:flutter/material.dart';
import 'package:mobile/laptopInfo.dart';
class Laptops extends StatefulWidget {

  State<Laptops> createState(){
    return _LaptopState() ;
  }
}


class _LaptopState extends State<Laptops>{

  List images = [
    {
      'mainImage':"https://retechie.com/wp-content/uploads/2020/02/9480m.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2020/02/9480m.1-1.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/9480m-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    },
    {
      'mainImage':"https://retechie.com/wp-content/uploads/2022/09/1708.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2022/09/a1708_1.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/9480m-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    },
     {
      'mainImage':"https://retechie.com/wp-content/uploads/2021/12/1466.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2020/02/Untitled-A1466.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/Air-1466.1-600x600-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    },
     {
      'mainImage':"https://retechie.com/wp-content/uploads/2020/02/9480m.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2020/02/9480m.1-1.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/9480m-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    },
     {
      'mainImage':"https://retechie.com/wp-content/uploads/2020/02/9480m.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2020/02/9480m.1-1.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/9480m-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    },
     {
      'mainImage':"https://retechie.com/wp-content/uploads/2020/02/9480m.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2020/02/9480m.1-1.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/9480m-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    },
     {
      'mainImage':"https://retechie.com/wp-content/uploads/2020/02/9480m.png",
      'subImage1':"https://retechie.com/wp-content/uploads/2020/02/9480m.1-1.jpg",
      'subImage2':"https://retechie.com/wp-content/uploads/2020/02/9480m-1.jpg",
      'subImage3':"https://retechie.com/wp-content/uploads/2020/02/9480m.2-1-1.jpg"
    }

  ];



  AppBar  _appbarFunction(){
    return AppBar(
        leading: Icon(Icons.laptop , color: Colors.green , size:32) ,
        backgroundColor: Colors.grey.shade200,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.red,
        title:Text("LaptopHub"),
        actions: [
            Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  
              Icon(Icons.person_2_outlined,size: 20,),
              Text("login"),
            ],
           ),
           SizedBox(width: 25,),
           Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  
              Row( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Icon(Icons.favorite_border, size:20 ),
                  Container( 
                    height: 15,
                    width: 15,
                     decoration: BoxDecoration( 
                      color: Colors.black, 
                       borderRadius : BorderRadius.circular(15)
                     ),
                      child: Center(child: Text("$wishListCount" , style: TextStyle(fontSize: 10 , color: Colors.white))),
                   ),

                ],
              ),
              
              Text("WishList")
            ],
           ) ,
           SizedBox(width: 20,),
         
        ]
      );
  }

  int wishListCount = 0 ;


  Widget build(BuildContext conetxt){
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar : _appbarFunction(),

      body: 
      ListView.builder(
        itemCount : images.length ,
        itemBuilder: (context , index){
          return GestureDetector(

            onTap: (){
              Navigator.push(context , MaterialPageRoute(builder: (context){
                return Info(images[index]["mainImage"],images[index]["subImage1"],images[index]["subImage2"],images[index]["subImage3"]);

              }));
            },
            child: Container( 
              margin: EdgeInsets.only(top: 30),
              color: Colors.white,
              
              child:  Column(
                children: [
                  
                  Row(  
                    crossAxisAlignment: CrossAxisAlignment.center,
                  
                    children: [  
                    
                        Expanded(
                          child: Column(  
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [  
                          
                              Container(  
                                margin: EdgeInsets.all(10),
                                // decoration: BoxDecoration(  
                                //   border: Border.all(color: Colors.black)
                                // ),
                                child: Image.network( "${images[index]["mainImage"]}",height: 170,width: 200,),
                          
                              ),
                          
                              Row(
                                children: [  
                                  
                              Container(
                                child:Image.network("${images[index]["subImage1"]}",height: 60,width: 60, )
                                ),
                                 Container(
                                child:Image.network("${images[index]["subImage2"]}",height: 60,width: 60, )
                                ),
                                 Container(
                                child:Image.network("${images[index]["subImage3"]}",height: 60,width: 60, )
                                ),
                          
                                ],
                              ),
                          
                            ],
                          ),
                        ),
                  
                        Expanded(
                          child:   Column(  
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [  
                              Container(
                                width: 200,
                                child: Text("Certifed Refurbished HP EliteBook 9480m - Ultraslim Metal Body",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                               ),
                               SizedBox(height: 6,),
                              const  Row (
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [ 
                                Text("Rs 17,999 - Rs 23,999", style: TextStyle(color: Colors.red ,),),
                                SizedBox(width: 5,),
                                Text("(-45%)"),
                   
                                ],
                               ),
                               SizedBox(height: 20,),
                  
                               Container(
                                decoration: BoxDecoration( 
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                  
                                ),
                                 child: TextButton(onPressed: (){
                                 
                                 },
                                 style: ButtonStyle(  
                                  fixedSize:MaterialStatePropertyAll(Size(170, 35)),
                                 ),
                                  child: Text(" ADD TO CART ",style: TextStyle(color: Colors.white),)),
                               ),
                               SizedBox(height: 5,),
                  
                               Row(  
                                children: [  
                                  Icon(Icons.favorite_outline, color: Colors.red,),
                                  SizedBox(width: 5,),
                               Text("ADD TO WISHLIST ",style: TextStyle(color: Colors.red),)                      
                  
                                ],
                               )
                            ],
                          )
                        )
                    ],
                             
                  ),
                //  Text("Description",style: TextStyle(fontSize: ),)
                ],
              ),
            ),
          );
        }
        )
      
    );



    
  }

}