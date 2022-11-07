class Counter {
  int count = 0;

  void incrementCount() {
    count++;
  }

  void decrementCount() {
    if (count > 0) count--;
  }

  int getCounter() {
    return count;
  }
}
