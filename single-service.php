<?php
	get_header();
?>
	<!-- Service -->
	<section class="inner service">
		<div class="wrapper">

			<?php while ( have_posts() ) :	the_post(); ?>
					<div class="inner__content">
						<h2 class="inner__title inner-title"><span><?php the_title(); ?></h2>
						<div class="inner__img blue-noise">
							<?php echo get_the_post_thumbnail(get_the_ID(), 'service-thumb') ?>

							<?php $image_data = tree_theme_get_attachment(get_post_thumbnail_id(get_the_ID())) ?>

							<p class="inner__short"><?php echo $image_data['description']; ?></p>
							<span class="inner__price">
                                <?php echo $tree_theme_options['service_currency']; echo get_metadata('post', get_the_ID(), 'tree_theme_service_price', true);?>
                            </span>
						</div>
						<div class="inner__text">
                            <?php the_content(); ?>
                            <?php $price = get_metadata('post', get_the_ID(), 'tree_theme_service_price', true);
                            ?>
							<a href="<?php echo home_url("/"). '/checkout/?price='.$price.'&title='.get_the_title().'&content='.get_the_content();?>" class="inner__btn btn">Заказать</a>
						</div>
					</div>
			<?php endwhile; ?>



			<!-- Slider -->
			<div class="cases">
				<h4 class="cases__cap"><?php if ($tree_theme_options['cases_label']) {
				        echo $tree_theme_options['cases_label'];
                    } else {
                        echo esc_html_e('Latest Cases','tree_theme');
                    }
                ?></h4>
				<div class="cases__slider">
                    <?php
                        $cases = new WP_Query(array(
                            'post_type' => 'feature',
                            'post_per_page' => 4
                        ));

                    if ( $cases->have_posts() ) :

						while ( $cases->have_posts() ) : $cases->the_post(); ?>

                            <div class="cases__slide">
                                <div class="cases__item">
                                    <div class="cases__block">
                                        <h3 class="cases__heading"><?php the_title() ?></h3>
                                        <a href="<?php the_permalink(); ?>" class="cases__link link-more">
                                            <?php esc_html_e('Read more','tree_theme'); ?>
                                            <svg width="18" height="20">
                                                <use xlink:href="#nav-right"/>
                                            </svg>
                                        </a>
                                    </div>
                                    <div class="cases__img">
                                        <?php echo get_the_post_thumbnail(get_the_ID(),'feature-thumb'); ?>
                                    </div>
                                </div>
                            </div>

						<?php endwhile;

	                    wp_reset_postdata();
                        else :  echo "<div>Нет кейсов в базе</div>";

                    endif; ?>



				</div>
			</div>
		</div>
	</section><!-- End slider -->

<?php
	get_footer();
?>
