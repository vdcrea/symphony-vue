<?php

    ini_set('display_errors', 1);

    // Set the current timezone, should that not be available
    // default to GMT.
    if (!date_default_timezone_set(@date_default_timezone_get())) {
        date_default_timezone_set('GMT');
    }

    // Show PHP Info
    if (isset($_REQUEST['info'])) {
        return phpinfo();
    }

    // Defines some constants
    $clean_url = isset($_SERVER['PATH_INFO']) ? $_SERVER['PATH_INFO'] : null;
    $clean_url = dirname(rtrim($_SERVER['PHP_SELF'], $clean_url));
    $clean_url = rtrim($_SERVER['HTTP_HOST'] . $clean_url, '/\\');
    $clean_url = preg_replace(array('/\/{2,}/i', '/install$/i'), array('/', null), $clean_url);
    $clean_url = rtrim($clean_url, '/\\');
    define('DOMAIN', $clean_url);

    $clean_path = rtrim(dirname(__FILE__), '/\\');
    $clean_path = preg_replace(array('/\/{2,}/i', '/install$/i'), array('/', null), $clean_path);
    $clean_path = rtrim($clean_path, '/\\');
    define('DOCROOT', $clean_path);

    // Required boot components
    define('VERSION', '2.6.7');
    define('INSTALL', DOCROOT . '/install');

    // Include autoloader:
    require_once DOCROOT . '/vendor/autoload.php';

    // Include the boot script:
    require_once DOCROOT . '/symphony/lib/boot/bundle.php';

    define('INSTALL_LOGS', MANIFEST . '/logs');
    define('INSTALL_URL', URL . '/install');

    // If prompt to remove, delete the entire `/install` directory
    // and then redirect to Symphony
    if (isset($_GET['action']) && $_GET['action'] == 'remove') {
        General::deleteDirectory(INSTALL);
        redirect(SYMPHONY_URL);
    }

    // If Symphony is already installed, run the updater
    if (file_exists(CONFIG)) {
        // System updater
        $script = Updater::instance();
    }
    // If there's no config file, run the installer
    else {
        // System installer
        $script = Installer::instance();
    }

    return $script->run();
