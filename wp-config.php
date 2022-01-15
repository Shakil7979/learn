<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'codepbxn_sadbin' );

/** MySQL database username */
define( 'DB_USER', 'codepbxn_sadbin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'zU,$jAnZ4Ta~' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '0T7Ha!R}LFL4$/$P}Z?CyQ|a4&ae~zFn8R@m<!Z%Qc*^d]Y8<i~l!/&M{*d8p1V#' );
define( 'SECURE_AUTH_KEY',  'n{{GcYtjtie$g]a7?oM~,%+Vq9EHIYaY<f>;=(>|$=!^51@0Kc1+QSYS_-9;~P{]' );
define( 'LOGGED_IN_KEY',    ';0pa[Dt/bEz/R$Ie .=xjnWVL9937hd3UstLf5:_@JO_&1O>Fy>(8H@_54X-m5ev' );
define( 'NONCE_KEY',        '`F_ktEoJY0(NJ.AP2Y}fu/I;4b4e j,5z(Iy1QXs2,k,,=(b){:%ld`)qgOz>s4x' );
define( 'AUTH_SALT',        'vf!.F)4:/p)fa;yq<qOfM9<}.yI1p]w<3>UddB9bxbL,#:uYi~Ch{6sJJ`RV0JF1' );
define( 'SECURE_AUTH_SALT', '87S0&~%xR)w99D]pD+AQ{V*4VtR|-YI!Bh|N+!#=L3}e?iFn]Nm.pL|%aVA_)k8>' );
define( 'LOGGED_IN_SALT',   'c=?#jbu_X&4X2jv:3J,Qbr>6J;n9Brq(F`wVv@r7f`Dm|s()LQwPo4<]6O_kg}N|' );
define( 'NONCE_SALT',       '{ka0[r.{]ym%$RH9UkZs*8D,n<uVG,7Yu]4V u7./S6gPysM8EmUL~>NR6mEh@>i' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
