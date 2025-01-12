import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojekui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "Beranda",
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                        child: Center(
                            child: Text(
                          title,
                          style: semibold14.copyWith(color: Colors.white),
                        ))),
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 23),
          child: Column(
            children: [
              // Search bar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: dark4,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xFFEDEDED)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: dark1,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Cari Layanan, Makanan, dan Tujuan",
                            style: regular14.copyWith(color: dark1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.account_circle,
                    size: 40,
                    color: dark1,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // GoPay Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: blue1,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    // GoPay Box with Money
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "GoPay",
                            style: bold18.copyWith(color: dark1),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Rp 50.000",
                            style: semibold14.copyWith(color: dark1),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),

                    // Align the 3 boxes to match GoPay Box height
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          // Box 1: Topup (size reduced)
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(6), // Reduced padding
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(
                                      4), // Reduced padding
                                  decoration: BoxDecoration(
                                    color: blue2, // Blue color for icon
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/topup.svg',
                                    color: Colors.white,
                                    height: 20, // Further reduced size of icon
                                    width: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Topup",
                                style: bold16.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8), // Reduced spacing
                          // Box 2: Eksplore (size reduced)
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(6), // Reduced padding
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(
                                      4), // Reduced padding
                                  decoration: BoxDecoration(
                                    color: blue2, // Blue color for icon
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/explore.svg',
                                    color: Colors.white,
                                    height: 20, // Further reduced size of icon
                                    width: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Eksplore",
                                style: bold16.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8), // Reduced spacing
                          // Box 3: Bayar (size reduced)
                          Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.all(6), // Reduced padding
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(
                                      4), // Reduced padding
                                  decoration: BoxDecoration(
                                    color: blue2, // Blue color for icon
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/pay.svg',
                                    color: Colors.white,
                                    height: 20, // Further reduced size of icon
                                    width: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "Bayar",
                                style: bold16.copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // 8 Circle Logos
              const SizedBox(height: 40),
              // First Row of Circle Logos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _circleLogo(
                    'assets/icons/goride.svg',
                    blue2,
                    'GoRide',
                  ),
                  _circleLogo('assets/icons/gocar.svg', green2, 'GoCar'),
                  _circleLogo('assets/icons/gosend.svg', Colors.red, 'GoSend'),
                  _circleLogo(
                      'assets/icons/gofood.svg', Colors.purple, 'GoFood'),
                ],
              ),
              const SizedBox(height: 20),
              // Second Row of Circle Logos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _circleLogo('assets/icons/gopulsa.svg', blue2, 'GoPulsa'),
                  _circleLogo('assets/icons/gomart.svg', green2, 'GoMart'),
                  _circleLogo('assets/icons/goclub.svg', Colors.red, 'GoClub'),
                  _circleLogo('assets/icons/other.svg', Colors.purple, 'Other'),
                ],
              ),

              // GoClub Progress Section
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Star Icon
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 40,
                          width: 40,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                            width: 8), // Space between the star and text
                        Text(
                          "117 XP Lagi Ada Harta Karun",
                          style: bold18.copyWith(color: dark1),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(green2),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Level 6 / 10",
                      style: semibold14.copyWith(color: dark1),
                    ),
                  ],
                ),
              ),

              // Akses Cepat Section (Updated to 1 container)
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akses Cepat",
                    style: bold18.copyWith(color: dark1),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // Combined Access Container
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // First Row of Access Container
                    Row(
                      children: [
                        // Icon with background color
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: green2,
                          ),
                          child: Icon(
                            Icons.motorcycle,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Location Text
                        Expanded(
                          child: Text(
                            "Lokasi Pengguna 1",
                            style: semibold14.copyWith(color: dark1),
                          ),
                        ),
                        // Arrow Icon
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: dark1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    // Second Row of Access Container
                    Row(
                      children: [
                        // Icon with background color
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: green2,
                          ),
                          child: Icon(
                            Icons.motorcycle,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        // Location Text
                        Expanded(
                          child: Text(
                            "Lokasi Pengguna 2",
                            style: semibold14.copyWith(color: dark1),
                          ),
                        ),
                        // Arrow Icon
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: dark1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // New Container for GoPay Later Offer
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Image for GoPay Later
                        Image.asset(
                          'assets/images/gopay.png',
                          width: 80, // Adjust the width as necessary
                          height: 40, // Adjust the height as necessary
                        ),
                        const SizedBox(
                            width: 10), // Space between image and text
                      ],
                    ),
                    Text(
                      "Lebih Hemat Pake GoPay Later",
                      style: bold18.copyWith(color: dark1),
                    ),
                    const SizedBox(height: 10),
                    // Regular Text
                    Text(
                      "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
                      style: regular14.copyWith(color: dark1),
                    ),
                  ],
                ),
              ),
              // New Container for GoPay Later Offer
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Image for GoPay Later
                        Image.asset(
                          'assets/images/1.png',
                          width: 320,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                            width: 10), // Space between image and text
                      ],
                    ),
                    Text(
                      "Lebih Hemat Pake GoPay Later",
                      style: bold18.copyWith(color: dark1),
                    ),
                    const SizedBox(height: 10),
                    // Regular Text
                    Text(
                      "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
                      style: regular14.copyWith(color: dark1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to create circle logo with given path, background color, and label
  Widget _circleLogo(String iconPath, Color bgColor, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
          ),
          child: SvgPicture.asset(
            iconPath,
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: semibold14.copyWith(color: dark1),
        ),
      ],
    );
  }
}
