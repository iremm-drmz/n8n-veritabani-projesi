# PostgreSQL ve n8n Tabanlı Veri Otomasyonu ve Yapay Zeka Raporlama Sistemi

Bu proje, ham satış verilerini (CSV) otomatik olarak işleyen, PostgreSQL veritabanında depolayan, verileri analiz edip Yapay Zeka (AI) destekli dinamik bir HTML/PDF raporu üreten otonom bir veri boru hattı (pipeline) mimarisidir.

Sistem tamamen Docker konteynerleri üzerinde çalışmakta olup, kurulumu ve test edilmesi son derece kolaydır.

---

## 🚀 Projeyi Çalıştırma Adımları

Hocamızın projeyi yerel bilgisayarında başlatması ve test etmesi için aşağıdaki 3 adımı izlemesi yeterlidir:

### 1. Sistem Servislerini Başlatma (PostgreSQL ve n8n)
Proje klasörünün içerisinde bir terminal (CMD, PowerShell veya Bash) açarak aşağıdaki komutu çalıştırın:

```bash
docker compose up -d
```

Bu komut:
* **PostgreSQL 15** veritabanını (`n8n_postgres_db`) başlatır ve `schema.sql` dosyasını otomatik olarak içe aktararak tablo şemasını hazırlar.
* **n8n** platformunu (`n8n_app`) `http://localhost:5678` adresinde ayağa kaldırır.

### 2. n8n İş Akışını İçe Aktarma
1. Tarayıcınızdan `http://localhost:5678` adresine giderek n8n arayüzünü açın (ilk girişte ücretsiz bir hesap oluşturmanız veya geçmeniz istenebilir).
2. Yeni bir boş iş akışı (workflow) oluşturun.
3. Sağ üstteki üç noktaya tıklayarak **"Import from File"** seçeneğini seçin ve bu klasördeki **`CSV AI Raporlama Otomasyonu.json`** dosyasını seçin.
4. İş akışı n8n ekranınıza yüklenecektir. Sağ üstteki **"Save"** butonuna basarak iş akışını kaydedin.

### 3. Otomasyonu Test Etme ve Raporu Görüntüleme
* İş akışının aktif olması için sağ alttaki **"Active"** anahtarını açık konuma getirin.
* n8n üzerindeki **"Raporu Başlat" (Webhook)** düğümünü tetiklemek veya raporu tarayıcıda doğrudan görmek için şu adrese gidin:
  ```
  http://localhost:5678/webhook/rapor
  ```
* Bu adrese girdiğinizde, arka planda CSV verileri okunacak, PostgreSQL veritabanına kaydedilecek, SQL sorgusuyla analiz edilecek, yapay zeka özet analizi yapılacak ve tarayıcınıza anlık olarak **görsel bir Yapay Zeka Raporu** yansıtılacaktır!

---

## 📂 Proje Dosyaları ve Yapısı

* **`CSV AI Raporlama Otomasyonu.json`**: n8n otomasyon şablonu (iş akışı düğümleri).
* **`docker-compose.yml`**: PostgreSQL ve n8n konteyner konfigürasyonları.
* **`schema.sql`**: İlişkisel veritabanı yapısı (satışlar tablosu) ve veri analiz sorguları.
* **`satis_verileri.csv`**: Otomasyonun işlediği örnek satış veri seti.

---

*Bu proje veri tabanı ve süreç otomasyonu entegrasyonunu sergilemek amacıyla akademik standartlarda hazırlanmıştır.*
