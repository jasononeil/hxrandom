Random (Haxe Library)
=====================

This *extremely* simple library provides simple helpers to generate random numbers in Haxe.

The methods it provides:

 * Random.int(from, to)  
   Will generate a random integer between `from` and `to`, inclusive.
 * Random.float(from, to)  
   Will generate a random float between `from` and `to`, inclusive.
 * Random.bool()
   Will return a random `true` or `false` boolean value.
 * Random.fromArray(arr)
   Will return a random item from the set array, or Null if the array is empty / null.

This uses Haxe's Math.random(), so don't expect any fancy algorithms.  It'll probably just use
the platform default.  It also uses 'inline' on each of it's methods, to try and keep the 
performance hit to a minimum.  If you're really worried, write them by hand - this is just a simple
helper library.

Future
------

If there's interest, I could add some things like:

 * Random.day() - returns a weekday (English)
 * Random.month() - returns a month (English)
 * Random.word() - returns a random word from Lorem Ipsum.
 * Random.sentence() - returns a random sentence from Lorem Ipsum.
 * Random.paragraph() - returns a random paragraph of Lorem Ipsum.
 * Random.color() - returns a random colour.

As you can see, these would all be pretty useless except perhaps in a 
rapid prototyping context.  But if there's interest, I can do it.