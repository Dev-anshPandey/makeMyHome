import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makeyourhome/tools/color.dart';

int _index = 0;

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.066,
        iconTheme: IconThemeData(color: mycolor['secondaryColor']),
        backgroundColor: mycolor['primaryColor'],
        elevation: 0.6,
        titleSpacing: 0,
        title: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.0,
                    left: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Text(
                    "Material Metric",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['secondaryColor']),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.004,
                    left: MediaQuery.of(context).size.width * 0.06,
                  ),
                  child: Text(
                    '" AI driven building material price predictor app "',
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.013,
                        //  fontWeight: FontWeight.bold,
                        color: mycolor['secondaryColor']),
                  ),
                ),
                // IconButton(onPressed: () {}, icon: Icon(Icons.location_on))
              ],
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: MediaQuery.of(context).size.width * 0.084,
            //   ),
            //   child: Icon(Icons.search),
            // )
          ],
        ),
      ),
      drawer: Drawer(
        width: width * 0.8,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.06,
                  left: MediaQuery.of(context).size.width * 0.06,
                ),
                child: Text(
                  "Material Metric",
                  style: GoogleFonts.roboto(
                      fontSize: MediaQuery.of(context).size.height * 0.026,
                      //  fontWeight: FontWeight.bold,
                      color: mycolor['secondaryColor']),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  bottom: MediaQuery.of(context).size.height * 0.04,
                  left: MediaQuery.of(context).size.width * 0.07,
                ),
                child: Text(
                  ' AI driven building material price predictor app ',
                  style: GoogleFonts.roboto(
                      fontSize: MediaQuery.of(context).size.height * 0.014,
                      //  fontWeight: FontWeight.bold,
                      color: mycolor['secondaryColor']),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 1,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.024,
                  ),
                  title: Text(
                    "Home",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.018),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.024,
                  ),
                  title: Text(
                    "About Us",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.018),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ListTile(
                  leading: Icon(
                    Icons.question_mark_rounded,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.024,
                  ),
                  title: Text(
                    "How it works",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.018),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * 0.024,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height * 0.018),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.114,
              left: MediaQuery.of(context).size.width * 0.24,
            ),
            child: Text(
              "Version 1.0.0",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height * 0.018),
            ),
          ),
        ]),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.04, right: width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: CategoryCard(
                      height: height,
                      width: width,
                      name: "Cement",
                      cp: "350",
                      isProfit: true,
                      percent: "+10 (0.20 %)",
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.03, left: width * 0.1),
                    child: CategoryCard(
                      height: height,
                      width: width,
                      name: "TMT Steel",
                      cp: "480",
                      isProfit: true,
                      percent: "+30 (0.40 %)",
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.02),
                    child: CategoryCard(
                      height: height,
                      width: width,
                      name: "Granules",
                      cp: "380",
                      isProfit: false,
                      percent: "-18 (0.20 %)",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.02, left: width * 0.108),
                    child: CategoryCard(
                      height: height,
                      width: width,
                      name: "Bricks",
                      cp: "220",
                      isProfit: true,
                      percent: "+12 (0.16 %)",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _index = 0;
                        });
                      },
                      child: CategoryType(
                        height: height,
                        width: width,
                        name: "Cement",
                        number: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _index = 1;
                        });
                      },
                      child: CategoryType(
                        height: height,
                        width: width,
                        name: "TMT Steel",
                        number: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _index = 2;
                        });
                      },
                      child: CategoryType(
                        height: height,
                        width: width,
                        name: "Granules",
                        number: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _index = 3;
                        });
                      },
                      child: CategoryType(
                        height: height,
                        width: width,
                        name: "Bricks",
                        number: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Text(
                  "Top Companies",
                  style: GoogleFonts.roboto(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      //  fontWeight: FontWeight.bold,
                      color: mycolor['secondaryColor']),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              _index == 0
                  ? CementCompany(height: height, width: width)
                  : TMTCompany(height: height, width: width),
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Text(
                  "Tools",
                  style: GoogleFonts.roboto(
                      fontSize: MediaQuery.of(context).size.height * 0.019,
                      //  fontWeight: FontWeight.bold,
                      color: mycolor['secondaryColor']),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.02, left: width * 0.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      border: Border.all(color: Color(0xffE9E9EB), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.025,
                            right: width * 0.4,
                            left: width * 0.4),
                        child: Icon(
                          Icons.house,
                          size: height * 0.04,
                          color: Color(0xff00B499),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.01, bottom: height * 0.02),
                        child: Text(
                          "House Constructions Cost Calculator",
                          style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.019,
                              //  fontWeight: FontWeight.bold,
                              color: mycolor['secondaryColor']),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CementCompany extends StatelessWidget {
  const CementCompany({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "Ultratech Cement",
                cp: "365",
                image:
                    "https://trendlyne-media-mumbai-new.s3.amazonaws.com/profilepicture/1443_profilepicture.png",
                isProfit: true,
                percent: "+14 (0.18 %)"),
            SizedBox(
              width: width * 0.1,
            ),
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "Ambuja Cement",
                cp: "355",
                image:
                    "https://m.economictimes.com/thumb/msid-104881766,width-1200,height-900,resizemode-4,imgsize-43274/ambuja-cements.jpg",
                isProfit: true,
                percent: "+1 (0.001 %)")
          ],
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Row(
          children: [
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "ACC Cement",
                cp: "360",
                image:
                    "https://images.jdmagicbox.com/comp/raipur-chhattisgarh/h4/9999px771.x771.090817145126.v1h4/catalogue/acc-ltd-raipur-ho-raipur-chhattisgarh-cement-manufacturers-acc-kkq421m.jpg",
                isProfit: true,
                percent: "+9 (0.16 %)"),
            SizedBox(
              width: width * 0.1,
            ),
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "Shree Cement",
                image:
                    "https://etcompanylogos.indiatimes.com/13129_3_shree%20cement.jpg",
                cp: "365",
                isProfit: true,
                percent: "+14 (0.18 %)")
          ],
        ),
      ],
    );
  }
}

class TMTCompany extends StatelessWidget {
  const TMTCompany({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "TMT Steel",
                cp: "382",
                image:
                    "https://seeklogo.com/images/T/tata-tiscon-logo-49E6083945-seeklogo.com.png",
                isProfit: true,
                percent: "+14 (0.18 %)"),
            SizedBox(
              width: width * 0.1,
            ),
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "JSW Steel",
                cp: "375",
                image:
                    "https://cdn.zeebiz.com/sites/default/files/2023/05/22/243600-jsw-logo-nw.jpg?im=FitAndFill=(1200,900)",
                isProfit: true,
                percent: "+1 (0.001 %)")
          ],
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Row(
          children: [
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "SRMB Steel",
                cp: "378",
                image:
                    "https://5.imimg.com/data5/ANDROID/Default/2021/12/HI/LW/CJ/76773935/product-jpeg.jpeg",
                isProfit: true,
                percent: "+9 (0.16 %)"),
            SizedBox(
              width: width * 0.1,
            ),
            CompanyCategoryCard(
                height: height,
                width: width,
                name: "Jindal Steel",
                image:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Jindal_logo_and_steel_power.jpg/622px-Jindal_logo_and_steel_power.jpg",
                cp: "385",
                isProfit: true,
                percent: "+14 (0.18 %)")
          ],
        ),
      ],
    );
  }
}

class CategoryType extends StatelessWidget {
  CategoryType({
    super.key,
    required this.height,
    required this.width,
    required this.name,
    required this.number,
  });

  final double height;
  final double width;
  int number;
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.0, right: width * 0.04),
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: height * 0.018, vertical: width * 0.018),
          child: Text(
            name,
            style: GoogleFonts.roboto(
                fontSize: MediaQuery.of(context).size.height * 0.018,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
        ),
        decoration: BoxDecoration(
            color: _index == number ? Color(0xffF8F8F8) : Colors.white,
            border: _index == number
                ? Border.all(color: Colors.black, width: 1)
                : Border.all(color: Color(0xffE9E9EB), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {super.key,
      required this.height,
      required this.width,
      required this.name,
      required this.cp,
      required this.isProfit,
      required this.percent});

  final double height;
  String name;
  String cp;
  String percent;
  bool isProfit;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/graph', arguments: {
          "type": "category",
          "name": name,
          "cp": cp,
          "percent": percent,
          "isProfit": isProfit.toString()
        });
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE9E9EB), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.01, left: width * 0.04, right: width * 0.03),
              child: Text(
                name,
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['secondaryColor']),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.004,
                      left: width * 0.04,
                      bottom: height * 0.01,
                      right: width * 0.03),
                  child: Text(
                    "₹ $cp",
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.004,
                      bottom: height * 0.01,
                      left: width * 0.0,
                      right: width * 0.04),
                  child: Text(
                    percent,
                    style: GoogleFonts.roboto(
                        fontSize: MediaQuery.of(context).size.height * 0.016,
                        fontWeight: FontWeight.w600,
                        color: isProfit ? Color(0xff00B499) : Colors.red),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CompanyCategoryCard extends StatelessWidget {
  CompanyCategoryCard(
      {super.key,
      required this.height,
      required this.width,
      required this.name,
      required this.cp,
      required this.isProfit,
      required this.image,
      required this.percent});

  final double height;
  String name;
  String cp;
  String percent;
  bool isProfit;
  String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/graph', arguments: {
          "type": "category",
          "name": name,
          "cp": cp,
          "percent": percent,
          "isProfit": isProfit.toString(),
          "image": image
        });
      },
      child: Container(
        width: width * 0.4,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE9E9EB), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.01, left: width * 0.04, right: width * 0.03),
              child: Image.network(
                image,
                height: height * 0.03,
                width: width * 0.08,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.01, left: width * 0.04, right: width * 0.03),
              child: Text(
                name,
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.017,
                    //  fontWeight: FontWeight.bold,
                    color: mycolor['secondaryColor']),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.004,
                  left: width * 0.04,
                  bottom: height * 0.006,
                  right: width * 0.03),
              child: Text(
                "₹ $cp",
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.00,
                  bottom: height * 0.015,
                  left: width * 0.04,
                  right: width * 0.04),
              child: Text(
                percent,
                style: GoogleFonts.roboto(
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                    fontWeight: FontWeight.w600,
                    color: isProfit ? Color(0xff00B499) : Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
