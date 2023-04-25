import 'package:flutter/material.dart';
import 'package:anime_flutter_app/model/tourism_place.dart';
import 'package:anime_flutter_app/detail_screen.dart';
import 'package:anime_flutter_app/list_item.dart';
import 'package:anime_flutter_app/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      japaneseTitles: '蒼の彼方のフォーリズム',
      englishTitles: 'Ao no Kanata no Four Rhythm',
      type: 'TV',
      episodes: '12',
      status: 'Finished Airing',
      synopsis:
          "With the invention of anti-gravitational shoes known as Grav-Shoes, the ability to fly freely has become an everyday experience for the people inhabiting a four-island archipelago south of Japan. This invention has brought the people new ways of living and also a new sport known as \"Flying Circus,\" where participants gain points by either touching floating buoys or their opponent's back.\n\nThe gullible and clumsy Asuka Kurashina, newly transferred to Kunahama High School, enters this world of flight unknowingly when she is able to pull off a difficult maneuver the first time she participates in a Flying Circus match. Eventually, this leads her to join her school’s Flying Circus club. Led by their coach, Masaya Hinata, their members consist of the experienced Misaki Tobisawa and her overprotective friend, Mashiro Arisaka. Ao no Kanata no Four Rhythm follows this rookie group soaring high above the skies and toward their dreams, armed only with their unwavering passion against an uncertain future.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/9/77839.jpg",
      videoUrl:
          "https://www.youtube.com/embed/WOy3WbcbNtQ?enablejsapi=1&wmode=opaque&autoplay=1",
      producers:
          'TV Tokyo, Pony Canyon,TV Tokyo, Pony Canyon, AT-X, DLE, NBCUniversal Entertainment Japan, Docomo Anime Store, bilibili, Kanon Sound, Hobibox',
      licensors: 'Funimation, Crunchyroll',
      studios: 'Gonzo',
      genres: 'Sci-Fi, Sports',
    ),
    TourismPlace(
      japaneseTitles: "ぼっち・ざ・ろっく！",
      englishTitles: "Bocchi the Rock!",
      type: "TV",
      episodes: '12',
      status: 'Finished Airing',
      synopsis:
          "Yearning to make friends and perform live with a band, lonely and socially anxious Hitori \"Bocchi\" Gotou devotes her time to playing the guitar. On a fateful day, Bocchi meets the outgoing drummer Nijika Ijichi, who invites her to join Kessoku Band when their guitarist, Ikuyo Kita, flees before their first show. Soon after, Bocchi meets her final bandmate—the cool bassist Ryou Yamada. \n\nAlthough their first performance together is subpar, the girls feel empowered by their shared love for music, and they are soon rejoined by Kita. Finding happiness in performing, Bocchi and her bandmates put their hearts into improving as musicians while making the most of their fleeting high school days.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1448/127956.jpg",
      videoUrl: "https://www.youtube.com/watch?v=Fp7lnCp_LW0",
      producers: 'Aniplex, Houbunsha',
      licensors: 'Crunchyroll',
      studios: "CloverWorks",
      genres: 'Comedy, Music, Slice of Life',
    ),
    TourismPlace(
      japaneseTitles: "くま クマ 熊 ベアー",
      englishTitles: "Kuma Kuma Kuma Bear",
      type: "TV",
      episodes: '12',
      status: "Finished Airing",
      synopsis:
          "After fanatically playing the VRMMO World Fantasy Online for almost a year, the shut-in yet relatively affluent fifteen-year-old Yuna receives a bear costume from the game's administrators. The outfit, while somewhat embarrassing to wear, turns out to have overpowered stats and effects that make her character significantly more powerful. After accepting the bear equipment, she finds herself transported to another in-game world that prevents her from returning to reality.\n\nConfused and unable to log out, Yuna sets out to explore this new environment. She rescues a girl named Fina from wild wolves, who then guides her to the city of Crimonia. With her eccentric bear attire, however, Yuna stands out wherever she goes, and alongside her boosted fighting prowess, her reputation quickly rises—to the point that people give her the nickname \"Bloody Bear.\"\n\nUndeterred by this change in her life, Yuna decides to take on the role of an adventurer and fully enjoy herself in her new world.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1413/110712.jpg",
      videoUrl: "https://www.youtube.com/watch?v=yCt-m4fhynM",
      producers: "Nippon Columbia, Crest",
      licensors: "Funimation",
      studios: "EMT Squared",
      genres: 'Adventure, Comedy, Fantasy',
    ),
    TourismPlace(
      japaneseTitles: "くまクマ熊ベアーぱーんち！",
      englishTitles: "Kuma Kuma Kuma Bear Punch!",
      type: "TV",
      episodes: '12',
      status: 'Currently Airing',
      synopsis: "Second season of Kuma Kuma Kuma Bear.",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1132/134608.jpg",
      videoUrl: "https://www.youtube.com/watch?v=zw5JCuSyo7I",
      producers: 'Nippon Animation, Kadokawa, Shufu to Seikatsusha',
      licensors: 'Muse Asia',
      studios: "EMT Squared",
      genres: 'Adventure, Comedy, Fantasy',
    ),
    TourismPlace(
      japaneseTitles: "転生したらスライムだった件",
      englishTitles: "Tensei shitara Slime Datta Ken",
      type: "TV",
      episodes: '24',
      status: "Finished Airing",
      synopsis:
          "Thirty-seven-year-old Satoru Mikami is a typical corporate worker, who is perfectly content with his monotonous lifestyle in Tokyo, other than failing to nail down a girlfriend even once throughout his life. In the midst of a casual encounter with his colleague, he falls victim to a random assailant on the streets and is stabbed. However, while succumbing to his injuries, a peculiar voice echoes in his mind, and recites a bunch of commands which the dying man cannot make sense of.\n\nWhen Satoru regains consciousness, he discovers that he has reincarnated as a goop of slime in an unfamiliar realm. In doing so, he acquires newfound skills—notably, the power to devour anything and mimic its appearance and abilities. He then stumbles upon the sealed Catastrophe-level monster \"Storm Dragon\" Veldora who had been sealed away for the past 300 years for devastating a town to ashes. Sympathetic to his predicament, Satoru befriends him, promising to assist in destroying the seal. In return, Veldora bestows upon him the name Rimuru Tempest to grant him divine protection. \n\nNow, liberated from the mundanities of his past life, Rimuru embarks on a fresh journey with a distinct goal in mind. As he grows accustomed to his new physique, his gooey antics ripple throughout the world, gradually altering his fate.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1069/123309.jpg",
      videoUrl: "https://www.youtube.com/watch?v=bkQkyzXEXKE",
      producers:
          "Lantis, Kodansha, BS11, Bandai Namco Arts, icro Magazine Publishing",
      licensors: "Funimation",
      studios: "8bit",
      genres: "Action, Adventure, Comedy, Fantasy",
    ),
    TourismPlace(
      japaneseTitles: "久保さんは僕を許さない",
      englishTitles: "Kubo Won't Let Me Be Invisible",
      type: "TV",
      episodes: '12',
      status: "Currently Airing",
      synopsis:
          "Junta Shiraishi is a high school student with one simple goal—to enjoy his youth. However, achieving this goal is not so straightforward since Shiraishi is effectively invisible to his peers; even his teachers routinely fail to notice his presence. In fact, there is a rumor circulating that whoever manages to spot him will receive good luck. \n\nBut there is one person who notices Shiraishi's presence without fail. Seated right next to him, Nagisa Kubo is determined not to let him quietly fade into the background. Unfortunately for him, this means that Shiraishi finds himself in some peculiar situations, all orchestrated by Kubo. Despite this, Kubo's playful antics might just be the catalyst needed to spark the thrilling youth that Shiraishi longs for.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1818/132330.jpg",
      videoUrl: "https://www.youtube.com/watch?v=rgDzXjc5Ps0",
      producers:
          "Pony Canyon, AT-X, Tokyo MX, Glovision, Shueisha, bilibili, Kadokawa",
      licensors: "Sentai Filmworks",
      studios: "PINE JAM",
      genres: "Comedy, Romance, School",
    ),
    TourismPlace(
      japaneseTitles: "CLANNAD",
      englishTitles: "Clannad",
      type: "TV",
      episodes: "23",
      status: "Finished Airing",
      synopsis:
          "Tomoya Okazaki is a delinquent who finds life dull and believes he'll never amount to anything. Along with his friend Youhei Sunohara, he skips school and plans to waste his high school days away.\n\nOne day while walking to school, Tomoya passes a young girl muttering quietly to herself. Without warning she exclaims \"Anpan!\" (a popular Japanese food) which catches Tomoya's attention. He soon discovers the girl's name is Nagisa Furukawa and that she exclaims things she likes in order to motivate herself. Nagisa claims they are now friends, but Tomoya walks away passing the encounter off as nothing.\n\nHowever, Tomoya finds he is noticing Nagisa more and more around school. Eventually he concedes and befriends her. Tomoya learns Nagisa has been held back a year due to a severe illness and that her dream is to revive the school's drama club. Claiming he has nothing better to do, he decides to help her achieve this goal along with the help of four other girls.\n\nAs Tomoya spends more time with the girls, he learns more about them and their problems. As he attempts to help each girl overcome her respective obstacle, he begins to realize life isn't as dull as he once thought.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1804/95033.jpg",
      videoUrl: "https://www.youtube.com/watch?v=pTTsmwHxHns",
      producers: "Pony Canyon, TBS, Movic, Animation Do",
      licensors: "Sentai Filmworks",
      studios: "Kyoto Animation",
      genres: "Drama, Romance, School, Slice of Life",
    ),
    TourismPlace(
      japaneseTitles: "CLANNAD〜AFTER STORY〜 クラナド アフターストーリー",
      englishTitles: "Clannad: After Story",
      type: "TV",
      episodes: "24",
      status: "Finished Airing",
      synopsis:
          "Clannad: After Story, the sequel to the critically acclaimed slice-of-life series Clannad, begins after Tomoya Okazaki and Nagisa Furukawa graduate from high school. Together, they experience the emotional rollercoaster of growing up. Unable to decide on a course for his future, Tomoya learns the value of a strong work ethic and discovers the strength of Nagisa's support. Through the couple's dedication and unity of purpose, they push forward to confront their personal problems, deepen their old relationships, and create new bonds.\n\nTime also moves on in the Illusionary World. As the plains grow cold with the approach of winter, the Illusionary Girl and the Garbage Doll are presented with a difficult situation that reveals the World's true purpose.\n\nBased on the visual novel by Key and produced by Kyoto Animation, Clannad: After Story is an impactful drama highlighting the importance of family and the struggles of adulthood.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1299/110774.jpg",
      videoUrl: "https://www.youtube.com/watch?v=WiTwXIAcm5Q",
      producers: "Pony Canyon, TBS, Rakuonsha, Animation Do",
      licensors: "Sentai Filmworks",
      studios: "Kyoto Animation",
      genres: "Drama, Romance, Slice of Life, Supernatural",
    ),
    TourismPlace(
      japaneseTitles: "ハイキュー!! TO THE TOP",
      englishTitles: "Haikyuu!! TO THE TOP",
      type: "TV",
      episodes: "13",
      status: "Finished Airing",
      synopsis:
          "After their triumphant victory over Shiratorizawa Academy, the Karasuno High School volleyball team has earned their long-awaited ticket to nationals. As preparations begin, genius setter Tobio Kageyama is invited to the All-Japan Youth Training Camp to play alongside fellow nationally recognized players. Meanwhile, Kei Tsukishima is invited to a special rookie training camp for first-years within the Miyagi Prefecture. Not receiving any invitations himself, the enthusiastic Shouyou Hinata feels left behind.\n\nHowever, Hinata does not back down. Transforming his frustration into self-motivation, he boldly decides to sneak himself into the same rookie training camp as Tsukishima. Even though Hinata only lands himself a job as the ball boy, he comes to see this as a golden opportunity. He begins to not only reflect on his skills as a volleyball player but also analyze the plethora of information available on the court and how he can apply it.\n\nAs the much-anticipated national tournament approaches, the members of Karasuno's volleyball team attempt to overcome their weak points and refine their skills, all while aiming for the top!\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1813/105367.jpg",
      videoUrl: "https://www.youtube.com/watch?v=gJv9fFJmnCA",
      producers:
          "Dentsu, Mainichi Broadcasting System, Movic, Sony Music Entertaiment, TOHO animation",
      licensors: "Sentai Filmworks",
      studios: "Production I.G",
      genres: "Sports",
    ),
    TourismPlace(
      japaneseTitles: "スパイ教室",
      englishTitles: "Spy Room",
      type: "TV",
      episodes: '12',
      status: "Finished Airing",
      synopsis:
          "A decade ago, mankind witnessed the deadly potential of weapons caused by the Great War. To avoid another catastrophe, governments worldwide have resorted to espionage to fulfill their agendas.\n\nIn the Din Republic, Lily is an enthusiastic young girl who aspires to become a spy and serve her nation. However, she begins to doubt her abilities, as she struggles to perform well academically. Lily's passion is reignited when she is offered provisional graduation by joining the spy team Lamplight, which she eagerly accepts despite the enigmatic nature of the opportunity.\n\nUpon arriving at her destination, Lily is surprised to find six other girls waiting there, all of whom have faced their own academic difficulties as well. A mysterious man named Klaus soon appears and reveals they must complete an \"Impossible Mission\": to infiltrate the Galgad Empire after just one month of training. Although skeptical, the girls eventually agree to work together under Klaus' guidance—as this might be their only chance to prove their worth as spies.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1491/132864.jpg",
      videoUrl: "https://www.youtube.com/watch?v=BdrLDTuDQkc",
      producers: "Movic, AT-X, Studio Mausu, BS NTV, Kadokawa",
      licensors: "Sentai Filmworks",
      studios: "feel.",
      genres: "Action, Fantasy, Mystery",
    ),
    TourismPlace(
      japaneseTitles: "お兄ちゃんはおしまい！",
      englishTitles: "Onimai: I'm Now Your Sister!",
      type: "TV",
      episodes: "12",
      status: "Finished Airing",
      synopsis:
          "Self-professed \"home security guard\" Mahiro Oyama has not left his home in years, secluding himself in his room playing erotic visual novels. This depraved lifestyle causes his prodigious sister, Mihari, to worry about his well-being. In hopes of solving this problem, she devises a plan to rehabilitate him back to normalcy.\n\nThe first part of Mihari's plan is to concoct a medicine that changes her brother's biological constitution into a bona fide female, much to Mahiro's vehement dismay. Stuck in this predicament, Mahiro has no choice but to live out his life as a cute girl until the effect wears off—if it ever does.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1058/131632.jpg",
      videoUrl: "https://www.youtube.com/watch?v=L0GbDAXQbfs",
      producers:
          "Pony Canyon, Movic, AT-X, TOHO animation, Tokyo MX, Hakuhodo DY Music & Pictures, BS11, Egg Firm, Ichijinsha, Bit grooove promotion, Pia",
      licensors: "Crunchyroll",
      studios: "Studio Bind",
      genres: "Comedy",
    ),
    TourismPlace(
      japaneseTitles: "劇場版 ソードアート・オンライン -オーディナル・スケール-",
      englishTitles: "Sword Art Online: Ordinal Scale",
      type: "Movie",
      episodes: "1",
      status: "Finished Airing",
      synopsis:
          "In 2026, four years after the infamous Sword Art Online incident, a revolutionary new form of technology has emerged: the Augma, a device that utilizes an Augmented Reality system. Unlike the Virtual Reality of the NerveGear and the Amusphere, it is perfectly safe and allows players to use it while they are conscious, creating an instant hit on the market. The most popular application for the Augma is the game Ordinal Scale, which immerses players in a fantasy role-playing game with player rankings and rewards.\n\nFollowing the new craze, Kirito's friends dive into the game, and despite his reservations about the system, Kirito eventually joins them. While at first it appears to be just fun and games, they soon find out that the game is not all that it seems...\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1557/123313.jpg",
      videoUrl: "https://www.youtube.com/watch?v=32FLqOWjUfI",
      producers:
          "Aniplex, Genco, ASCII Media Works, Bandai Namco Entertainment, Egg Firm",
      licensors: "Aniplex of America",
      studios: "A-1 Pictures",
      genres: "Action, Adventure, Fantasy",
    ),
    TourismPlace(
      japaneseTitles: "劇場版「Fate/stay night [Heaven's Feel] I.presage flower」",
      englishTitles: "Fate/stay night Movie: Heaven's Feel - I. Presage Flower",
      type: "Movie",
      episodes: "1",
      status: "Finished Airing",
      synopsis:
          "The Holy Grail War: a violent battle between mages in which seven masters and their summoned servants fight for the Holy Grail, a magical artifact that can grant the victor any wish. Nearly 10 years ago, the final battle of the Fourth Holy Grail War wreaked havoc on Fuyuki City and took over 500 lives, leaving the city devastated. \n\nShirou Emiya, a survivor of this tragedy, aspires to become a hero of justice like his rescuer and adoptive father, Kiritsugu Emiya. Despite only being a student, Shirou is thrown into the Fifth Holy Grail War when he accidentally sees a battle between servants at school and summons his own servant, Saber. \n\nWhen a mysterious shadow begins a murderous spree in Fuyuki City, Shirou aligns himself with Rin Toosaka, a fellow participant in the Holy Grail War, in order to stop the deaths of countless people. However, Shirou's feelings for his close friend Sakura Matou lead him deeper into the dark secrets surrounding the war and the feuding families involved.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1274/102213.jpg",
      videoUrl: "https://www.youtube.com/watch?v=AMr5pXzpvP0",
      producers: "Aniplex, Notes, Kadokawa",
      licensors: "Aniplex of America",
      studios: "ufotable",
      genres: "Action, Fantasy, Supernatural",
    ),
    TourismPlace(
      japaneseTitles: "劇場版「Fate/stay night [Heaven's Feel] II.lost butterfly」",
      englishTitles:
          "Fate/stay night Movie: Heaven's Feel - II. Lost Butterfly",
      type: "Movie",
      episodes: "1",
      status: "Finished Airing",
      synopsis:
          "The Fifth Holy Grail War continues, and the ensuing chaos results in higher stakes for all participants. Shirou Emiya continues to participate in the war, aspiring to be a hero of justice who saves everyone. He sets out in search of the truth behind a mysterious dark shadow and its murder spree, determined to defeat it.\n\nMeanwhile, Shinji Matou sets his own plans into motion, threatening Shirou through his sister Sakura Matou. Shirou and Rin Toosaka battle Shinji, hoping to relieve Sakura from the abuses of her brother. But the ugly truth of the Matou siblings begins to surface, and many dark secrets are exposed.\n\nFate/stay night Movie: Heaven's Feel - II. Lost Butterfly continues to focus on the remaining Masters and Servants as they fight each other in the hopes of obtaining the Holy Grail. However, as darkness arises within Fuyuki City, even the state of their sacred war could be in danger.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1974/98158.jpg",
      videoUrl: "https://www.youtube.com/watch?v=NhJQDAIwQVc",
      producers: "Aniplex, Notes, Kadokawa",
      licensors: "Aniplex of America",
      studios: "ufotable",
      genres: "Action, Fantasy, Supernatural",
    ),
    TourismPlace(
      japaneseTitles: "劇場版「Fate/stay night [Heaven's Feel] III.spring song」",
      englishTitles: "Fate/stay night Movie: Heaven's Feel - III. Spring Song",
      type: "Movie",
      episodes: "1",
      status: "Finished Airing",
      synopsis:
          "The Fifth Holy Grail War in Fuyuki City has reached a turning point in which the lives of all participants are threatened as the hidden enemy finally reveals itself. As Shirou Emiya, Rin Toosaka, and Illyasviel von Einzbern discover the true, corruptive nature of the shadow that has been rampaging throughout the city, they realize just how dire the situation is. In order to protect their beloved ones, the group must hold their own against the seemingly insurmountable enemy force—even if some of those foes were once their allies, or perhaps, something more intimate.\n\nAs the final act of this chaotic war commences, the ideals Shirou believes will soon be challenged by an excruciating dilemma: is it really possible to save a world where everything seems to have gone wrong?\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1142/112957.jpg",
      videoUrl: "https://www.youtube.com/watch?v=zfjbLLxdZOU",
      producers: "Aniplex, Notes, Kadokawa",
      licensors: "Aniplex of America",
      studios: "ufotable",
      genres: "Action, Fantasy, Supernatural",
    ),
    TourismPlace(
      japaneseTitles: "君の膵臓をたべたい",
      englishTitles: "I Want To Eat Your Pancreas",
      type: "Movie",
      episodes: "1",
      status: "Finished Airing",
      synopsis:
          "The aloof protagonist: a bookworm who is deeply detached from the world he resides in. He has no interest in others and is firmly convinced that nobody has any interest in him either. His story begins when he stumbles across a handwritten book, titled Living with Dying. He soon identifies it as a secret diary belonging to his popular, bubbly classmate Sakura Yamauchi. She then confides in him about the pancreatic disease she is suffering from and that her time left is finite. Only her family knows about her terminal illness; not even her best friends are aware. Despite this revelation, he shows zero sympathy for her plight, but caught in the waves of Sakura's persistent buoyancy, he eventually concedes to accompanying her for her remaining days.\n\nAs the pair of polar opposites interact, their connection strengthens, interweaving through their choices made with each passing day. Her apparent nonchalance and unpredictability disrupts the protagonist's impassive flow of life, gradually opening his heart as he discovers and embraces the true meaning of living.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1768/93291.jpg",
      videoUrl: "https://www.youtube.com/watch?v=MONVPR1dnRQ",
      producers: "Aniplex, ABC Animation",
      licensors: "Aniplex of America",
      studios: "Studio VOLN",
      genres: "Drama, Romance",
    ),
    TourismPlace(
      japaneseTitles: "恋する小惑星〈アストロイド〉",
      englishTitles: "Asteroid in Love",
      type: "TV",
      episodes: "12",
      status: "Finished Airing",
      synopsis:
          "In a fateful childhood encounter, Mira Kinohata met a stargazing dreamer named Ao Manaka. Though their time together was short, Ao showed Mira the wonders of astronomy, from orbiting planets to distant stars. Before they parted, Mira learned that a star with her name exists, but there are none with Ao's. And so, she forged a promise: one day, she would discover a new asteroid and name it after Ao.\n\nYears later, Mira is still fascinated with astronomy. Now in high school at Hoshizaki Academy, she tries to join the Astronomy Club. Unfortunately, she finds out that the club has been merged with the Geology Club to form a single Earth Sciences Club. She joins this new club and finds a pleasant surprise—she reunites with Ao after years of separation.\n\nAlongside their new clubmates, Mira and Ao begin their journey together to fulfill their promise. How hard could it possibly be to find an asteroid?\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/1142/111693.jpg",
      videoUrl: "https://www.youtube.com/watch?v=HmPSEs5OSts",
      producers:
          "AT-X, flying DOG, Houbunsha, Kadokawa Media House, RAY, Kadokawa, GRANTdesign",
      licensors: "Funimation",
      studios: "Doga Kobo",
      genres: "Slice of Life",
    ),
    TourismPlace(
      japaneseTitles: "ゆるキャン△",
      englishTitles: "Laid-Back Camp",
      type: "TV",
      episodes: "12",
      status: "Finished Airing",
      synopsis:
          "While the perfect getaway for most girls her age might be a fancy vacation with their loved ones, Rin Shima's ideal way of spending her days off is camping alone at the base of Mount Fuji. From pitching her tent to gathering firewood, she has always done everything by herself, and has no plans of leaving her little solitary world.\n\nHowever, what starts off as one of Rin's usual camping sessions somehow ends up as a surprise get-together for two when the lost Nadeshiko Kagamihara is forced to take refuge at her campsite. Originally intending to see the picturesque view of Mount Fuji for herself, Nadeshiko's plans are disrupted when she ends up falling asleep partway to her destination. Alone and with no other choice, she seeks help from the only other person nearby. Despite their hasty introductions, the two girls nevertheless enjoy the chilly night together, eating ramen and conversing while the campfire keeps them warm. And even after Nadeshiko's sister finally picks her up later that night, both girls silently ponder the possibility of another camping trip together.\n\n[Written by MAL Rewrite]",
      imageUrl: "https://cdn.myanimelist.net/images/anime/4/89877.jpg",
      videoUrl: "https://www.youtube.com/watch?v=vpH42sJ8t9c",
      producers:
          "Sotsu, AT-X, Sony Music Communications, MAGES., 81 Produce, BS11, FuRyu, Crunchyroll SC Anime Fund",
      licensors: "Crunchyroll",
      studios: "C-Station",
      genres: "Slice of Life",
    ),
  ];

  List<TourismPlace> filteredList = [];

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                filteredList = tourismPlaceList
                    .where((place) => place.englishTitles
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();
              });
            },
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.center,
                children: filteredList.isEmpty
                    ? tourismPlaceList.map((place) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(place: place);
                              }),
                            );
                          },
                          child: Consumer<DoneTourismProvider>(
                            builder:
                                (context, DoneTourismProvider data, widget) {
                              return ListItem(
                                place: place,
                                isDone:
                                    data.doneTourismPlaceList.contains(place),
                                onCheckboxClick: (bool? value) {
                                  setState(() {
                                    if (value != null) {
                                      data.complete(place, value);
                                    }
                                  });
                                },
                              );
                            },
                          ),
                        );
                      }).toList()
                    : filteredList.map((place) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(place: place);
                              }),
                            );
                          },
                          child: Consumer<DoneTourismProvider>(
                            builder:
                                (context, DoneTourismProvider data, widget) {
                              return ListItem(
                                place: place,
                                isDone:
                                    data.doneTourismPlaceList.contains(place),
                                onCheckboxClick: (bool? value) {
                                  setState(() {
                                    if (value != null) {
                                      data.complete(place, value);
                                    }
                                  });
                                },
                              );
                            },
                          ),
                        );
                      }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     child: SingleChildScrollView(
  //       child: Wrap(
  //         spacing: 16.0,
  //         runSpacing: 16.0,
  //         alignment: WrapAlignment.center,
  //         children: tourismPlaceList.map((place) {
  //           return InkWell(
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) {
  //                   return DetailScreen(place: place);
  //                 }),
  //               );
  //             },
  //             child: Consumer<DoneTourismProvider>(
  //               builder: (context, DoneTourismProvider data, widget) {
  //                 return ListItem(
  //                   place: place,
  //                   isDone: data.doneTourismPlaceList.contains(place),
  //                   onCheckboxClick: (bool? value) {
  //                     setState(() {
  //                       if (value != null) {
  //                         data.complete(place, value);
  //                       }
  //                     });
  //                   },
  //                 );
  //               },
  //             ),
  //           );
  //         }).toList(),
  //       ),
  //     ),
  //   );
  // }
}

// final List<TourismPlace> _doneTourismPlaceList = [];

//   List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

//   void complete(TourismPlace place, bool isDone) {
//     isDone
//         ? _doneTourismPlaceList.add(place)
//         : _doneTourismPlaceList.remove(place);
//     notifyListeners();


