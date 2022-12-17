<?php
session_start();
include_once("inc/inc_koneksi.php");
include_once("inc/inc_fungsi.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ayo Kerja !</title>
    <link rel="stylesheet" href="<?php echo url_dasar() ?>/css/style.css">
</head>

<body>
    <nav>
        <div class="wrapper">
            <div class="logo"><a href='<?php echo url_dasar() ?>'>Ayo Kerja !</a></div>
            <div class="menu">
                <ul>
                    <li><a href="<?php echo url_dasar() ?>#home">Home</a></li>
                    <li><a href="../webcoba/loker-apps/index.php">Loker</a></li>
                    <li><a href="<?php echo url_dasar() ?>#tutors">Perusahaan</a></li>
                    <li><a href="<?php echo url_dasar() ?>#partners">Partners</a></li>
                    <li><a href="<?php echo url_dasar() ?>#contact">Contact</a></li>
                    <li>
                        <?php if (isset($_SESSION['members_nama_lengkap'])) {
                            echo "<a href='" . url_dasar() . "/ganti_profile.php'>" . $_SESSION['members_nama_lengkap'] . "</a> | <a href='" . url_dasar() . "/logout.php'>Logout</a>";
                        } else { ?>
                            <a href="../webcoba/loker-apps/portal/signup.php" class="tbl-biru">Sign Up</a>
                        <?php } ?>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper">