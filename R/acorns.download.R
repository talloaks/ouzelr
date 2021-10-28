acorns.download <-
function(action, fpath) {
    api <- Sys.getenv('acorns_url');
    url <- sprintf('%s/api/%s', api, action);
    res <- GET(url, set_cookies("acorns_token" = Sys.getenv('acorns_token')))
    ##res <- acornsResponseHandler(res)
    return(res)
}
