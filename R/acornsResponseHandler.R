acornsResponseHandler <-
function(res) {
    code <- status_code(res);
    bdy <- content(res, 'parsed');
    if(code>300) {
        return(acornsErrorHandler(bdy, res));
        ##print(sprintf('response code: %s', code));
        ##print(headers(res))
        ##print(bdy);
    } else {
        return(bdy);
    }
}
