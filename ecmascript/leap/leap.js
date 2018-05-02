class Year {
  constructor(year) {
    this.year = year
  }

  isLeap() {
    const year = this.year;
    switch (true) {
      case (year % 100 === 0 && year % 400 === 0):
        return true
        break;
      case (year % 100 === 0):
        return false
        break;
      case (year % 4 === 0):
        return true
        break;
    }
  }
}

export default Year;
