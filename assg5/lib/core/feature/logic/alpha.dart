import 'dart:collection';

List<String> alphabets = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z'
];
Queue<String> queue = Queue<String>();
int i = 0;
String takeAlphabet() {
  if (!queue.contains(alphabets[i])) {
    queue.add(alphabets[i]);
    return alphabets[i];
  } else {
    i++;
    return takeAlphabet();
  }
}
