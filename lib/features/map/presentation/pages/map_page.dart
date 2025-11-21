import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_kg/core/theme/app_colors.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, size: 22, color: AppColors.blue),
        ),
        title: Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Башкы",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 335,
                height: 350,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(height: 75),
              Container(
                width: 335,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(width: 2, color: Color(0x33B4BDC4)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 14,
                    bottom: 21,
                    right: 22,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: AppColors.blue,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: AppColors.white,
                            size: 24,
                          ),
                          hintText: "Издоо",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (_, __) => SizedBox(height: 10),
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Icon(
                                Icons.location_on,
                                size: 25,
                                color: AppColors.black,
                              ),
                              title: Text('Bishkek'),
                              subtitle: Text('Chuy region'),
                              titleTextStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                              subtitleTextStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
