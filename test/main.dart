void main() {
  List<int> originalList = [1, 2, 3];
  List<int> shallowCopy = originalList;

  // 변경 사항이 얕은 복사에 영향을 미칩니다.
  shallowCopy[0] = 10;

  print(originalList); // 출력: [10, 2, 3]
  print(shallowCopy); // 출력: [10, 2, 3]
}
