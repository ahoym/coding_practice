/* 
While developing a website, you detect that some of the members have troubles logging in. 
Searching through the code you find that all logins ending with a "_" make problems. 
So you want to write a function that takes an array of pairs of login-names and e-mails, 
and outputs an array of all login-name, e-mails-pairs from the login-names that end with "_".

If you have the input-array:
[ [ "foo", "foo@foo.com" ], [ "bar_", "bar@bar.com" ] ]

it should output:
[ [ "bar_", "bar@bar.com" ] ]
*/

function searchNamesII( logins ){
  var underscores = [];
  
  for (var i = 0; i < logins.length; i++) {
    var check = logins[i][0];
    if (check[check.length - 1] === "_")
      underscores.push(logins[i]);
  }
  
  return underscores;
};

// using .filter()
function searchNames( logins ){
  return logins.filter(function(login) {
		if (login.length < 2) return;
		if (typeof login[0] !== "string") return;
		// can also do login[0].slice(-1) === "_"
    return login[0][login[0].length - 1] === "_"
  });
};