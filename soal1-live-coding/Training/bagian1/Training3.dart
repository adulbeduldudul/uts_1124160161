  class Mahasiswa{
    Mahasiswa({
      required this.nim,
      required this.nama,
      required this.jurusan,
      this.org
    });
    final String nim;
    final String nama;
    final String jurusan;
    final String? org;
  }

  String perkenalan(){
    return 'halo nama saya $nama, nim saya $nim, saya jurusan $jurusan' + (org != null ? ' dan saya anggota $org' : '');
  }
  void main(){
    final mahasiswa1= Mahasiswa(
      nim: '123456789',
      nama: 'Sayyid abdul wasye',
      jurusan: 'Teknik Informatika',
      org : 'UKM Pencak Silat'
    );
    print(mahasiswa1.perkenalan());

  }