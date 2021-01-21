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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'gdrive');

/** MySQL database password */
define('DB_PASSWORD', 'password');

/** MySQL hostname */
define('DB_HOST', 'mysql-service:3306');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'W9-8kJW(=/mJSrK-<rt?TY8t61IA(<o/jK4`=hkhOSCgZrzgt?ReYoWc])4(s75a');
define('SECURE_AUTH_KEY',  'g(YsEkq`Ux#@z.*M3wurTTb[Z:nd@)K8wYt$S>o4&F5O5Z8W!9%:-~[_>/;)[J<!');
define('LOGGED_IN_KEY',    'KF908 ^bY8Q#H)r+k:-xuf@-5^X+N|VY:Wex/eM0}}*JRN3V>bN3nhGgz7 Q}UCr');
define('NONCE_KEY',        'He8&8L-+Zl)4|o_usS`&R6kg:LKaB)*M4R.quF.%)UZJ[T*fq{SCu|>(bX3qNT0k');
define('AUTH_SALT',        'DerL@2/ZwN%[Zx|?^D+g$mtzY5%H2/gFu(PXe]L]wIww: {>{6;J,y.W]-[5m;)@');
define('SECURE_AUTH_SALT', '%(UZ42QaO>=|^HK`TrQ_ScC4V4hFX>kF?Q*|`BPIqBmG8kB@I=XFmL&mK>X2eD@6');
define('LOGGED_IN_SALT',   'c;SBz)i>/GgDzb?2pT8]A}hb|VWeU3 3`~_XI++??RZl4PiREb1sa8,Y`>W[{=M-');
define('NONCE_SALT',       '}*|Z[+Z2q4qk. 4v}1QM]LK*eT@Lw.UPIVu^ROSYxXZv->.;Z{l7r}Vi?kNGD4rR');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
