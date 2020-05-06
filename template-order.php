<?php
/**
 * Template name: Order
 */

get_header();
$cost = '0';
?>
	<!-- Content -->
	<section class="inner order-page">
		<div class="wrapper">

            <?php while ( have_posts() ) :	the_post(); ?>
			<div class="inner__content">
				<h2 class="inner__title inner-title"><span><?php the_title(); ?></h2>
				<div class="inner__img blue-noise">
					<?php echo get_the_post_thumbnail(get_the_ID(), 'full'); ?>
				</div>
				<div class="inner__block">
					<div class="inner__text">
						<h5 class="inner__top">Весь спектр услуг в сфере интеллектуальной собственности</h5>
						<p>Практика оказывает весь спектр услуг в сфере интеллектуальной собственности, в том числе в отношении товарных знаков, патентов, авторских и смежных прав, конкуренции и антимонопольного регулирования.
						</p>
						<p>Практика включает группу разрешения споров, которая представляет интересы клиентов в судах и административных органах (Роспатенте, ФАС России), а также группу регистрации, оказывающую традиционные услуги по регистрации интеллектуальных прав на территории России, Евразийского союза, в странах ближнего и дальнего зарубежья.Юристы практики также консультируют клиентов по всем вопросам, связанным с распоряжением интеллектуальными правами и их коммерческой эксплуатацией, включая лицензирование, проверку патентной чистоты, правомочности использования средств индивидуализации в обороте.</p>
						<span class="inner__price">$<?php echo $cost; ?></span>
					</div>
					<form action="#" class="inner__form log order-form" id="popupOrder">
						<p class="log__title">Оформить заказ</p>
						<div class="log__group">
							<label>Имя</label>
							<input type="text" name="name" class="log__input">
						</div>
						<div class="log__group">
							<label>Телефон</label>
							<input type="tel" name="tel" class="log__input">
						</div>
						<div class="log__group">
							<label>Email</label>
							<input type="email" name="email" class="log__input">
						</div>
						<p class="log__line"><span>*</span>Поля обязательные для заполнения</p>
						<div class="log__btn">
							<input id="order" type="submit" data-submit value="Заказать" class="btn"/>
						</div>
					</form>
				</div>
			</div>
            <?php endwhile; ?>
		</div>
	</section><!-- End content -->

<?php get_footer();