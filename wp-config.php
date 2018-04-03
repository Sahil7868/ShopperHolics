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
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'id5244199_wp_bebc848e99ad2217bfd394b74f00e19c');

/** MySQL database username */
define('DB_USER', 'id5244199_wp_bebc848e99ad2217bfd394b74f00e19c');

/** MySQL database password */
define('DB_PASSWORD', '123456789');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'R}r&PqGx5zw#D|]b;/0$ @cx>85Vs#^*R~`7r>k+oo*s),L(PBFf>X|xKgdvpo_6');
define('SECURE_AUTH_KEY',  'pd.lC8Qj{>Ac7MmltT?L3/VOm)uSSs@IrvK}P_+7L|8UD?C$!c /U%_)*E`,EZe:');
define('LOGGED_IN_KEY',    '6+=>2-5mO:6+CV85VT(jY9ef81GlCt;;t +MB}/u=^PK>LE.&si?Y5boPE8iF#`f');
define('NONCE_KEY',        'Mr.51tww b.SF5!Lnqm)dI<7n~g[{5..`H-Wn52ot@6Qv|Nd#JK.F?^ EBhQmTP%');
define('AUTH_SALT',        '~dOVm@#EfjJPY=[Jisv&F6^QX, YT.e$ku56d1Gg>C:hpyCO )MMVB@Udzz_O5tF');
define('SECURE_AUTH_SALT', 'mKq|dJI~40Bw[=qbc@9cLSB~R*![MC/diC!Nx}T+)Q6gG73$++Bo?>v9yBOmAhd_');
define('LOGGED_IN_SALT',   'os~@qZJBR7g4MSusrVG`(Fg+3^z2l`[U)>|xRpYkq1?xp@Dc-feoJK}%3W|lS|wr');
define('NONCE_SALT',       'kOSbC[@8d,be-A2@hPj>muV,ZsYdi4GXv?&<,lq4S_dys4iziI[$|taHA++Pg_&v');

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
