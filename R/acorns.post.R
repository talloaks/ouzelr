acorns.post <-
function(action, args=list(), file=NULL) {
    api <- Sys.getenv('acorns_url');
    url <- sprintf('%s/api/%s', api, action);
    if(!is.null(file)) {
        args[['file']] = upload_file(file);
    }
    res <- POST(url, body=args, set_cookies("acorns_token" = Sys.getenv('acorns_token')))
    res <- acornsResponseHandler(res)
    return(res)
}
