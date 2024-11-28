actor hesap_makinesi {

  // Mutable bir değişken: hucre
  var hucre: Int = 0;

  // Toplama işlemi
  public func toplama(s: Int): async Int {
    hucre += s; // hucre'yi güncelle
    return hucre; // Yeni değeri döndür
  };

  // Çıkarma işlemi
  public func cikarma(s: Int): async Int {
    hucre -= s; // hucre'den çıkar
    return hucre; // Yeni değeri döndür
  };

  // Çarpma işlemi
  public func carpma(s: Int): async Int {
    hucre *= s; // hucre'yi s ile çarp
    return hucre; // Yeni değeri döndür
  };

  // Bölme işlemi
  public func bolme(s: Int): async ?Int {
    if (s == 0) {
      return null; // Sıfıra bölme hatası, null döndür
    } else {
      hucre /= s; // hucre'yi s'ye böl
      return ?hucre; // Bölme sonucunu opsiyonel olarak döndür
    };
  };

  // Temizle işlemi: hucre'yi sıfırlar
  public func temizle(): async () {
    hucre := 0; // hucre'yi sıfırla
    return; // Boş değer döndür (async ())
  };

};
