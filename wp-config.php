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
define( 'DB_NAME', 'mydb' );

/** MySQL database username */
define( 'DB_USER', 'user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'mypassword' );

/** MySQL hostname */
define( 'DB_HOST', 'mysqldb.cp9r1m2v4egb.us-east-1.rds.amazonaws.com' );

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
define( 'AUTH_KEY',         'z-_zdsZPqZynqmk}JSMT *+]qwu}uk6*>J49G6i:90MZ>{ UIY^wvW>HS-OQ$2Mk' );
define( 'SECURE_AUTH_KEY',  '3qSUFq_{hZFbx.q}n(]4f+>0[iRUE7u{8DCsj{!9b94~S`0~F##9sXv,QDm;oh21' );
define( 'LOGGED_IN_KEY',    'OHm[NH.(^bhg=+aR}I&VT0io*91Tl*R//lkR}@~S5CCA|8y_ i@V=@;UuZMbu;@Q' );
define( 'NONCE_KEY',        '`ZGo6{u-J_YX%J+$SZnaI<7VE/Dr(sh/jT6BmU4EEvKxm78;T_n$_?x_ua,N+TfC' );
define( 'AUTH_SALT',        'njBsN:UpCDt1fN0;qb_3EW{k!7t-=7dK6AD>>d{ec/Ofb$,o=ZCl2<=}N5Rb$Y3h' );
define( 'SECURE_AUTH_SALT', '2pV7D-k]eHO#Qk?*%O(2dp=LCMuAs,mF7NqcND(4E):,sAKu2r+`Yuf-` !B]`_d' );
define( 'LOGGED_IN_SALT',   'E`$RAG @IZ0uRh?D2a[5zY!5)64w7mrtR&,atG|(SkNEzsbX&1QdQ-lkIF*PhkDx' );
define( 'NONCE_SALT',       'c(Q>p1QY|P4O*! biB>$iE+,Kk$KljS=6$w_G8Q b#0I2(X+LbL)YPp9bJ|N2{nn' );

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