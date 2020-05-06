<?php global $tree_theme_options ?>

<!-- Footer -->
	<footer class="footer">
		<div class="wrapper">
			<div class="footer__block">
				<a href="index.html" class="logo noise">
					<p class="logo__icon"><?php bloginfo( 'name' ); ?></p>
					<p class="logo__desc"><?php bloginfo( 'description' ); ?></p>
				</a>
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
				<?php if ($tree_theme_options['footer_info']) { ?>
					<p class="footer__special">
						<?php echo $tree_theme_options['footer_info']; ?>
					</p>
				<?php } ?>
			</div>
			<nav class="guide">
				<?php if ($tree_theme_options['footer_section1']) { ?>
					<p class="guide__title"><?php echo $tree_theme_options['footer_section1'] ; ?></p>
				<?php } ?>
				<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-footer-map',
						'menu_id'    => 'Footer site map',
						'menu_class'    => '',
						'container'      => '',
					));
				?>
			</nav>
			<div class="serv">
				<?php if ($tree_theme_options['footer_section2']) { ?>
					<p class="serv__title"><?php echo $tree_theme_options['footer_section2'] ; ?></p>
				<?php } ?>
				<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-footer-services',
						'menu_id'    => 'Footer menu services',
						'menu_class'    => '',
						'container'      => '',
					));
				?>
			</div>
			<div class="contact">
				<?php if ($tree_theme_options['footer_section3']) { ?>
					<p class="contact__title"><?php echo $tree_theme_options['footer_section3'] ; ?></p>
				<?php } ?>
				<ul class="contact__list">
					<?php if ($tree_theme_options['footer_address']) {?>
						<li class="contact__item">
							<svg width="20" height="25">
								<use xlink:href="#pin"/>
							</svg>
							<p class="contact__text contact__text_address"><?php echo $tree_theme_options['footer_address']; ?></p>
						</li>
					<?php } ?>
					<li class="contact__item">
						<svg width="21" height="21">
							<use xlink:href="#phone"/>
						</svg>
						<div class="contact__phones">
							<?php 
								foreach($tree_theme_options['footer_phone'] as $phone) { 
									if($phone) { ?>
									<a href="tel:<?php echo esc_attr($phone)?>" class="contact__text contact__text_phone">
										<?php echo esc_attr($phone)?>
									</a>
								<?php }
								}
							?>
						</div>
					</li>
					<?php if ($tree_theme_options['footer_email']) { ?>
						<li class="contact__item">
							<svg width="25" height="19">
								<use xlink:href="#mail"/>
							</svg>
							<p class="contact__text contact__text_mail"><?php echo $tree_theme_options['footer_email']; ?></p>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="subscribe">
				<?php if ($tree_theme_options['footer_section4']) { ?>
					<p class="subscribe__title"><?php echo $tree_theme_options['footer_section4'] ; ?></p>
				<?php } ?>
				<form action="#" class="subscribe__form" id="popupSubscribe">
					<input type="text" name="email" class="subscribe__input" placeholder="Ваш email">
					<button class="subscribe__btn btn" data-submit>Подписаться</button>
				</form>
				<div class="control">
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
					<div class="control__wrap">
						<a  href="#enter" class="control__enter popup-link-1">
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
			</div>
			<?php if ($tree_theme_options['footer_copyrights']){ ?>
				<div class="footer__copy"><?php echo $tree_theme_options['footer_copyrights']; ?></div>
			<?php } ?>
		</div>
	</footer><!-- End footer -->

<?php wp_footer(); ?>

</body>
</html>
