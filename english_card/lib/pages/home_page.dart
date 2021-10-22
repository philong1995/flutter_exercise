import 'package:english_card/ui/app_color.dart';
import 'package:english_card/ui/app_path.dart';
import 'package:english_card/ui/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0,
        title: Text("English today",
            style: AppStyles.h3
                .copyWith(color: AppColors.textColor, fontSize: 36)),
        leading: InkWell(
          onTap: () {},
          child: Image.asset(AppPath.menuPath),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Text(
                  "It's amazing how complete is the delustion that beauty is goodness.",
                  style: AppStyles.h5.copyWith(color: AppColors.textColor)),
              height: size.height * 0.1,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: size.height * 2 / 3,
              child: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            child: Image.asset(AppPath.heartPath),
                          ),
                          RichText(
                              //chỉ 1 hàng
                              maxLines: 1,
                              // nếu chữ dài quá thì hiển thị thành dấu ...
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: 'B',
                                  style: TextStyle(
                                      fontFamily: FontFamily.sen,
                                      fontSize: 89,
                                      fontWeight: FontWeight.bold,
                                      shadows: const [
                                        BoxShadow(
                                            color: Colors.black38,
                                            // Độ đổ bóng
                                            offset: Offset(3, 6),
                                            blurRadius: 6),
                                      ]),
                                  children: [
                                    TextSpan(
                                      text: 'eautiful',
                                      style: TextStyle(
                                          fontFamily: FontFamily.sen,
                                          fontSize: 56,
                                          fontWeight: FontWeight.bold,
                                          shadows: const [
                                            BoxShadow(
                                                color: Colors.black38,
                                                // Độ đổ bóng
                                                offset: Offset(0, 0),
                                                blurRadius: 6),
                                          ]),
                                    )
                                  ])),
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Text(
                              '"Think of all the beauti still left around you and be happy."',
                              style: AppStyles.h4.copyWith(
                                  fontFamily: FontFamily.sen,
                                  color: AppColors.textColor,
                                  letterSpacing: 1),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: Image.asset(AppPath.exchangePath),
      ),
    );
  }
}
