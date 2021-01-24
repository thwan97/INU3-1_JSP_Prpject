<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link rel="stylesheet" href="./css/Center.css">	
</head>

<body>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>

    <div class="container">

        <section class="customer-logos slider">
            <div class="slide"><img src="https://img5.yna.co.kr/photo/yna/YH/2019/02/14/PYH2019021401310034000_P4.jpg"></div>
            <div class="slide"><img src="https://img4.yna.co.kr/photo/yna/YH/2019/08/05/PYH2019080501160034000_P2.jpg"></div>
            <div class="slide"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSbT5-cndEBUiK8ZIVINdb_aItZhDP6LC-tjhxf_vYakGYQIv2f&usqp=CAU"></div>
            <div class="slide"><img src="https://newsimg.sedaily.com/2018/10/11/1S5VDZJLZ7_1.jpg"></div>
            <div class="slide"><img src="https://img.newspim.com/news/2017/08/05/1708050905111430.jpg"></div>
            <div class="slide"><img src="https://post-phinf.pstatic.net/MjAxODA1MDZfMTUx/MDAxNTI1NTc5ODUxNjIx.IS-1S2DMdj7B0CEoHpf3y6IXSrSQM1aOS1AIRN88SUEg.HDjzOikCoqKb1MOm43yQFDms-be_a8-KsKFmmavD_MUg.JPEG/I2MTkc4h-98OV7UTHlHQGoByWeRA.jpg?type=w400"></div>
            <div class="slide"><img src="https://menu.mt.co.kr/moneyweek/thumb/2020/02/04/06/2020020408118045397_2.jpg"></div>
            <div class="slide"><img src="https://image.chosun.com/sitedata/image/201907/06/2019070600927_0.jpg"></div>
            <div class="slide"><img src="https://img.kbs.co.kr/kbs/620/nsimg.kbs.co.kr/data/news/2019/11/08/4319742_cE6.jpg"></div>
        </section>


    </div>
</body>
<script>
    $(document).ready(function() {
        $('.customer-logos').slick({
            slidesToShow: 6,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 1000,
            arrows: false,
            dots: false,
            pauseOnHover: false,
            responsive: [{
                breakpoint: 768,
                settings: {

                    slidesToShow: 4
                }
            }, {
                breakpoint: 520,
                settings: {
                    slidesToShow: 3
                }
            }]
        });
    });
</script>
</html>
