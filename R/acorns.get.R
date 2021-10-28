acorns.get <-
function(action) {
    api <- Sys.getenv('acorns_url');
    url <- sprintf('%s/api/%s', api, action);
    acorns_token = Sys.getenv('acorns_token');
    res <- GET(url, set_cookies("acorns_token" = acorns_token))
    res <- acornsResponseHandler(res)
    return(res)
}
