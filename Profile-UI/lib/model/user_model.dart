class UserModel {
  final String name, urlImage, bio, location;
  final int countFollowers, countFollowing, countPosts;
  bool isFollow;
  final List<String> urlPhotos;

  UserModel(
      this.name,
      this.urlImage,
      this.bio,
      this.location,
      this.countFollowers,
      this.countFollowing,
      this.countPosts,
      this.isFollow,
      this.urlPhotos);
}

final users = <UserModel>[
  UserModel(
      'Bill Gates',
      'https://image.evoke.org/-/media/Images/Evoke/Contributors/BillGates/BillGates_Headshot.ashx',
      'William Henry Gates III (born October 28, 1955) is an American business magnate, software developer, investor, author, and philanthropist. He is a co-founder of Microsoft, along with his late childhood friend Paul Allen.',
      'United States',
      1400,
      100,
      35,
      true, [
    'https://media.gq.com.mx/photos/5ce31739d09b9a184d168a5a/1:1/w_640%2cc_limit/bill%20gates.jpg',
    'https://th.bing.com/th/id/OIP.pd2418rlPV2uaDFMFDkMTQHaDn?w=289&h=170&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://th.bing.com/th/id/OIP.51mOpcLzVEyCWLXlrLnCrQHaEK?w=304&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://th.bing.com/th/id/OIP.25cbCchUjHOpvc5-Nx2rHQHaEK?w=304&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://th.bing.com/th/id/OIP.Yv6-GpZS2nxBG4LcLIz8vQHaE9?w=223&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://th.bing.com/th/id/OIP.9J6QT2yRBobbeFvQdiHxgwHaGL?w=195&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'
  ]),
  UserModel(
      'Steve Jobs',
      'https://i.pinimg.com/236x/34/25/4a/34254a98e370a987fc13543946a799cb.jpg',
      'Steven Paul Jobs (February 24, 1955 – October 5, 2011) was an American entrepreneur, industrial designer, business magnate, media proprietor, and investor.',
      'United States',
      1800,
      501,
      118,
      false, [
    'https://th.bing.com/th/id/OIP.1cqb9FuTBVMfBMvyhRTvPwHaL1?w=119&h=192&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://th.bing.com/th/id/OIP.CYIKuLcHoPSYblZe_LDPxgHaJF?w=157&h=192&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://th.bing.com/th/id/OIP.66BCUzJD5soOBusoAsQlswHaFj?w=256&h=192&c=7&r=0&o=5&dpr=1.25&pid=1.7',
    'https://i.pinimg.com/236x/77/fa/4a/77fa4a16c1cb3e8d4f5eb2970918b276.jpg',
  ]),
];
