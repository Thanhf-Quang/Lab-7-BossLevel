import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Bạn tỉnh dậy sau vụ tai nạn máy bay. Có khói, tiếng kêu cứu và vài người sống sót gần bạn.',
        choice1: 'Chạy đi tìm người sống sót gần đó.',
        choice2: 'Nhanh chóng tìm vật dụng cần thiết (nước, đồ y tế).',),
    Story(
      storyTitle:
      'Bạn phát hiện một người bị thương nặng – là một bác sĩ. Bạn đưa anh ta về chỗ an toàn.',
      choice1: 'Tiếp tục tìm kiếm khu vực quanh đó.',
      choice2: 'Ở lại cùng nhóm, chuẩn bị nơi trú ẩn.',),
    Story(
        storyTitle:
        'Bạn tìm được nước và túi sơ cứu. Khi quay lại, vài người đã mất tích vì không được giúp.',
        choice1: 'Tiếp tục tìm thêm vật dụng khác.',
        choice2: 'Quay về giúp dựng lán trú ẩn với nhóm.'),
    Story(
        storyTitle:
        'Đêm đầu tiên, bạn nghe thấy tiếng động lạ trong rừng.',
        choice1: 'Đi kiểm tra.',
        choice2: 'Ở yên trong lán tạm.'),
    Story(
        storyTitle:
        'Bạn phát hiện một con vật săn mồi nhỏ đang lảng vảng. Bạn xua đuổi nó nhưng bị nó tấn công.',
        choice1: 'Chơi lại',
        choice2: ''),
    Story(
        storyTitle:
        'Lều bị phá và đồ ăn bị lấy mất. Nhóm hoang mang và bắt đầu tranh cãi.',
        choice1: 'Chơi lại',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {

    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}