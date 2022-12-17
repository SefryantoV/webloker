<?php include("inc_header.php") ?>
<?php
if (isset($_SESSION['members_email']) != '') {
    header("location:index.php");
    exit();
}
?>
<h3>Pendaftaran</h3>
<?php
$email        = "";
$nama_lengkap = "";
$err          = "";
$success       = "";

if (isset($_POST['simpan'])) {
    $email               = $_POST['email'];
    $nama_lengkap        = $_POST['nama_lengkap'];
    $password            = $_POST['password'];
    $konfirmasi_password = $_POST['konfirmasi_password'];

    if ($email == '' or $nama_lengkap == '' or $konfirmasi_password == '' or $password == '') {
        $err .= "<li>Silahkan masukkan sebuah isian.</li>";
    }

    //cek dibagian db, apakah email sudah ada atau belum
    if ($email != '') {
        $sql1 = "select email from members where email = '$email'";
        $q1 = mysqli_query($koneksi, $sql1);
        $n1 = mysqli_num_rows($q1);
        if ($n1 > 0) {
            $err .= "<li>Email yang kamu masukkan telah terdaftar.</li>";
        }

        //validasi email
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $err .= "<li>Email yang dimasukkan tidak valid.</li>";
        }
    }

    // cek kesesuain password dan konfirmasi password
    if ($password != $konfirmasi_password) {
        $err .= "<li>Password dan konfirmasi password tidak sesuai</li>";
    }
    if (strlen($password) < 6) {
        $err .= "<li>Panjang karakter yang diizinkan untuk password minimal memiliki 6 karakter.</li>";
    }

    if (empty($err)) {

        $status         = "1";
        $judul_email    = "Halaman Konfirmasi Pendaftaran";
        $isi_email      = "Akun yang kamu miliki dengan email <b>$email</b> telah siap digunakan.<br/>";




        $sql1    = "insert into members(email, nama_lengkap, password, status) values ('$email', '$nama_lengkap',md5($password),'$status')";
        $q1 = mysqli_query($koneksi, $sql1);
        if ($q1) {
            $success = "Proses Berhasil. Silahkan Login";
        }
    }
}
?>
<?php if ($err) {
    echo "<div class ='error'><ul>$err</ul></div>";
} ?>
<?php if ($success) {
    echo "<div class ='success'>$success</div>";
} ?>
<form action="" method="POST">
    <table>
        <tr>
            <td class="label">Email</td>
            <td>
                <input type="text" name="email" class="input" value="<?php echo $email ?>" />
            </td>
        </tr>
        <tr>
            <td class="label">Nama Lengkap</td>
            <td>
                <input type="text" name="nama_lengkap" class="input" value="<?php echo $nama_lengkap ?>" />
            </td>
        </tr>
        <tr>
            <td class="label">Password</td>
            <td>
                <input type="password" name="password" class="input" />
            </td>
        </tr>
        <tr>
            <td class="label">Konfirmasi Password</td>
            <td>
                <input type="password" name="konfirmasi_password" class="input" />
                <br>
                Sudah punya akun? Silahkan <a href='../webcoba/loker-apps/portal/login.php'>Login</a>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="simpan" value="simpan" class="tbl-biru" />
            </td>
        </tr>
    </table>
</form>

<?php include("inc_footer.php") ?>