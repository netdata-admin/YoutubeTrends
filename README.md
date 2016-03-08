# YoutubeTrends
Youtube Trend Videolar Uygulaması
=============
Bütün ülkeler için Youtube trend videoları tek bir ekranda bulabileceğiniz bir uygulamadır. Uygulama verileri Netdata üzerinden xml halinde indirip kullanıcıya göstermektedir.

Bu çalışmanın amacı Netdata üzerinden yapabileceklerinizin bir sınırının olmadığını göstermektir.
Eğer netdata üzerinde bir projeniz varsa dışardan bu projenize erişip ekleme/silme/güncelleme gibi işlemleri Netdata'ya bağlı kalmaksızın yazdığınız uygulama içerisinde gerçekleştirebilirsiniz.

Netdata üzerinden veri çekme
=============
Netdata size birden fazla veri çekme yöntemi sunmaktadır. XML,JSON,SOAP Webservice ve IFRAME size sunduğumuz veri çekme yöntemleridir. Ayrıca verilerinizi URL bazlı filtreleme yaparak dilediğiniz sql sorgularını yazabilir ve sorgu sonucu üretilen verileri uygulamanızda kullanabilirsiniz. Nerede Ne Var uygulaması için Main.aspx ve Admin.aspx sayfalarında XML türünden veriler çektik. Eğer bir projeniz varsa ve dışardan erişime açtıysanız tek yapmanız gereken uygun veri çekme formatını seçmek.

AccPo ile Projeye Veri Ekleme / Silme / Güncelleme
=============
Netdata'nın sizlere sunduğu çözümlerden bir taneside AccPo ile verilerinizi dışardan göndereceğiniz bir WebRequest ile değiştirebilmektir. [Burada](https://github.com/netdata-admin/YoutubeTrends/wiki) AccPo'nun örnek kullanımı yer almaktadır.
