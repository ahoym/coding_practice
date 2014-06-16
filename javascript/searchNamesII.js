/* 
There are troubles with users ending or starting in a ".", and his user-array is a flat array 
of user-email-pairs, like so:

[ "foo", "foo@bar.com", "bar", "bar@foo.com", ".foo", "food@bar.com" ]

He is only interested in e-mailing the users and ask them to sign up again, so no need to 
keep the user-name, only e-mail addresses for the user-names that start or end with a "." 
should be returned. For the above array, the correct return-array would be

[ "food@bar.com" ]

You have to use the filter-method of Javascript, which returns each element of the array for 
which the filter-method returns true. 
*/


function searchNamesII( logins ){
  return logins.filter( function(login, index, arr) {
    var prev = arr[index - 1];
    if (prev === undefined) return;
  
    if (prev[0] === "." || prev.slice(-1) === ".") {
      return arr[index];
    }
  });
};
