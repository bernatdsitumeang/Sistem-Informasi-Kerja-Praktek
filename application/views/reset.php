<div class="card">
						<div class="card-body">
							<?php if ($this->session->flashdata('sukses')) { ?>
								<div class="alert alert-success">
									<?= $this->session->flashdata('sukses') ?>
								</div>
							<?php } ?>
							<?= form_open('resetc/reset') ?>
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  <button type="submit" class="btn btn-primary" name="submit">Submit</button>
							<?= form_close() ?>
						</div>
</div>