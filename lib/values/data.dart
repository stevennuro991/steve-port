part of 'values.dart';

//https://api.github.com/repos/david-legend/nnuroportfolio/stargazers
//https://api.github.com/repos/david-legend/nnuroportfolio/forks
class MenuData {
  MenuData({
    required this.title,
    required this.routeName,
  });

  final String title;
  final String routeName;
}

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class ProjectDetails {
  ProjectDetails({
    required this.projectImage,
    required this.projectName,
    required this.projectDescription,
    this.technologyUsed,
    this.isPublic,
    this.isLive,
    this.isOnPlayStore,
    this.playStoreUrl,
      this.appStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectImage;
  final String projectName;
  final String projectDescription;
  final bool? isPublic;
  final String? appStoreUrl;
  final bool? isOnPlayStore;
  final bool? isLive;
  
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class PortfolioData {
  PortfolioData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.subtitle,
    required this.portfolioDescription,
    this.technologyUsed,
    this.isPublic = false,
    this.isOnPlayStore = false,
    this.isLive = false,
    this.gitHubUrl = "",
    this.appStoreUrl ="",
    this.hasBeenReleased = true,
    this.playStoreUrl = "",
    this.webUrl = "",
  });

  final String image;
  final String portfolioDescription;
  final double imageSize;
  final String title;
  final String subtitle;
  final bool isPublic;
  final bool hasBeenReleased;
  final String gitHubUrl;
  final bool isOnPlayStore;
  final String playStoreUrl;
  final bool isLive;
  final String appStoreUrl;
  final String webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    this.company,
    this.companyUrl,
  });

  final String? company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<MenuData> menuList = [
    MenuData(title: StringConst.HOME, routeName: HomePage.homePageRoute),
    MenuData(title: StringConst.ABOUT_ME, routeName: AboutPage.aboutPageRoute),
    MenuData(
      title: StringConst.PORTFOLIO,
      routeName: PortfolioPage.portfolioPageRoute,
    ),
//    MenuData(
//      title: StringConst.CONTACT,
//      routeName: ContactPage.contactPageRoute,
//    ),
   
    MenuData(title: StringConst.RESUME, routeName: StringConst.RESUME),
   
  ];

  static List<SkillData> skillData = [
    SkillData(skillLevel: 95, skillName: StringConst.FLUTTER),
    SkillData(skillLevel: 70, skillName: StringConst.JAVA),
    SkillData(skillLevel: 78, skillName: StringConst.ANDROID),
    SkillData(skillLevel: 70, skillName: StringConst.KOTLIN),
    SkillData(skillLevel: 80, skillName: StringConst.JAVASCRIPT),
    SkillData(skillLevel: 80, skillName: StringConst.PHP),
    SkillData(skillLevel: 80, skillName: StringConst.LARAVEL),
    SkillData(skillLevel: 80, skillName: StringConst.SQL),
    SkillData(skillLevel: 90, skillName: StringConst.WORDPRESS),
    SkillData(skillLevel: 80, skillName: StringConst.BOOTSTRAP),
    SkillData(skillLevel: 80, skillName: StringConst.HTML_CSS),
  ];

  static List<SubMenuData> subMenuData = [
    SubMenuData(
      title: StringConst.KEY_SKILLS,
      isSelected: true,
      isAnimation: true,
      skillData: skillData,
    ),
    SubMenuData(
      title: StringConst.EDUCATION,
      isSelected: false,
      content: StringConst.EDUCATION_TEXT,
    ),
  ];
  static List<PortfolioData> portfolioData = [
    PortfolioData(
      title: StringConst.WeGoo_Delivery,
      subtitle: StringConst.WeGoo_Delivery_SUBTITLE,
      image: ImagePath.WeGoo_Delivery,
      portfolioDescription: StringConst.WeGoo_Delivery_DETAIL,
      imageSize: 0.15,
      technologyUsed: StringConst.FLUTTER,
      playStoreUrl: StringConst.WeGoo_Delivery_PlayStore_URL,
      appStoreUrl: StringConst.WeGoo_Delivery_APPStore_URL,
      isOnPlayStore:true,
    ),
    PortfolioData(
      title: StringConst.MyFitta,
      subtitle: StringConst.MyFitta_SUBTITLE,
      image: ImagePath.MyFitta,
      portfolioDescription: StringConst.MyFitta_DETAIL,
      imageSize: 0.15,
      technologyUsed: StringConst.FLUTTER,
      isOnPlayStore:true,
      playStoreUrl: StringConst.MY_FITTA_PlayStore_URL,
      appStoreUrl: StringConst.MY_FITTA_APPStore_URL,
    ),
    PortfolioData(
      title: StringConst.LIFELINE,
      subtitle: StringConst.LIFELINE_SUBTITLE,
      image: ImagePath.LIFELINE,
      portfolioDescription: StringConst.LIFELINE_DETAIL,
      imageSize: 0.3,
      isPublic: true,
      technologyUsed: StringConst.WORDPRESS,
      isLive: true,
      webUrl: StringConst.LIFELINE_WEB,
    ),
    PortfolioData(
      title: StringConst.MYASSEMBLY,
      subtitle: StringConst.MYASSEMBLY_SUBTITLE,
      image: ImagePath.MYASSEMBLY,
      portfolioDescription: StringConst.MYASSEMBLY_DETAIL,
      imageSize: 0.45,
      technologyUsed: StringConst.FLUTTER,
      isOnPlayStore:true,
      playStoreUrl: StringConst.myAssembly_PlayStore_URL,
   
    ),
   
  
  ];

}
