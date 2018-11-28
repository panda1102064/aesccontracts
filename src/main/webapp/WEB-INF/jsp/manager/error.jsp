<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>重庆汽博实业有限公司</title>

<style type="text/css">
/* latin-ext */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 300;
	src: local('Dosis Light'), local('Dosis-Light'),
		url(https://fonts.gstatic.com/s/dosis/v6/SHQzTQBI7152hSrIuGUiVBTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 300;
	src: local('Dosis Light'), local('Dosis-Light'),
		url(https://fonts.gstatic.com/s/dosis/v6/7aJzV14HzAOiwNTiPgucGfesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
/* latin-ext */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 400;
	src: local('Dosis Regular'), local('Dosis-Regular'),
		url(https://fonts.gstatic.com/s/dosis/v6/RlBXAIuiO5GvH9-0-JbBlw.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 400;
	src: local('Dosis Regular'), local('Dosis-Regular'),
		url(https://fonts.gstatic.com/s/dosis/v6/4hYyXH_8WmbBLamf6WjLwg.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
/* latin-ext */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 500;
	src: local('Dosis Medium'), local('Dosis-Medium'),
		url(https://fonts.gstatic.com/s/dosis/v6/NI3uVO_o2Ursx6Z1Lyy3oRTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 500;
	src: local('Dosis Medium'), local('Dosis-Medium'),
		url(https://fonts.gstatic.com/s/dosis/v6/mAcLJWdPWDNiDJwJvcWKc_esZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
/* latin-ext */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 800;
	src: local('Dosis ExtraBold'), local('Dosis-ExtraBold'),
		url(https://fonts.gstatic.com/s/dosis/v6/NL7tQp6ch38l_aQukeablRTbgVql8nDJpwnrE27mub0.woff2)
		format('woff2');
	unicode-range: U+0100-024F, U+1E00-1EFF, U+20A0-20AB, U+20AD-20CF,
		U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
	font-family: 'Dosis';
	font-style: normal;
	font-weight: 800;
	src: local('Dosis ExtraBold'), local('Dosis-ExtraBold'),
		url(https://fonts.gstatic.com/s/dosis/v6/nq3OPeKr7RUSF_YDJ1woxvesZW2xOQ-xsNqO47m55DA.woff2)
		format('woff2');
	unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC,
		U+2000-206F, U+2074, U+20AC, U+2212, U+2215;
}
</style>

<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block
}

body {
	line-height: 1
}

ol, ul {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none
}

table {
	border-collapse: collapse;
	border-spacing: 0
}
</style>

<style type="text/css">
html, body {
	height: 100%;
	min-height: 450px;
	font-family: 'Dosis', sans-serif;
	font-size: 32px;
	font-weight: 500;
	color: #5d7399;
}

.content {
	height: 100%;
	position: relative;
	z-index: 1;
	background-color: #d2e1ec;
	background-image: -webkit-linear-gradient(top, #bbcfe1 0%, #e8f2f6 80%);
	background-image: linear-gradient(to bottom, #bbcfe1 0%, #e8f2f6 80%);
	overflow: hidden;
}

.snow {
	position: absolute;
	top: 0;
	left: 0;
	pointer-events: none;
	z-index: 20;
}

.main-text {
	padding: 20vh 20px 0 20px;
	text-align: center;
	line-height: 2em;
	font-size: 3.5vh;
}

.home-link {
	font-size: 1.4em;
	font-weight: 400;
	color: inherit;
	text-decoration: none;
	opacity: 0.6;
	border-bottom: 1px dashed rgba(93, 115, 153, 0.5);
}

.home-link:hover {
	opacity: 1;
}

.ground {
	height: 160px;
	width: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
	background: #f6f9fa;
	box-shadow: 0 0 10px 10px #f6f9fa;
}

.ground:before, .ground:after {
	content: '';
	display: block;
	width: 250px;
	height: 250px;
	position: absolute;
	top: -62.5px;
	z-index: -1;
	background: transparent;
	-webkit-transform: scaleX(0.2) rotate(45deg);
	transform: scaleX(0.2) rotate(45deg);
}

.ground:after {
	left: 50%;
	margin-left: -166.66667px;
	box-shadow: -330px 270px 15px #a7b4c9, -590px 610px 15px #9aa9c2, -925px
		875px 15px #a4b1c8, -1160px 1240px 15px #9dabc4, -1515px 1485px 15px
		#8193b2, -1815px 1785px 15px #9aa9c2, -2090px 2110px 15px #a7b4c9,
		-2380px 2420px 15px #adb9cd, -2655px 2745px 15px #91a1bc, -3000px
		3000px 15px #8193b2, -3260px 3340px 15px #9dabc4, -3640px 3560px 15px
		#adb9cd, -3870px 3930px 15px #8a9bb8, -4160px 4240px 15px #b0bccf,
		-4535px 4465px 15px #8798b6, -4805px 4795px 15px #8496b4;
}

.ground:before {
	right: 50%;
	margin-right: -166.66667px;
	box-shadow: 310px -290px 15px #8e9eba, 595px -605px 15px #a7b4c9, 890px
		-910px 15px #7e90b0, 1195px -1205px 15px #7e90b0, 1535px -1465px 15px
		#a7b4c9, 1780px -1820px 15px #91a1bc, 2095px -2105px 15px #8496b4,
		2445px -2355px 15px #b0bccf, 2680px -2720px 15px #a4b1c8, 3010px
		-2990px 15px #8e9eba, 3335px -3265px 15px #adb9cd, 3645px -3555px 15px
		#b7c1d3, 3935px -3865px 15px #a4b1c8, 4155px -4245px 15px #94a3be,
		4505px -4495px 15px #8798b6, 4785px -4815px 15px #a4b1c8;
}

.mound {
	margin-top: -80px;
	font-weight: 800;
	font-size: 180px;
	text-align: center;
	color: #dd4040;
	pointer-events: none;
}

.mound:before {
	content: '';
	display: block;
	width: 600px;
	height: 200px;
	position: absolute;
	left: 50%;
	margin-left: -300px;
	top: 50px;
	z-index: 1;
	border-radius: 100%;
	background-color: #e8f2f6;
	background-image: -webkit-linear-gradient(top, #dee8f1, #f6f9fa 60px);
	background-image: linear-gradient(to bottom, #dee8f1, #f6f9fa 60px);
}

.mound:after {
	content: '';
	display: block;
	width: 28px;
	height: 6px;
	position: absolute;
	left: 50%;
	margin-left: -150px;
	top: 68px;
	z-index: 2;
	background: #dd4040;
	border-radius: 100%;
	-webkit-transform: rotate(-15deg);
	transform: rotate(-15deg);
	box-shadow: -56px 12px 0 1px #dd4040, -126px 6px 0 2px #dd4040, -196px
		24px 0 3px #dd4040;
}

.mound_text {
	-webkit-transform: rotate(6deg);
	transform: rotate(6deg);
}

.mound_spade {
	display: block;
	width: 35px;
	height: 30px;
	position: absolute;
	right: 50%;
	top: 42%;
	margin-right: -250px;
	z-index: 0;
	-webkit-transform: rotate(35deg);
	transform: rotate(35deg);
	background: #dd4040;
}

.mound_spade:before, .mound_spade:after {
	content: '';
	display: block;
	position: absolute;
}

.mound_spade:before {
	width: 40%;
	height: 30px;
	bottom: 98%;
	left: 50%;
	margin-left: -20%;
	background: #dd4040;
}

.mound_spade:after {
	width: 100%;
	height: 30px;
	top: -55px;
	left: 0%;
	box-sizing: border-box;
	border: 10px solid #dd4040;
	border-radius: 4px 4px 20px 20px;
}
</style>

</head>

<body>
	<div class="content">
		<canvas class="snow" id="snow"></canvas>
		<div class="main-text">
			<p>Sorry...发生错误！</p>
			1、似乎你所寻找的网页已移动或丢失了，再或者是服务器出错了。<br>
			2、亦或者是你漏填或输入了一些错误字段尝试注入，而我进行了过滤。先点击左上角返回按钮，检查一下吧！<br>
			如果尝试了第二条还是不行，请与陈晨联系，说明出错细节，方便更正修复。<br>
			QQ: 1036359208<br>
			Phone: 88728453丨17777781786<br>
			如需要所填文本内容，点击左上角返回按钮即可！不需要，点这里<a class="home-link" href="<%=path%>/meun">返回主菜单</a>
		</div>
		<div class="ground">
			<div class="mound">
				<div class="mound_text">错误</div>
				<div class="mound_spade"></div>
			</div>
		</div>
	</div>
</body>
<script>
    (function() {
        function ready(fn) {
            if (document.readyState != 'loading') {
                fn();
            } else {
                document.addEventListener('DOMContentLoaded', fn);
            }
        }
		//造雪
        function makeSnow(el) {
		    //获权
            var ctx = el.getContext('2d');
            var width = 0;
            var height = 0;
            var particles = [];
			//雪点
            var Particle = function() {
                this.x = this.y = this.dx = this.dy = 0;
                this.reset();
            }
			//重置
            Particle.prototype.reset = function() {
                this.y = Math.random() * height;
                this.x = Math.random() * width;
                this.dx = (Math.random() * 1) - 0.5;
                this.dy = (Math.random() * 0.5) + 0.5;
            }
			//造雪点
            function createParticles(count) {
                if (count != particles.length) {
                    particles = [];
                    for (var i = 0; i < count; i++) {
                        particles.push(new Particle());
                    }
                }
            }
			//大小
            function onResize() {
                width = window.innerWidth;
                height = window.innerHeight;
                el.width = width;
                el.height = height;

                createParticles((width * height) / 10000);
            }
			//下雪
            function updateParticles() {
			    //擦除
                ctx.clearRect(0, 0, width, height);
                //上色
                ctx.fillStyle = '#f6f9fa';

                particles.forEach(function(particle) {
                    particle.y += particle.dy;
                    particle.x += particle.dx;

                    if (particle.y > height) {
                        particle.y = 0;
                    }

                    if (particle.x > width) {
                        particle.reset();
                        particle.y = 0;
                    }

                    ctx.beginPath();
                    ctx.arc(particle.x, particle.y, 5, 0, Math.PI * 2, false);
                    ctx.fill();
                });

                window.requestAnimationFrame(updateParticles);
            }
			//递归调用
            onResize();
            updateParticles();

            window.addEventListener('resize', onResize);
        }
		//启动
        ready(function() {
            var canvas = document.getElementById('snow');
            makeSnow(canvas);
        });
    })();
</script>
</html>
