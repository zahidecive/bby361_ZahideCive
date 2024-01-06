<?php
/* Bağlantı bilgilerinin alınması */
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
if (isset($_POST['eserAdi'], $_POST['eserURL'], $_POST['yazarID'], $_POST['konuID'], $_POST['yayineviID'])) {
    $eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
    $eserURL = mysqli_real_escape_string($baglanti, $_POST['eserURL']);
    $yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
    $konuID = mysqli_real_escape_string($baglanti, $_POST['konuID']);
    $yayineviID = mysqli_real_escape_string($baglanti, $_POST['yayineviID']);

    // Eğer aynı URL ile başka bir kayıt varsa işlemi durdur
    $eserURLCheckQuery = "SELECT COUNT(*) as count FROM eserler WHERE eserURL = '$eserURL'";
    $eserURLCheckResult = mysqli_query($baglanti, $eserURLCheckQuery);
    $eserURLCount = mysqli_fetch_assoc($eserURLCheckResult)['count'];

    if ($eserURLCount > 0) {
        // Aynı URL ile başka bir kayıt zaten var, işlemi durdur
        echo "Bu URL zaten mevcut.";
        exit;
    }

    // Aynı URL ile başka bir kayıt yoksa, yeni kaydı ekleyin
    $sorgu = "INSERT IGNORE INTO eserler (eserAdi, eserURL, yazarID, konuID, yayineviID)
                VALUES ('$eserAdi', '$eserURL', $yazarID, $konuID, $yayineviID)";

    if (mysqli_query($baglanti, $sorgu)) {
        mysqli_close($baglanti);
        if (!headers_sent()) {
            header("Location: eserleri_listele.php");
            exit;
        }
    } else {
        printf("Hata: " . $sorgu . "<br>" . mysqli_error($baglanti));
    }
} else {
    echo "Lütfen gerekli alanları doldurun.";
}
?>
