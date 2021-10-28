acornsErrorHandler <-
function(bdy, res) {
    print(sprintf("There was an error: %s", bdy$message));
    return(bdy)
}
