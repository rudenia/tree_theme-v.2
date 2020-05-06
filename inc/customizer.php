<?php
/**
 * tree_theme Theme Customizer
 *
 * @package tree_theme
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function tree_theme_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';

	if ( isset( $wp_customize->selective_refresh ) ) {
		$wp_customize->selective_refresh->add_partial( 'blogname', array(
			'selector'        => '.site-title a',
			'render_callback' => 'tree_theme_customize_partial_blogname',
		) );
		$wp_customize->selective_refresh->add_partial( 'blogdescription', array(
			'selector'        => '.site-description',
			'render_callback' => 'tree_theme_customize_partial_blogdescription',
		) );
	}

	//New settings
		$wp_customize->add_setting( 'header_textcolor' , array(
	    'default'   => '#26afff',
	    'transport' => 'refresh',
	) );

		$wp_customize->add_section( 'custom_color_section' , array(
	    'title'      => __( 'Site color', 'tree_theme' ),
	    'priority'   => 30,
	) );

		$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'link_color', array(
		'label'      => __( 'Choose a color', 'tree_theme' ),
		'section'    => 'custom_color_section',
		'settings'   => 'header_textcolor',
	) ) );

	//Test fields

	$wp_customize->add_section('themename_color_scheme', array(
        'title'    => __('Color Scheme', 'themename'),
        'description' => 'test',
        'priority' => 120,
    ));
 
    //  =============================
    //  = Text Input                =
    //  =============================
    $wp_customize->add_setting('themename_theme_options[text_test]', array(
        'default'        => 'value_xyz',
        'capability'     => 'edit_theme_options',
        'type'           => 'option',
 
    ));
 
    $wp_customize->add_control('themename_text_test', array(
        'label'      => __('Text Test', 'themename'),
        'section'    => 'themename_color_scheme',
        'settings'   => 'themename_theme_options[text_test]',
    ));
}
add_action( 'customize_register', 'tree_theme_customize_register' );

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
function tree_theme_customize_partial_blogname() {
	bloginfo( 'name' );
}

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
function tree_theme_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function tree_theme_customize_preview_js() {
	wp_enqueue_script( 'tree_theme-customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20151215', true );
}
add_action( 'customize_preview_init', 'tree_theme_customize_preview_js' );

function tree_theme_customize_color_css()
{
    ?>
        <style type="text/css">
            .logo { background-color: #<?php echo get_theme_mod('header_textcolor', '26afff'); ?>; }
        </style>
    <?php
}
add_action( 'wp_head', 'tree_theme_customize_color_css');