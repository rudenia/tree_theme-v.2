<?php
/**
 * Blog Widget
 */
class Tree_theme_About_Widget extends WP_Widget
{
	//public $image_field = 'image';

	/**
	 * General Setup
	 */
	public function __construct() {

		/* Widget settings. */
		$widget_ops = array(
			'classname' => 'tree_theme_about_widget',
			'description' => esc_html__('A widget about company', 'tree_theme')
		);

		/* Widget control settings. */
		$control_ops = array(
			'width'		=> 500,
			'height'	=> 450,
			'id_base'	=> 'tree_theme_about_widget'
		);

		/* Create the widget. */
		parent::__construct( 'tree_theme_about_widget', esc_html__('Tree Theme | About company', 'tree_theme'), $widget_ops, $control_ops );
	}

	/**
	 * Display Widget
	 * @param array $args
	 * @param array $instance
	 */
	public function widget( $args, $instance )
	{
		extract( $args );

		$title = apply_filters('widget_title', $instance['title'] );

		$text = apply_filters('the_content', $instance['text']);

		$link_more = apply_filters('the_content', $instance['link_more']);

		/* Our variables from the widget settings. */
		$image_id = $instance[$this->image_field];

		//$image = new Aletheme_WidgetImageField( $this, $image_id );

		/* Before widget (defined by themes). */
		echo $before_widget;

		// Display Widget
		?>
		<?php /* Display the widget title if one was input (before and after defined by themes). */
		if ( $title )
			echo $before_title . $title . $after_title;
		?>
        <div class="banner" style="background: url(img/banner.jpg) no-repeat center top/ cover;">
	        <?php /* Display the widget title if one was input (before and after defined by themes). */
	        if ( $title )
		        echo ' <h4 class="banner__title">' . $title . '</h4>';
	        ?>
            <h4 class="banner__title">Юридические консультации для малого бизнеса</h4>
            <p class="banner__text"><?php echo $text; ?></p>
            <a href="#" class="banner__btn btn">Подробнее</a>
        </div>
		<div class="aletheme-about-widget">
			<?php /*if( !empty( $image_id ) ) : ?>
				<figure>
					<img src="<?php echo $image->get_image_src(); ?>" alt="<?php echo $title ?>" />
				</figure>
			<?php endif; */?>
			<div class="text">

			</div>
		</div>
		<?php
		/* After widget (defined by themes). */
		echo $after_widget;
	}

	/**
	 * Update Widget
	 * @param array $new_instance
	 * @param array $old_instance
	 * @return array
	 */
	public function update( $new_instance, $old_instance )
	{
		$instance = $old_instance;

		$instance['title'] = strip_tags( $new_instance['title'] );
		$instance['text'] = strip_tags( $new_instance['text'] );
		$instance['link_more'] = strip_tags( $new_instance['link_more'] );

		//$instance[$this->image_field] = (int) $new_instance[$this->image_field];

		return $instance;
	}

	/**
	 * Widget Settings
	 * @param array $instance
	 */
	public function form( $instance )
	{
		//default widget settings.
		$defaults = array(
			'title'		=> esc_html__('Юридические консультации для малого бизнеса', 'aletheme'),
			'text'		=> esc_html__('Не позволяйте юридическим вопросам отвлекать вас от ведения бизнеса', 'aletheme'),
			'link_more'		=> esc_html__('', 'aletheme'),
			'image'		=> "",
		);
		$instance = wp_parse_args( (array) $instance, $defaults );

		//$image_id   = isset( $instance[$this->image_field]) ? (int) $instance[$this->image_field] : 0;
		//$image      = new Aletheme_WidgetImageField( $this, $image_id );
		?>
		<p>
			<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php esc_html_e('Title:', 'aletheme') ?></label>
			<input type="text" class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" value="<?php echo $instance['title']; ?>" />
		</p>
        <p>
            <label for="<?php echo $this->get_field_id( 'text' ); ?>"><?php esc_html_e('Description', 'aletheme') ?></label>
            <textarea class="widefat" cols="100" rows="5" id="<?php echo $this->get_field_id( 'text' ); ?>" name="<?php echo $this->get_field_name( 'text' ); ?>" ><?php echo $instance['text']; ?></textarea>
        </p>
        <p>
            <label for="<?php echo $this->get_field_id( 'link_more' ); ?>"><?php esc_html_e('Button more:', 'aletheme') ?></label>
            <input type="text" class="widefat" id="<?php echo $this->get_field_id( 'link_more' ); ?>" name="<?php echo $this->get_field_name( 'link_more' ); ?>" value="<?php echo $instance['link_more']; ?>" />
        </p>
		<!--<p>
			<label>Image: </label>
			<?php //echo $image->get_widget_field(); ?>
		</p>-->
		<?php
	}
}