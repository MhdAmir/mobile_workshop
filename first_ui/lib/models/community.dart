class Community {
  String imageCommunity;
  String imageGroup;
  String communityName;
  String groupName;
  String messageDate;
  String mostRecentMessage;
  Community({
    required this.imageCommunity,
    required this.imageGroup,
    required this.communityName,
    required this.groupName,
    required this.messageDate,
    required this.mostRecentMessage,
  });
}


var communityList = [
  Community(
      imageCommunity: 'https://www.shutterstock.com/image-vector/group-people-icon-260nw-342536540.jpg',
      imageGroup: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMvsSeDYTyG0g58X4YTEF_EV3ZmWmQ3-5hfZDOj7RZKA&s',
      communityName: 'Komunitas Mobile',
      groupName: 'Extends',
      messageDate: '07/12/2023',
      mostRecentMessage: 'Hari ini belajar Flutter?'),
  Community(
      imageCommunity: 'https://www.shutterstock.com/image-vector/group-people-icon-260nw-342536540.jpg',
      imageGroup: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMvsSeDYTyG0g58X4YTEF_EV3ZmWmQ3-5hfZDOj7RZKA&s',
      communityName: 'HACKFEST 2024',
      groupName: 'GDSC',
      messageDate: '07/11/2023',
      mostRecentMessage: 'Hari ini puasa?'),
];
