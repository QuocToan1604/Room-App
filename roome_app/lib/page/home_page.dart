import 'package:flutter/material.dart';
import 'package:roome_app/components/custom_text_field.dart';
import 'package:roome_app/components/hotel_item.dart';
import 'package:roome_app/models/hotel_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<HotelModel> listEvent = hotels;
  List<HotelModel> foundEvent = [];

  final TextEditingController _searchController = TextEditingController();
  void initState() {
    setState(() {
      foundEvent = listEvent;
    });
  }

  void runFilter(String enteredKeywword) {
    print(enteredKeywword);
    List<HotelModel> results = [];
    if (enteredKeywword.isEmpty) {
      results = listEvent;
    } else {
      results = listEvent
          .where((event) =>
              event.name!.toLowerCase().contains(enteredKeywword.toLowerCase()))
          .toList();
    }
    setState(() {
      foundEvent = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F6),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          'Explore',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontFamily: 'MajoraBold'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border, color: Colors.black),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Color(0xFFF6F6F6),
        child: SingleChildScrollView(
          child: Container(
            // color: Colors.blue,
            //height: 300,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: CustomTextField(
                        controller: _searchController,
                        obscureText: false,
                        onChanged: (context) => runFilter(context),
                        hintText: 'Search',
                      ),
                      // Text('Kết quả tìm kiếm: $_searchText'),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF57D2C1),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose date',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '12 Dec - 22 Dec',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    // Divider(
                    //   color: Colors.black,
                    //   thickness: 1.0,
                    //   indent: 10.0,
                    //   endIndent: 10.0,
                    // ),
                    Container(
                      height: 50.0,
                      width: 1.0,
                      color: Colors.grey,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Number of Rooms',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '1 Room - 2 Adults',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  indent: 2.0,
                  endIndent: 2.0,
                ),
                // const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '530 hotels found',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        // padding: EdgeInsets.only(right: 0),
                        margin: EdgeInsets.only(left: 18.5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Filter",
                                style: TextStyle(color: Colors.black),
                              ),
                              Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Expanded(
                  child: IntrinsicHeight(
                    child: Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        //  physics: PageScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: foundEvent.length,
                        itemBuilder: (BuildContext context, int index) {
                          // HotelModel hotel = hotels[index];
                          return Padding(
                            // title:Text(_searchResults[index]) ,
                            padding: const EdgeInsets.symmetric(vertical: 5.6),
                            child: HotelItem(
                                onPressed: () => print(foundEvent[index].id),
                                hotel: foundEvent[index]),
                          );
                        },
                      ),

                      // height: 400,
                      // child: ListView.builder(
                      //   shrinkWrap: true,
                      //   //  physics: PageScrollPhysics(),
                      //   padding: EdgeInsets.zero,
                      //   itemCount: hotels.length,
                      //   itemBuilder: (BuildContext context,int index) {
                      //     HotelModel hotel = hotels[index];
                      //     return Padding(
                      //       // title:Text(_searchResults[index]) ,
                      //       padding: const EdgeInsets.symmetric(vertical: 5.6),
                      //       child: HotelItem(
                      //           onPressed: () => print(hotel.id), hotel: hotel),
                      //     );
                      //   },
                      // ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
