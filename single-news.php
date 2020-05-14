<?php

get_header();

?>
	<?php while ( have_posts() ) : the_post(); ?>

	<section class="single event">
		<div class="event-top" style="background: #fff url(<?php echo wp_get_attachment_url(get_post_thumbnail_id(get_the_ID())) ?>) no-repeat center top/ cover;">
			<div class="wrapper">
				<div class="event-top__wrap">
					<div class="add-time">
						<svg width="13" height="13">
							<use xlink:href="#time"/>
						</svg>
						<p class="add-time__date"><?php the_date() ?></p>
					</div>
					<div class="rate"></div>
				</div>
				<h1 class="event-top__title">
					<?php the_title() ?>
				</h1>
				<ul class="tags-list">
                    <?php $news_categories = wp_get_post_terms(get_the_ID(),'news-category', );
					foreach ($news_categories as $category) { ?>
						<li><a href="<?php echo get_term_link($category) ?>"><?php echo $category -> name; ?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		<div class="wrapper">
			<div class="event__content">
				<p>Взаимодействие между юридическими лицами осуществляется исключительно по договору. Однако, если сотрудничать с сомнительными компаниями, даже подписанные документы не гарантируют финансовой безопасности.</p>
				<p>К сожалению, компании-должники часто ведут себя недобросовестно. Они не поддерживают диалог, не отвечают на официальную корреспонденцию, не говоря уже о том, что не извещают должным образом о начале процессе ликвидации фирмы. В результате вы ожидаете поступление денежных средств от фирмы, которой уже не существует.</p>
				<p>И всё же закон на вашей стороне. Он гласит, что если организация не уведомила кредиторов о начале процесса ликвидации, вследствие чего их требования не попали в ликвидационный баланс, денежные средства можно вернуть, даже если предприятие успешно закрылось.</p>
				<h4 class="event__subtitle">Как оспорить решение налоговой инспекции</h4>
				<p>Процесс ликвидации завершается сразу после внесения соответствующей записи в ЕГРЮЛ. Однако решениеИФНС возможно оспорить в вышестоящей инстанции или суде.</p>
				<p>Если вы решили действовать через суд, следует подать заявление с требованием о признании решения ИФНС недействительным. Законодательством предусмотрен особый порядок подачи подобных заявлений. Он представлен в гл. 24 АПК. Следует помнить о сроках обращения в суд. Он отсчитывается с момента занесения соответствующей записи в ЕГРЮЛ. Заявление следует обязательно обосновать. Так вы можете сообщить о том, что должник не уведомил кредиторов о начале процесса ликвидации или о неверных данных, которые получила налоговая инспекция.</p>
				<h4 class="event__subtitle">Как взыскать задолженность с физических лиц</h4>
				<p>Суд может вынести решение о том, что ликвидация фирмы-должника произведена законно. В этом случае можно предъявить требования о возмещении убытков к членам ликвидационной комиссии. Однако придётся доказать совокупность обстоятельств.</p>
				<img src="img/post.jpg" alt="Изображение">
				<h4 class="event__subtitle">Как получить деньги через распределение имущества</h4>
				<p>Также вы вправе подать иск о распределении имущества должника, если оно осталось у ликвидированной компании. Особенности данной процедуры подробно расписаны в ст. 64 ГК. Кроме того, к имуществу компании относятся его требования к третьим лицам. Это может быть даже исполнение обязательств, не выполненных из-за нарушения очерёдности. Важно соблюдать сроки подачи заявления. Должно пройти не более 5 лет с даты внесения соответствующей записи в ЕГРЮЛ, то есть даты, когда компания должник официально перестала вести деятельность.</p>
				<p>Чтобы вернуть задолженность в кратчайшие сроки, обращайтесь в юридическую компанию. Мы проведем тщательный правовой анализ, поможем собрать все необходимые документы и грамотно обоснуем ваши требования. Ваши деньги не исчезнут с ликвидацией должника.</p>
				<div class="event__wrap">
					<div class="share">
						<p class="share__title">
							<svg width="15" height="15">
								<use xlink:href="#link"/>
							</svg>
							Поделиться:
						</p>
						<ul class="social">
							<li class="social__item">
								<span>Vk</span>
								<a data-social="vkontakte" class="social__icon social__icon_vk" href="#">
									<svg  width="21" height="18">
										<use xlink:href="#vk"/>
									</svg>
								</a>
							</li>
							<li class="social__item">
								<span>Fb</span>
								<a data-social="facebook" class="social__icon social__icon_fb" href="#">
									<svg  width="14" height="17">
										<use xlink:href="#facebook"/>
									</svg>
								</a>
							</li>
							<li class="social__item">
								<span>Tw</span>
								<a data-social="twitter" class="social__icon social__icon_tw" href="#">
									<svg  width="18" height="15">
										<use xlink:href="#twitter"/>
									</svg>
								</a>
							</li>
						</ul>
					</div>
					<ul class="event__nav">
						<li class="prev">
							<a href="#">Предыдущая новость</a>
						</li>
						<li class="next">
							<a href="#">Следующая новость</a>
						</li>
					</ul>
				</div>
			</div>
			<aside class="sidebar">
				<div class="widget widget_search">
					<form role="search" method="get" id="searchform1" action="#">

						<input class="text-search" type="search" value="" placeholder="Поиск по новостям">
						<input type="submit" class="submit-search" value="" />

					</form>
				</div>
				<div class="categories side-nav">
					<h5 class="categories__title">
						<svg  width="19" height="19">
							<use xlink:href="#content-post"/>
						</svg>
						Категории новостей
					</h5>
					<ul>
						<li>
							<a href="#">Налоги и бухучет</a>
							<span>8</span>
						</li>
						<li>
							<a href="#">Судебная практика</a>
							<span>15</span>
						</li>
						<li>
							<a href="#">Социальная сфера</a>
							<span>5</span>
						</li>
						<li>
							<a href="#">Образование</a>
							<span>7</span>
						</li>
						<li>
							<a href="#">Новости в сфере IT</a>
							<span>33</span>
						</li>
						<li>
							<a href="#">Бизнес</a>
							<span>31</span>
						</li>
						<li>
							<a href="#">Проверки</a>
							<span>14</span>
						</li>
					</ul>
				</div>

				<div class="banner" style="background: url(img/banner.jpg) no-repeat center top/ cover;">
					<h4 class="banner__title">Юридические консультации для малого бизнеса</h4>
					<p class="banner__text">Не позволяйте юридическим вопросам отвлекать вас от ведения бизнеса</p>
					<a href="#" class="banner__btn btn">Подробнее</a>
				</div>

				<div class="subscr">
					<div class="subscr__title">
						<svg  width="19" height="19">
							<use xlink:href="#mail"/>
						</svg>
						Подписаться на рассылку
					</div>
					<form action="#" class="subscr__form log" id="popupSubscribe">
						<div class="log__group">
							<label>Имя</label>
							<input type="text" name="name_mod" class="log__input">
						</div>
						<div class="log__group">
							<label>Email</label>
							<input type="email" name="email" class="log__input">
						</div>
						<div class="log__btn">
							<input id="subscribe" type="submit" data-submit value="Подписаться" class="btn"/>
						</div>
					</form>
				</div>
			</aside></div>
	</section>

	<?php endwhile; ?>

<?php get_footer();

?>
