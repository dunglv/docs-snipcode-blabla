if (!function_exists('url')) {
    function url()
    {
        return sprintf(
            "%s://%s%s%s",
            isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http',
            $_SERVER['SERVER_NAME'],
            trim($_SERVER['REQUEST_URI'], '\/ '),
            $_SERVER['SERVER_PORT'] != '' && $_SERVER['SERVER_PORT'] != '80' ? ':' . $_SERVER['SERVER_PORT'] : ''
        );
    }
}
