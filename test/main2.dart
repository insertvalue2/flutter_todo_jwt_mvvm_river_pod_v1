void main() {
  List<int> originalList = [1, 2, 3];
  List<int> deepCopy = List.from(originalList);

  // 변경 사항이 깊은 복사에만 영향을 미칩니다.
  deepCopy[0] = 10;

  print(originalList); // 출력: [1, 2, 3]
  print(deepCopy); // 출력: [10, 2, 3]
}
