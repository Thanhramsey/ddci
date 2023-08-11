<!--Team Start-->
<section class="text-center" id="team">
    <div class="container">
        <!--Row-->
        <div class="row">
            <div class="col-md-12">
                <div class="heading-area mx-570 mb-5">
                    <h2 class="title">HỘI ĐỒNG <span class="alt-color js-rotating">ĐÁNH GIÁ, THẨM ĐỊNH</span></h2>
                </div>
            </div>
        </div>
        <!--Row-->
        <div class="row wow fadeInUp">

            <?php if(count($list)==0): ?>
            <p>Không có sản phẩm !</p>
            <?php else : ?>
            <?php foreach ($list as $sp) :?>

            <div class="col-md-4">
                <div class="team-item">
                    <!--Team Image-->
                    <img alt="image" class="team-image" src="<?php echo base_url() ?>/public/agency/img/man.png">
                    <!--Name-->
                    <div class="name">
                        <img alt="shape" src="<?php echo base_url() ?>/public/agency/img/shape-10.png">
                        <h6><?php echo $sp['fullname'] ?></h6>
                    </div>
                    <!--Designation-->
                    <p class="designation mb-2"><?php echo $sp['phone'] ?></p>
                    <p class="designation mb-2"><?php echo $sp['chucvu'] ?></p>
                    <!--Team Social-->
                </div>
            </div>

            <?php endforeach; ?>
        </div>

        <div class="text-center pull-right">
            <ul class="pagination">
                <?php echo $strphantrang; ?>
            </ul>
        </div>
        <?php endif; ?>
    </div>
</section>
<!--Team End-->