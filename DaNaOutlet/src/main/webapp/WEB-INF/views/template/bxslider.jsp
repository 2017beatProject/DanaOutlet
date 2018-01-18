<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
	#bxImg{
		width: 50px;
	}
</style>
<script>
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 2000,
			mode : 'horizontal',
			autoControlls : true,
			pager : false,
			autoHover : true,
			controls : false
		});
	});
</script>

	<ul class="bxslider">
		<li><img src="../resources/imgs/bxImgs/iu1.jpg" alt=""
			class="img-responsive bxImg" />
		<li><img src="../resources/imgs/bxImgs/iu2.jpg" alt=""
			class="img-responsive bxImg" /></li>
		<li><img src="../resources/imgs/bxImgs/iu3.jpg" alt=""
			class="img-responsive bxImg" /></li>
	</ul>
