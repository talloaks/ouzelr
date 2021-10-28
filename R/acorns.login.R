acorns.login <-
function(usr) {
    pwd = readline(sprintf('Enter password for %s: ', usr))
    res = acorns.post('user/checkLogin', list(email=usr, token=pwd));
    if(!is.null(res$token)) {
        Sys.setenv(acorns_token = res$token)
    }
    return(res)
}
