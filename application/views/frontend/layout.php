<!DOCTYPE html>
<html lang="en">

<head>
    <base href="<?php echo base_url(); ?>">
    </base>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
    <!-- Author -->
    <meta name="author" content="Themesindustry">
    <!-- description -->
    <meta name="description" content="DDCI | HỆ THỐNG ĐÁNH GIÁ NĂNG LỰC CẠNH TRANH CÁC SỞ BAN NGÀNH & ĐỊA PHƯƠNG">
    <!-- keywords -->
    <meta name="keywords" content="DDCI | HỆ THỐNG ĐÁNH GIÁ NĂNG LỰC CẠNH TRANH CÁC SỞ BAN NGÀNH & ĐỊA PHƯƠNG">
    <!-- Page Title -->
    <title>DDCI | HỆ THỐNG ĐÁNH GIÁ NĂNG LỰC CẠNH TRANH CÁC SỞ BAN NGÀNH & ĐỊA PHƯƠNG</title>
    <!-- Favicon -->
    <link href="<?php echo base_url() ?>/public/agency/img/favicon.ico" rel="icon">
    <!-- Bundle -->
    <link href="<?php echo base_url() ?>/public/vendor/css/bundle.min.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>/public/vendor/css/revolution-settings.min.css" rel="stylesheet">
    <!-- Plugin Css -->
    <link href="<?php echo base_url() ?>/public/vendor/css/jquery.fancybox.min.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>/public/vendor/css/owl.carousel.min.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>/public/vendor/css/swiper.min.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>/public/vendor/css/cubeportfolio.min.css" rel="stylesheet">
    <!-- Style Sheet -->
    <link href="<?php echo base_url() ?>/public/agency/css/style.css" rel="stylesheet">
</head>

<body>
    <!-- <div class='thetop'></div>
    <div id="fb-root"></div> -->
    <!-- Preloader -->
    <div class="preloader">
        <div class="box"></div>
    </div>

    <!-- Ink Transition -->
    <div class="cd-transition-layer visible opening">
        <div class="bg-layer"></div>
    </div>
    <!--/Preloader -->
    <!-- TOPBAR -->
    <!--CONTENT-->
    <?php
	ob_start();
	if (isset($com, $view)) {
        if($com =="trangchu"){
            $this->load->view('frontend/modules/topbar2');
        }else{
            $this->load->view('frontend/modules/topbar');
        }
    $this->load->view('frontend/components/' . $com . '/' . $view);
    } else
    $this->load->view('frontend/components/Error404/index');
    ?>
    <!--FOOTER-->
    <?php
	$this->load->view('frontend/modules/footer');
	?>


    <!--Animated Cursor-->
    <div id="aimated-cursor">
        <div id="cursor">
            <div id="cursor-loader"></div>
        </div>
    </div>
    <!--Animated Cursor End-->

    <!--Scroll Top Start-->
    <span class="scroll-top-arrow"><i class="fas fa-angle-up"></i></span>
    <!--Scroll Top End-->

    <!-- JavaScript -->
    <script src="<?php echo base_url() ?>/public/vendor/js/bundle.min.js"></script>
    <script src="public/js/jquery-3.4.1.min.js"></script>
    <!-- Plugin Js -->
    <script src="<?php echo base_url() ?>/public/vendor/js/jquery.appear.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/jquery.fancybox.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/owl.carousel.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/swiper.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/morphext.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/TweenMax.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/wow.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/jquery.cubeportfolio.min.js"></script>
    <!-- REVOLUTION JS FILES -->
    <script src="<?php echo base_url() ?>/public/vendor/js/jquery.themepunch.tools.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/jquery.themepunch.revolution.min.js"></script>
    <!-- SLIDER REVOLUTION EXTENSIONS -->
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.actions.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.carousel.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.layeranimation.min.js">
    </script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.migration.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.navigation.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.parallax.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script src="<?php echo base_url() ?>/public/vendor/js/extensions/revolution.extension.video.min.js"></script>
    <!-- google map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJRG4KqGVNvAPY4UcVDLcLNXMXk2ktNfY"></script>
    <script src="<?php echo base_url() ?>/public/agency/js/map.js"></script>
    <!-- custom script -->
    <script src="<?php echo base_url() ?>/public/vendor/js/contact_us.js"></script>
    <script src="<?php echo base_url() ?>/public/agency/js/script.js"></script>
    <?php
	if (isset($com, $view)) {
        if($com !="trangchu"){
           $str = " <script src='".base_url()."/public/agency/js/gioithieu.js'></script>";
           echo $str;
    }
    }
    ?>
</body>

</html>