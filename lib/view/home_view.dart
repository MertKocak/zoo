import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../service/admob_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _appTitle = "ZOO";
  final double _childAspectRatio = 0.72;
  final int _crossAxisCount = 3;
  final Color _backgrounColor = const Color.fromRGBO(236, 74, 163, 1);
  int _counter = 0;
  BannerAd? _banner;
  RewardedAd? _rewardedAd;
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    super.initState();
    _createBannerAd();
    _createInterstitialAd();
    _createRewardedAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          _appTitle,
          style: HomeStyles().appTitleStyle,
        ),
        backgroundColor: _backgrounColor,
      ),
      body: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _crossAxisCount,
              childAspectRatio: _childAspectRatio),
          itemCount: AppVariables.sounds.length,
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                animalCard(
                  "assets/images/${AppVariables.images[index]}.png",
                  AppVariables.containerColors[index],
                  "audio/${AppVariables.sounds[index]}.mp3",
                ),
              ],
            );
          }),
      bottomNavigationBar: _banner == null
          ? Container()
          : Container(
              margin: const EdgeInsets.only(),
              height: 52,
              child: AdWidget(ad: _banner!),
            ),
    );
  }

  animalCard(String image, Color bgcolor, String audio) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(children: [
      Bounce(
          onPressed: (() {
            animalOnPressed(audio);
          }),
          duration: const Duration(milliseconds: 200),
          child: Container(
            margin: EdgeInsets.only(top: 12),
            height: height / 5.6,
            width: width / 3.3,
            decoration: BoxDecoration(
                color: bgcolor, borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
          ))
    ]);
  }

  void _createBannerAd() {
    _banner = BannerAd(
        size: AdSize.fullBanner,
        adUnitId: AdMobService.bannerAdUnitId!,
        listener: AdMobService.bannerListener,
        request: const AdRequest())
      ..load();
  }

  void _createInterstitialAd() {
    InterstitialAd.load(
        adUnitId: AdMobService.interstitialUnitAdId!,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) => _interstitialAd = ad,
          onAdFailedToLoad: (LoadAdError error) => _interstitialAd = null,
        ));
  }

  void animalOnPressed(String audio) {
    final player = AudioCache();
    _counter++;
    player.play(audio);
    if (_counter > 0 && _counter % 20 == 0) {
      _showInterstitialAd();
    } else if (_counter > 0 && _counter % 62 == 0) {
      _showRewardedAd();
    }
  }

  void _showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _createInterstitialAd();
        },
      );
      _interstitialAd!.show();
      _interstitialAd = null;
    }
  }

  void _createRewardedAd() {
    RewardedAd.load(
        adUnitId: AdMobService.rewardedAdUnitId!,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) => setState(() => _rewardedAd = ad),
          onAdFailedToLoad: (error) => setState(() => _rewardedAd = null),
        ));
  }

  void _showRewardedAd() {
    if (_rewardedAd != null) {
      _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _createRewardedAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _createRewardedAd();
        },
      );
      _rewardedAd!.show(
        onUserEarnedReward: (ad, reward) {
          debugPrint('User earned reward of $reward');
        },
      );
      _rewardedAd = null;
    }
  }
}

class AppVariables {
  static List<String> images = [
    "inek",
    "kus",
    "kurbaga",
    "aslan",
    "kedi",
    "ordek",
    "yunus",
    "kopek",
    "maymun",
    "karga",
    "koyun",
    "fil"
  ];
  static List<String> sounds = [
    "inek",
    "kus",
    "kurbaga",
    "aslan",
    "kedi",
    "ordek",
    "yunus",
    "kopek",
    "maymun",
    "karga",
    "koyun",
    "fil"
  ];
  static List<Color> containerColors = [
    Colors.pink.shade300,
    const Color.fromARGB(255, 250, 188, 165),
    const Color.fromARGB(255, 47, 189, 52),
    Colors.brown.shade400,
    Colors.purple.shade400,
    const Color.fromARGB(255, 2, 141, 255),
    const Color.fromARGB(255, 255, 140, 140),
    const Color.fromARGB(255, 231, 104, 0),
    Colors.orange,
    Color.fromARGB(255, 53, 233, 131),
    const Color.fromARGB(255, 203, 17, 235),
    const Color.fromARGB(255, 21, 101, 192)
  ];
}

class HomeStyles {
  TextStyle appTitleStyle =
      const TextStyle(fontSize: 46, color: Colors.white, fontFamily: "quick");
}
