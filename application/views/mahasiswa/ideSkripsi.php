<?php if ($ide_skripsi) { ?>
	<div style="height: 30rem; overflow: auto">
		<?php foreach ($ide_skripsi->result() as $u) {	?>

			<h6 class="card-title"> <i class="fas fa-book fa-xs"></i> <?php echo $u->JudulIde;?></h6>
			<h6 class="card-subtitle mb-2 text-muted"><i class="fas fa-calendar-alt fa-xs"></i> <?php echo $u->TanggalIde;?></h6>

			<p class="card-text text-justify"><?php echo $u->DeskripsiIde;?></p>
			<hr>

		<?php } ?>
	</div> 
<?php } else { ?>
	<div class='row align-items-center'>
		<div class='col-md'>
			<h2>Ide Kerja Praktek Tidak Ditemukan</h2>
			Hi, Teman !!! Saat ini tidak ada ide untuk Kerja Praktek yang sedang dalam proses !! silahkan ajukan ide KP selengkap dan sebagus mungkin ya !! isi form di sebelah kiri untuk mengajukan ide KP yang ingin kamu ajukan ! Kamu hanya boleh mengajukan judul lain saat judul yang pertama kamu ajukan sudah di acc oleh Kaprodi
		</div>
		<div class='col-md-5'>
			<img class="card-img-top" src="<?= base_url('assets/web/ide.jpg')?>">
		</div>
	</div>
<?php } ?>

