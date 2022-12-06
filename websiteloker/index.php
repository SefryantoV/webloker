<?php include("inc_header.php") ?>
<!-- untuk home -->
<section id="home">

    <img src="<?php echo ambil_gambar('14') ?>" />
    <div class="kolom">
        <p class="deskripsi"><?php echo ambil_kutipan('14') ?></p>
        <h2><?php echo ambil_judul('14') ?></h2>
        <?php echo maximum_kata(ambil_isi('14'), 10) ?>
        <p><a href="<?php echo buat_link_halaman('14') ?>" class="tbl-pink">Pelajari Lebih Lanjut</a></p>
    </div>
</section>

<!-- untuk courses -->
<section id="courses">
    <div class="kolom">
        <p class="deskripsi"><?php echo ambil_kutipan('10') ?></p>
        <h2><?php echo ambil_judul('10') ?></h2>
        <?php echo maximum_kata(ambil_isi('10'), 30) ?>
        <p><a href="<?php echo buat_link_halaman('10') ?>" class="tbl-biru">Pelajari Lebih Lanjut</a></p>
    </div>
    <img src="<?php echo ambil_gambar('10') ?>" />
</section>

<!-- untuk tutors -->
<section id="tutors">
    <div class="tengah">
        <div class="kolom">
           <!-- <p class="deskripsi">cari tahu tentang perusahaan terpopuler sekarang</p> -->
            <h2>Perusahaan Populer</h2>
            <p>Cari tahu tentang Perusahaan terpopuler sekarang !</p>
        </div>

        <div class="tutor-list">
            <?php
            $sql1 = "select * from perusahaan order by id desc";
            $q1 = mysqli_query($koneksi, $sql1);
            while ($r1 = mysqli_fetch_array($q1)) {
            ?>
                <div class="kartu-tutor">
                    <a href="<?php echo buat_link_perusahaan($r1['id'])?>">
                    <img src="<?php echo url_dasar()."/gambar/".perusahaan_foto($r1['id'])?>" />
                    <p><?php echo $r1['nama']?></p>
            </a>
                </div>
            <?php
            }
            ?>

        </div>
    </div>
</section>

<!-- untuk partners -->
<section id="partners">
    <div class="tengah">
        <div class="kolom">
            <!-- <p class="deskripsi">Our Top Partners</p> -->
            <h2>Partners</h2>
            <p>Perusahaan yang bekerjasama dengan kami.</p>
        </div>

        <div class="partner-list">
            <div class="kartu-partner">
                <img src="https://www.designevo.com/res/templates/thumb_small/black-wheat-and-mortarboard.png" />
            </div>
            <div class="kartu-partner">
                <img src="https://image.freepik.com/free-vector/campus-collage-university-education-logo-design-template_7492-63.jpg" />
            </div>
            <div class="kartu-partner">
                <img src="https://image.freepik.com/free-vector/campus-collage-university-education-logo-design-template_7492-62.jpg" />
            </div>
            <div class="kartu-partner">
                <img src="https://www.designevo.com/res/templates/thumb_small/encircled-branches-and-book.png" />
            </div>
            <div class="kartu-partner">
                <img src="https://image.freepik.com/free-vector/campus-collage-university-education-logo-design-template_7492-64.jpg" />
            </div>
        </div>
    </div>
</section>
<?php include("inc_footer.php") ?>