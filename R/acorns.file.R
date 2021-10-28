acorns.file <-
function(fpath) {
    res = acorns.post('files/saveas', list(file=upload_file(fpath)));
    return(res)
}
