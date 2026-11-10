class Mahasiswa{
  Mahasiswa(this.name);
  final String name;

  void nama(){
    print(name);
  }
}

void main(){
  final mahasiswa1= Mahasiswa('Sayyid abdul wasye');
  final mahasiswa2= Mahasiswa('jokowi ijasah palsu');
  final mahasiswa3= Mahasiswa('tedi sayang wowo');

  mahasiswa1.nama();
  mahasiswa2.nama();
  mahasiswa3.nama();
}