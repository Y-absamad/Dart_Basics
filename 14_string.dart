void main() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";

  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' == 'Dart has string interpolation, ' 'which is very handy.');
  assert('That deserves all caps. ' '${s.toUpperCase()} is very handy!' == 'That deserves all caps. ' 'STRING INTERPOLATION is very handy!');



  //You can concatenate strings using adjacent string literals or the + operator:  
  var s5 = 'String ' 'concatenation' " works even over line breaks.";
  assert(s5 =='String concatenation works even over ' 'line breaks.');


  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The + operator works, as well.');

  //to create a multi-line string, use a triple quote with either single or double quotation marks:
  var s7 = '''You can create multi-line strings like this one.''';
  var s8 = """This is also amulti-line string.""";

  // check for an empty string
  var fullName = '';
  assert(fullName.isEmpty);
}
