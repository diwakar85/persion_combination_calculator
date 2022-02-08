class Brain {
  String getMessage(int lovePercent) {
    if (lovePercent >= 90) {
      return "Great! Made for each other🥰🌷❤......";
    } else if (lovePercent >= 60 && lovePercent <= 89) {
      return "Good! You should work more on your relationship👍......";
    }else if (lovePercent >= 40 && lovePercent <= 59) {
      return "if you make each other relationship,your choice😊......";
    }
    else {
      return "Okay! your bad realtionship😥😣🥱......";
    }
  }
}
