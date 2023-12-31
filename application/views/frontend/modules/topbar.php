<header class="cursor-light">

    <!--Navigation-->
    <nav class="navbar navbar-top-default navbar-expand-lg navbar-gradient nav-icon alt-font">
        <div class="container">
            <a class="logo link scroll" href="javascript:void(0)" title="Logo">
                <img alt="logo" class="logo-dark default" src="<?php echo base_url() ?>/public/agency/img/logo.png">
            </a>

            <!--Nav Links-->
            <div class="collapse navbar-collapse" id="agency">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link link active" href="">Trang chủ</a>
                    <a class="nav-link link" href="gioi-thieu">Giới thiệu</a>
                    <a class="nav-link link" href="hoi-dong-danh-gia">Hội đồng đánh giá</a>
                    <a class="nav-link link " href="#blog">Tin tức</a>
                    <a class="nav-link link " href="#blog">Báo cáo, thống kê</a>
                    <a class="nav-link link " href="#contact">Liên Hệ</a>
                    <span class="menu-line"><i aria-hidden="true" class="fa fa-angle-down"></i></span>
                </div>
            </div>

            <!--Menu Button-->
            <button class="fullnav-toggler link" id="full-menu-1" type="button">
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
            </button>

            <!--Slider Social-->
            <!-- <div class="slider-social">
			<ul class="list-unstyled">
				<li class="animated-wrap"><a class="animated-element" href="javascript:void(0);"><i
							aria-hidden="true" class="fab fa-facebook-f"></i></a></li>
				<li class="animated-wrap"><a class="animated-element" href="javascript:void(0);"><i
							aria-hidden="true" class="fab fa-instagram"></i></a></li>
				<li class="animated-wrap"><a class="animated-element" href="javascript:void(0);"><i
							aria-hidden="true" class="fab fa-twitter"></i></a></li>
			</ul>
		</div> -->

        </div>
    </nav>

    <!--Full menu-->
    <div class="nav-holder main style-2 alt-font">

        <!--Menu Button-->
        <button class="fullnav-close link" type="button">
            <span class="line"></span>
            <span class="line"></span>
            <span class="line"></span>
        </button>

        <div class="container">
            <div class="shape-left">
                <nav class="navbar full-menu-navigation left">
                    <ul class="list-unstyled">
                        <li><a class="link scroll" href="">
                                <span class="anchor-circle"></span>
                                <span class="anchor-text">Home</span>
                            </a></li>
                        <li><a class="link scroll" href="gioi-thieu">
                                <span class="anchor-circle"></span>
                                <span class="anchor-text">Giới thiệu</span>
                            </a></li>
                        <li><a class="link scroll" href="#portfolio">
                                <span class="anchor-circle"></span>
                                <span class="anchor-text">Work</span>
                            </a></li>
                        <li><a class="link scroll" href="#clients">
                                <span class="anchor-circle"></span>
                                <span class="anchor-text">Clients</span>
                            </a></li>
                        <li><a class="link scroll" href="#blog">
                                <span class="anchor-circle"></span>
                                <span class="anchor-text">Blog</span>
                            </a></li>
                        <li><a class="link scroll" href="#contact">
                                <span class="anchor-circle"></span>
                                <span class="anchor-text">Contact</span>
                            </a></li>
                    </ul>
                    <span class="full-menu-dot" style="transform: scale(0);"></span>
                </nav>
                <img alt="shape" src="<?php echo base_url() ?>/public/agency/img/shape-8.png">
            </div>
            <div class="shape-right">
                <div class="full-menu-detail hide-cursor">
                    <h6 class="title">Thông tin liên hệ</h6>
                    <p><i class="fas fa-user-alt"></i> Đơn vị chủ trì: Viện Nghiên cứu phát triển tỉnh Gia Lai</p>
                    <p><i class="fas fa-mobile-alt"></i>Điện thoại: (+84) 234 6559 666</p>
                    <p><i class="fas fa-envelope"></i>Email: vncpt@thuathienhue.gov.vn</p>
                </div>
                <img alt="shape" src="<?php echo base_url() ?>/public/agency/img/shape-7.png">
            </div>
        </div>
    </div>

    <!--Get Quote Model Popup-->
    <div class="animated-modal hidden quote-content" id="animatedModal">
        <!--Heading-->
        <div class="heading-area pb-2 mx-570">
            <span class="sub-title">We are megaone company</span>
            <h2 class="title mt-2">Lets start your <span class="alt-color js-rotating">project, website</span></h2>
        </div>
        <!--Contact Form-->
        <form class="contact-form" id="modal-contact-form-data">
            <div class="row">
                <!--Result-->
                <div class="col-12" id="quote_result"></div>

                <!--Left Column-->
                <div class="col-md-6">
                    <div class="form-group">
                        <input class="form-control" id="quote_name" name="quoteName" placeholder="Name" required=""
                            type="text">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="quote_contact" name="userPhone" placeholder="Contact #"
                            required="" type="text">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="quote_type" name="projectType" placeholder="Project type"
                            required="" type="text">
                    </div>
                </div>

                <!--Right Column-->
                <div class="col-md-6">
                    <div class="form-group">
                        <input class="form-control" id="quote_email" name="userEmail" placeholder="Email" required=""
                            type="email">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="quote_address" name="userAddress" placeholder="City / Country"
                            required="" type="text">
                    </div>
                    <div class="form-group">
                        <input class="form-control" id="quote_budget" name="quoteBudget" placeholder="Budget"
                            required="" type="text">
                    </div>
                </div>

                <!--Full Column-->
                <div class="col-md-12">
                    <div class="form-group">
                        <textarea class="form-control" id="quote_message" name="userMessage"
                            placeholder="Please explain your project in detail."></textarea>
                    </div>
                </div>

                <!--Button-->
                <div class="col-md-12">

                    <div class="form-check">
                        <label class="checkbox-lable">Contact by phone ins preffered
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                    </div>

                    <a class="btn btn-large btn-rounded btn-blue btn-hvr-pink modal_contact_btn"
                        href="javascript:void(0);" id="quote_submit_btn"><i class="fa fa-spinner fa-spin mr-2 d-none"
                            aria-hidden="true"></i><b>Send Message</b>
                        <div class="btn-hvr-setting">
                            <ul class="btn-hvr-setting-inner">
                                <li class="btn-hvr-effect"></li>
                                <li class="btn-hvr-effect"></li>
                                <li class="btn-hvr-effect"></li>
                                <li class="btn-hvr-effect"></li>
                            </ul>
                        </div>
                    </a>
                </div>

            </div>
        </form>
    </div>

</header>
<section class="p-0 no-transition cursor-light" id="home">
    <h2 class="d-none">hidden</h2>
    <div class="rev_slider_wrapper fullscreen-container" data-alias="megaone-agency-1" data-source="gallery"
        id="rev_slider_17_1_wrapper" style="background:transparent;padding:0px;">
        <!-- START REVOLUTION SLIDER 5.4.8.1 fullscreen mode -->
        <div class="rev_slider fullscreenbanner" data-version="5.4.8.1" id="rev_slider_17_1" style="display:none;">
            <ul>
                <!-- SLIDE  -->
                <li data-description="" data-easein="default" data-easeout="default" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-index="rs-43" data-masterspeed="default" data-param1=""
                    data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6=""
                    data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off"
                    data-slotamount="default" data-title="Slide" data-transition="fade">
                    <!--OVERLAY-->
                    <div class="gradient-bg1 bg-overlay bg-img"></div>

                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption   tp-resizeme"
                        data-frames='[{"delay":220,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;rZ:339;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['-26','-26','83','83']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-voffset="['98','98','60','60']" data-whitespace="nowrap"
                        data-width="none" data-x="['left','left','left','left']"
                        data-y="['bottom','bottom','bottom','bottom']" id="slide-43-layer-5" style="z-index: 7;">
                        <div class="rs-looped rs-slideloop" data-easing="" data-speed="5" data-xe="0" data-xs="0"
                            data-ye="15" data-ys="-15"><img alt="" data-hh="['87px','87px','87px','87px']"
                                data-no-retina data-ww="['44px','44px','44px','44px']"
                                src="<?php echo base_url() ?>/public/agency/img/shape-6.png">
                        </div>
                    </div>

                    <!-- LAYER NR. 4 -->
                    <div class="tp-caption   tp-resizeme" data-basealign="slide"
                        data-frames='[{"delay":210,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;rZ:358;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['700','700','700','530']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-voffset="['148','148','148','148']" data-whitespace="nowrap"
                        data-width="none" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-6" style="z-index: 8;">
                        <div class="rs-looped rs-slideloop" data-easing="Power0.easeIn" data-speed="5" data-xe="0"
                            data-xs="0" data-ye="20" data-ys="0"><img alt="" data-hh="['87px','87px','87px','87px']"
                                data-no-retina data-ww="['24px','24px','24px','24px']"
                                src="<?php echo base_url() ?>/public/agency/img/shape-5.png">
                        </div>
                    </div>

                    <!-- LAYER NR. 5 -->
                    <div class="tp-caption   tp-resizeme" data-fontsize="['20','20','20','20']"
                        data-frames='[{"delay":220,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['275','275','171','120']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-voffset="['270','270','261','190']" data-whitespace="nowrap"
                        data-width="none" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-7" style="z-index: 9;">
                        <div class="rs-looped rs-wave" data-angle="0" data-origin="50% 50%" data-radius="15px"
                            data-speed="12"><img alt="" data-hh="['67px','67px','67px','67px']" data-no-retina
                                data-ww="['68px','68px','68px','68px']"
                                src="<?php echo base_url() ?>/public/agency/img/shape-4.png"></div>
                    </div>

                    <!-- LAYER NR. 6 -->
                    <div class="tp-caption   tp-resizeme"
                        data-frames='[{"delay":190,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['413','413','268','204']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-voffset="['-205','-205','-259','-145']" data-whitespace="nowrap"
                        data-width="none" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-8" style="z-index: 10;">
                        <div class="rs-looped rs-rotate" data-easing="Power0.easeIn" data-enddeg="360"
                            data-origin="50% 50%" data-speed="15" data-startdeg="0"><img alt=""
                                data-hh="['69px','69px','69px','69px']" data-no-retina
                                data-ww="['67px','67px','67px','67px']"
                                src="<?php echo base_url() ?>/public/agency/img/shape-3.png"></div>
                    </div>

                    <!-- LAYER NR. 7 -->
                    <div class="tp-caption   tp-resizeme"
                        data-frames='[{"delay":190,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['436','436','259','145']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-voffset="['204','204','96','73']" data-whitespace="nowrap"
                        data-width="none" data-x="['left','left','left','left']" data-y="['top','top','top','top']"
                        id="slide-43-layer-9" style="z-index: 11;">
                        <div class="rs-looped rs-pendulum" data-easing="" data-enddeg="20" data-origin="50% 50%"
                            data-speed="12" data-startdeg="-20"><img alt="" data-hh="['52px','52px','52px','52px']"
                                data-no-retina data-ww="['51px','51px','51px','51px']"
                                src="<?php echo base_url() ?>/public/agency/img/shape-1.png">
                        </div>
                    </div>

                    <!-- LAYER NR. 8 -->
                    <div class="tp-caption   tp-resizeme" data-basealign="slide"
                        data-frames='[{"delay":170,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['39','39','94','58']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-voffset="['109','109','64','69']" data-whitespace="nowrap"
                        data-width="none" data-x="['right','right','right','right']" data-y="['top','top','top','top']"
                        id="slide-43-layer-10" style="z-index: 12;">
                        <div class="rs-looped rs-slideloop" data-easing="" data-speed="2" data-xe="15" data-xs="0"
                            data-ye="0" data-ys="0"><img alt="" data-hh="['14px','14px','14px','14px']" data-no-retina
                                data-ww="['50px','50px','50px','50px']"
                                src="<?php echo base_url() ?>/public/agency/img/shape-2.png">
                        </div>
                    </div>

                    <!-- LAYER NR. 9 -->
                    <div class="tp-caption tp-resizeme gradient-text1" data-fontsize="['70','65','60','50']"
                        data-frames='[{"delay":660,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['320','250','0','0']" data-lineheight="['80','75','70','60']"
                        data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
                        data-textAlign="['left','left','center','center']" data-type="text"
                        data-voffset="['-125','-125','-125','-110']" data-whitespace="nowrap"
                        data-width="['650','650','600','500']" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-13"
                        style="z-index: 13; min-width: 650px; max-width: 650px; white-space: nowrap; font-size: 70px; line-height: 80px; font-weight: 800; color: #ffffff; letter-spacing: 0px;font-family:Montserrat;">
                        DDCI
                    </div>

                    <!-- LAYER NR. 10 -->
                    <div class="tp-caption   tp-resizeme" data-fontsize="['70','65','60','50']"
                        data-frames='[{"delay":1840,"split":"chars","splitdelay":0.1,"speed":1000,"split_direction":"forward","frame":"0","from":"sX:0.8;sY:0.8;opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"nothing"}]'
                        data-height="none" data-hoffset="['320','250','0','0']" data-lineheight="['70','75','70','60']"
                        data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]" data-responsive_offset="on"
                        data-textAlign="['left','left','center','center']" data-type="text"
                        data-voffset="['-40','-40','-40','-40']" data-whitespace="nowrap"
                        data-width="['650','650','600','500']" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-11"
                        style="z-index: 14; min-width: 650px; max-width: 650px; white-space: nowrap; font-size: 70px; line-height: 70px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:Montserrat;">
                        GIA LAI
                    </div>

                    <!-- LAYER NR. 11 -->
                    <div class="tp-caption   tp-resizeme" data-fontsize="['20','20','18','17']"
                        data-frames='[{"delay":2360,"speed":1500,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['325','210','0','0']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['left','left','center','center']" data-type="text"
                        data-voffset="['80','75','65','57']" data-whitespace="normal"
                        data-width="['651','550','600','500']" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-14"
                        style="z-index: 15; min-width: 651px; max-width: 651px; white-space: normal; font-size: 20px; line-height: 30px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:Roboto;">
                        HỆ THỐNG ĐÁNH GIÁ
                        NĂNG LỰC CẠNH TRANH
                        CÁC SỞ BAN NGÀNH & ĐỊA PHƯƠNG
                    </div>

                    <!-- LAYER NR. 12 -->
                    <div class="tp-caption   tp-resizeme"
                        data-frames='[{"delay":2970,"speed":1500,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['325','260','0','0']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['left','left','center','center']" data-type="text"
                        data-voffset="['200','186','176','156']" data-whitespace="nowrap"
                        data-width="['650','650','600','500']" data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-15"
                        style="z-index: 16; white-space: nowrap;">
                        <a class="btn btn-slider btn-rounded btn-blue btn-hvr-white" href="javascript:void(0);">Khảo
                            sát
                            <div class="btn-hvr-setting">
                                <ul class="btn-hvr-setting-inner">
                                    <li class="btn-hvr-effect"></li>
                                    <li class="btn-hvr-effect"></li>
                                    <li class="btn-hvr-effect"></li>
                                    <li class="btn-hvr-effect"></li>
                                </ul>
                            </div>
                        </a>
                    </div>

                    <!-- LAYER NR. 13 -->
                    <div class="tp-caption   tp-resizeme"
                        data-frames='[{"delay":990,"speed":1500,"frame":"0","from":"x:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['0','0','-412','-412']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="image" data-visibility="['on','on','off','off']" data-voffset="['-1','-1','72','72']"
                        data-whitespace="nowrap" data-width="none" data-x="['left','left','left','left']"
                        data-y="['middle','middle','middle','middle']" id="slide-43-layer-16" style="z-index: 17;">
                        <div class="rs-looped rs-slideloop" data-easing="" data-speed="5" data-xe="15" data-xs="-10"
                            data-ye="0" data-ys="0"><img alt="" data-hh="['604px','510','510','510']" data-no-retina
                                data-ww="['434px','350','350','350']"
                                src="<?php echo base_url() ?>/public/agency/img/vector-art-1.png"></div>
                    </div>

                    <!-- LAYER NR. 14 -->
                    <div class="tp-caption tp-resizeme hide-cursor"
                        data-actions='[{"event":"click","action":"scrollbelow","offset":"-50px","delay":"","speed":"1200","ease":"Power3.easeInOut"}]'
                        data-fontsize="['20','20','20','17']"
                        data-frames='[{"delay":10,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                        data-height="none" data-hoffset="['0','0','0','0']" data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on" data-textAlign="['inherit','inherit','inherit','inherit']"
                        data-type="text" data-voffset="['25','25','5','5']" data-whitespace="nowrap" data-width="none"
                        data-x="['center','center','center','center']" data-y="['bottom','bottom','bottom','bottom']"
                        id="slide-43-layer-17"
                        style="z-index: 18; white-space: nowrap; cursor: pointer; font-size: 20px; line-height: 30px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:Montserrat;">
                        Scroll Down <i class="ml-2 fas fa-long-arrow-alt-down"></i></div>
                </li>
            </ul>
            <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
        </div>
    </div><!-- END REVOLUTION SLIDER -->
</section>