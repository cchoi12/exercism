module.exports = function reverseString(string) {
  if (!string) {
    return string;
  }
  
  return Array.from(string).reduce((accumulator, element) =>
    element + accumulator
  , '');
};
