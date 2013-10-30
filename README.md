Random (Haxe Library)
=====================

This *extremely* simple library provides simple helpers to generate random numbers in Haxe.

**Note**: this just uses Haxe's build in Math.random() method, it does no seeding or custom Random Number Generation.  If you want something more random than `Math.random`, this is not the library you're looking for.

Install
-------

`haxelib install random`

And then in your project's hxml build file, add

`-lib random`

Usage
-----

```
import Random;

class Main
{
	static function main()
	{
		Random.int(1,3); // 1, 2, or 3
		Random.float(0,5); // Any float between 0 and 5, inclusive
		Random.bool(); // True or false
		Random.string(5); // A 5 character string using letters A-Z, a-z and 0-9
		Random.string(10, "aeiou"); // A 10 character string using only vowels
		Random.date( Date.now, nextWeek ); // Generate a random date / time between now and next week
		Random.fromArray(['dog','cat','mouse']); // "dog", "cat" or "mouse"
		Random.enumConstructor( Color ); // The constructors of Color, eg: Red, Blue, Green
		Random.shuffle([1,2,3,4,5]); // Return the same array, but with the items shuffled
	}
}
```

The methods it provides:

 * `Random.bool()`  
   Will return a random `true` or `false` boolean value.
 * `Random.int(from, to)`  
   Will generate a random integer between `from` and `to`, inclusive.
 * `Random.float(from, to)`  
   Will generate a random float between `from` and `to`, inclusive.
 * `Random.string(length:Int, ?charactersToUse:String)`  
   Will return a random string using of a certain length, using characters from "charactersToUse" or else A-Za-z0-9
 * `Random.date(earliest:Date, latest:Date)`  
   Will generate a random Date object (date & time) between `earliest` and `latest`, inclusive.
 * `Random.fromArray(arr)`  
   Will return a random item from the set array, or Null if the array is empty / null.
 * `Random.enumConstructor(enum)`  
   Will return a random constructor from an enum, or Null if the enum has no constructors.  Constructors that require parameters will be ignored.
 * `Random.shuffle(arr)`  
   Will shuffle the items in the current array.  This shuffles the current array, it does not return a new one.

These use Haxe's Math.random(), so don't expect any fancy algorithms.  It'll probably just use
the platform default.  It also uses 'inline' on each of it's methods, to try and keep the 
performance hit to a minimum.  If you're really worried, write them by hand - this is just a simple
helper library.

The `shuffle()` method uses a variation of the [Fisher Yates Shuffle](http://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle) algorithm.

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

Making Changes
--------------

 * Edit src/Random.hx
 * Add unit tests to test/RandomTest.hx
 * `haxelib run munit t` - run unit tests, check all are passing
 * `haxelib run mlib v` - increment version number
 * `haxelib run mlib submit` - submit to Haxelib
