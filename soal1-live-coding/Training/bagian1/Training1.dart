///ignore_for_this_file:avoid_print

class Kucing{
  Kucing(this.name);
  final String name;
}

void main(){
  final kucing1= Kucing('moli');
  final kucing2= Kucing('kiki');
  final kucing3= Kucing('koko');

  print(kucing1.name);
  print(kucing2.name);
  print(kucing3.name);
}