import 'package:dr1bclone/app/routes/app_pages.dart';
import 'package:dr1bclone/app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container closing(BuildContext context) {
  double height = getHeight(context) / 2;
  return Container(
    height: height <= 250 ? 250 : height,
    decoration: const BoxDecoration(color: Colors.black),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isi['portofolio']!['title'].toUpperCase(),
            style: fontGoogle(
              fontSize: responsive(
                context,
                mobile: 20.0,
                desktop: 30.0,
              ),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 170,
            child: ListView.builder(
              itemCount: isi['portofolio']!['subtitle'].length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> porto =
                    isi['portofolio']!['subtitle']![index];
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 250,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.PORTFOLIO,
                          parameters: {'id': index.toString()}),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                color: const Color.fromARGB(255, 217, 0, 255),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Image.asset(
                                    porto['frame']!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.black, Colors.transparent],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          porto['logo']!,
                                        ),
                                      ),
                                      subtitle: Text(
                                        porto['deskripsi'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: fontGoogle(
                                          color: Colors.white,
                                          fontSize: responsive(
                                            context,
                                            mobile: 8.0,
                                            desktop: 12.0,
                                          ),
                                        ),
                                      ),
                                      title: Text(
                                        porto['nama']!,
                                        style: fontGoogle(
                                          color: Colors.white,
                                          fontSize: responsive(
                                            context,
                                            mobile: 10.0,
                                            desktop: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                              207,
                                              255,
                                              255,
                                              255,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(
                                                10,
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                tooltip: 'android',
                                                onPressed: () => launcher(
                                                    porto['url_android']),
                                                icon: const Icon(
                                                  Icons.android,
                                                  color: Colors.green,
                                                  size: 24.0,
                                                ),
                                              ),
                                              IconButton(
                                                tooltip: 'website',
                                                onPressed: () => launcher(
                                                    porto['url_website']),
                                                icon: const Icon(
                                                  Icons.web_outlined,
                                                  color: Colors.green,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
