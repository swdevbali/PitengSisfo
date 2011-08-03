/* borrowed from : http://stackoverflow.com/questions/1353684/detecting-an-invalid-date-date-instance-in-javascript  */
function isValidDate(d) {
    if ( Object.prototype.toString.call(d) !== "[object Date]" )
        return false;
    return !isNaN(d.getTime());
}