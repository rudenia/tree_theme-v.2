<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tree_theme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>

	<!-- Подключение svg -->
	<div class="svg-placeholder" style="display: none;"></div>
	<script>document.querySelector('.svg-placeholder').innerHTML = SVG_SPRITE;</script>
</head>

<body <?php body_class(''); ?>>
<?php 
global $tree_theme_options;

	$class_header = '';
	$style_for_header = '';
	if (is_page_template('template-home.php')) {
		$class_header = 'header-home';
		$style_for_header = 'style="background: #fff url('.$tree_theme_options['header_bg']['url'].') no-repeat center top/ cover;"';
	} else {
		$class_header = 'header-inner';
	}
?>
	<!-- Header -->
	<header class="header <?php echo esc_attr($class_header); ?>" <?php echo $style_for_header; ?>>

		<div class="heading">
			<ul class="social">
				<?php $social_links = $tree_theme_options['social_links'];

					foreach ($social_links as $social => $link){
							$label = '';
							$svg = '';
							$class = '';

						if ($social == 'Vk link') {
							$label ='<span>Vk</span>';
							$svg = '<svg  width="21" height="18">
										<use xlink:href="#vk"/>
									</svg>';
							$class = 'social__icon_vk';
						} else if ($social == 'Facebook link') { 
							$label = '<span>Fb</span>';
							$svg = '<svg  width="14" height="17">
										<use xlink:href="#facebook"/>
									</svg>';
							$class = 'social__icon_fb';
						} else if ($social == 'Twitter link') { 
							$label = '<span>Tw</span>';
							$svg = '<svg  width="18" height="15">
										<use xlink:href="#twitter"/>
									</svg>';
							$class = 'social__icon_tw';
						} else if ($social == 'Instagram link') { 	
							$label = '';
							$svg = '<svg   width="16" height="16">
										<use xlink:href="#instagram"/>
									</svg>';
							$class = 'social__icon_inst';
						}?>
						<?php if ($link) { ?>
							<li class="social__item">
								<?php echo $label; ?>
								<a class="social__icon <?php echo $class ?> " target="_blank" href="<?php echo $link ?>">
									<?php echo $svg; ?>
								</a>
							</li>
						<?php } ?>
				<?php } ?>
			</ul>
			<div class="heading__block">
				<a href="cart.html" class="heading__bag">
					<svg width="17" height="20">
						<use xlink:href="#bag"/>
					</svg>
				</a>
				<div class="language">
					<ul>
						<li class="lang-item active">
							<a href="#">Ru</a>
						</li>
						<li class="lang-item">
							<a href="#">En</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="control">
				<a href="#enter" class="control__enter popup-link-1">
					<svg class="control__icon" width="19" height="17">
						<use xlink:href="#login"/>
					</svg>
					Вход
				</a>
				<a style="display: none;" href="cabinet.html" class="control__enter control__enter_cab">
					<svg class="control__icon" width="16" height="16">
						<use xlink:href="#user"/>
					</svg>
					Личный кабинет
				</a>
				<a href="#reg" class="control__reg noise popup-link-2">Регистрация</a>
			</div>
		</div>

		<div class="navigation">
			<div class="logo noise">
				<a href="<?php echo esc_url(home_url('/')); ?>" class="logo noise">
					<p class="logo__icon"><?php bloginfo( 'name' ); ?></p>
					<p class="logo__desc"><?php bloginfo( 'description' ); ?></p>
				</a>
			</div>

			<div class="navigation__wrap">
				<?php if ($tree_theme_options['header_phone']) { ?>
					<a href="#call" class="call popup-link-1">
						<div class="call__icon btn">
							<svg width="22" height="22">
								<use xlink:href="#phone-solid"/>
							</svg>
						</div>
						<div class="call__block">
							<p class="call__text"><?php echo $tree_theme_options['header_phone_label']; ?></p>
							<p class="call__number"><?php echo $tree_theme_options['header_phone']; ?></p>
						</div>
					</a>
				<?php } ?>
				
				<!-- Main menu -->
				<nav id="nav-wrap" class="menu">
					
					<a class="mobile-btn" href="#nav-wrap" title="<?php esc_html_e('Show navigation','tree_theme') ?>"><?php esc_html_e('Show navigation','tree_theme') ?></a>
					<a class="mobile-btn" href="#" title="<?php esc_html_e('Hide navigation','tree_theme') ?>"><?php esc_html_e('Hide navigation','tree_theme') ?></a>
					<?php
						wp_nav_menu( array(
							'theme_location' => 'menu-header',
							'menu_id'    => 'nav',
							'menu_class'    => 'menu__list',
							'container'      => '',
						));
					?>
				</nav><!-- End main menu -->
				
				<div class="widget widget_search">
					<?php get_search_form(); ?>
				</div>
			</div>

		</div>
		<?php if(is_page_template('template-home.php')) { ?>
			<div class="offer">
				<div class="wrapper">
					<div class="offer__slider">
						<?php $slider = $tree_theme_options['home_header_slider']; 
						foreach ($slider as $slide) { ?>
						 	<div class="offer__slide">
								<p class="offer__text"><?php echo $slide['title']; ?></p>
								<?php echo $slide['description']; ?>
								<a href="<?php echo $slide['url']; ?>" class="offer__btn btn popup-link">
									<?php esc_html_e('Бесплатная консультация','tree_theme') ?>
								</a>
							</div>
						<?php } ?>
					</div>
					<?php if ($tree_theme_options['header_video']) {?>
						<a class="offer__video popup-with-zoom-anim popup-youtube" href="<?php echo $tree_theme_options['header_video']; ?>" rel="nofollow" >
							<?php if ($tree_theme_options['header_time']){ ?>
								<p class="offer__watch"><?php echo $tree_theme_options['header_time']; ?></p>
							<?php } ?>
							<div class="offer__play"></div>
							<?php if ($tree_theme_options['header_video_title']){ ?>
								<p class="offer__watch"><?php echo $tree_theme_options['header_video_title']; ?></p>
							<?php } ?>
						</a>
					<?php } ?>
				</div>
			</div>
		<?php } else { ?>
			<div class="caption">
				<div class="wrapper">
					<h1 class="caption__title"><?php
                        if (is_single()) {
                            $current_post_type = get_post_type(get_the_ID());
                            $post_type_object = get_post_type_object($current_post_type);
                            echo $post_type_object->labels->singular_name;
                        } else if (is_tax()){
	                        $current_post_type = get_post_type(get_the_ID());
	                        $post_type_object = get_post_type_object($current_post_type);
	                        echo $post_type_object->labels->name;
                        } else {
                            echo wp_title('');
                        } ?></h1>

					<?php echo tree_theme_get_breadcrumbs(); ?>
				</div>
			</div>
		<?php } ?>
	</header><!-- End header -->