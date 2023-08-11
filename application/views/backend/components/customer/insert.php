<?php echo form_open_multipart('admin/customer/insert'); ?>
<div class="content-wrapper" style="min-height: 454px;">
    <form action="<?php echo base_url() ?>admin/customer/insert.html" enctype="multipart/form-data" method="POST"
        accept-charset="utf-8">
        <section class="content-header">
            <h1><i class="fa fa-user-plus"></i> Thêm thành viên</h1>
            <div class="breadcrumb">
                <button name="THEM_NEW" type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-floppy-save"></span> Lưu [Thêm]
                </button>
                <a class="btn btn-primary btn-sm" href="admin/customer" role="button">
                    <span class="glyphicon glyphicon-remove"></span> Thoát
                </a>
            </div>
        </section>
        <section class="content">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-body">
                            <!--ND-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>User<span class="maudo">(*)</span></label>
                                    <input type="text" name="username" class="form-control">
                                    <div class="error" id="username_error"><?php echo form_error('username')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Password<span class="maudo">(*)</span></label>
                                    <input type="text" name="password" class="form-control">
                                    <div class="error" id="password_error"><?php echo form_error('password')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Họ và tên <span class="maudo">(*)</span></label>
                                    <input type="text" name="name" class="form-control">
                                    <div class="error" id="name_error"><?php echo form_error('name')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Điện thoại <span class="maudo">(*)</span></label>
                                    <input type="text" name="phone" class="form-control">
                                    <div class="error" id="phone_error"><?php echo form_error('phone')?></div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email <span class="maudo">(*)</span></label>
                                    <input type="email" name="email" class="form-control">
                                    <div class="error" id="email_error"><?php echo form_error('email')?></div>
                                </div>
                                <!-- <div class="form-group">
                                    <label>Giới tính</label>
                                    <select name="gender" class="form-control" style="max-width:30%">
                                        <option value="1">Nam</option>
                                        <option value="0">Nữ</option>
                                    </select>
                                </div> -->
                                <div class="form-group">
                                    <label>Chức vụ<span class="maudo">(*)</span></label>
                                    <input type="text" name="chucvu" class="form-control">
                                    <div class="error" id="chucvu_error"><?php echo form_error('chucvu')?></div>
                                </div>

                                <div class="form-group">
                                    <label>Trạng thái </label>
                                    <select name="status" class="form-control" style="max-width:30%">
                                        <option value="1">Xuất bản</option>
                                        <option value="0">Chưa xuất bản</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Ảnh đại diện</label>
                                    <input type="file" id="image_list" name="img">
                                </div>
                            </div>
                            <!--/.ND-->
                        </div>
                    </div><!-- /.box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->
    </form>
</div>