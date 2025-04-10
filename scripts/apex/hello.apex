public static String firstNonRepeat(String str) {
    // Write your code here
    if (str == null || str == '') {
        return null;
    }

    List<String> letters = str.split('');

    Map<String, Integer> countLetters = new Map<String, Integer>();

    for (String str1 : letters) {
        if (countLetters.containsKey(str1)) {
            countLetters.put(str1, countLetters.get(str1) + 1);
        } else {
            countLetters.put(str1, 1);
        }
    }

    String foundIt = '';
    for (String str2 : letters) {
        if (countLetters.get(str2) == 1) {
            foundIt = str2;
            return foundIt;
        } else {
            return null;
        }
    }
}

