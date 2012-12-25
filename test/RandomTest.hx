package;

import Random;
import massive.munit.Assert;

/**
* Auto generated ExampleTest for MassiveUnit. 
* This is an example test class can be used as a template for writing normal and async tests 
* Refer to munit command line tool for more information (haxelib run munit)
*/
class RandomTest 
{
	public function new() 
	{
		
	}
	
	@BeforeClass
	public function beforeClass():Void
	{
	}
	
	@AfterClass
	public function afterClass():Void
	{
	}
	
	@Before
	public function setup():Void
	{
	}
	
	@After
	public function tearDown():Void
	{
	}
	
	
	@Test
	public function int():Void
	{
		for (i in 0...1000)
		{
			var r = Random.int(5,10);
			Assert.isTrue(Std.is(r, Int));
			Assert.isTrue(r > 4);
			Assert.isTrue(r < 11);
		}
	}

	@Test
	public function intNegative():Void
	{
		for (i in 0...1000)
		{
			var r = Random.int(-10,-5);
			Assert.isTrue(Std.is(r, Int));
			Assert.isTrue(r > -11);
			Assert.isTrue(r < -4);
		}
	}

	@Test
	public function intNegativeAndPositive():Void
	{
		for (i in 0...1000)
		{
			var r = Random.int(-1,1);
			Assert.isTrue(Std.is(r, Int));
			Assert.isTrue(r > -2);
			Assert.isTrue(r < 2);
		}
	}

	@Test
	public function intInclusive():Void
	{
		var r = Random.int(1,1);
		Assert.areEqual(1, r);
	}

	@Test
	public function float():Void
	{
		for (i in 0...1000)
		{
			var r = Random.float(5,7);
			Assert.isTrue(Std.is(r, Float));
			Assert.isTrue(r > 4.99999999999);
			Assert.isTrue(r < 7.00000000001);
		}
	}

	@Test
	public function floatNegative():Void
	{
		for (i in 0...1000)
		{
			var r = Random.float(-10,-5);
			Assert.isTrue(Std.is(r, Float));
			Assert.isTrue(r > -10.00000000000001);
			Assert.isTrue(r < -4.99999999999999);
		}
	}

	@Test
	public function floatNegativeAndPositive():Void
	{
		for (i in 0...1000)
		{
			var r = Random.float(-1,1);
			Assert.isTrue(Std.is(r, Float));
			Assert.isTrue(r > -1.0000000000001);
			Assert.isTrue(r < 1.00000000000001);
		}
	}

	@Test 
	public function floatDecimal():Void 
	{
		for (i in 0...1000)
		{
			var r = Random.float(-0.1,0.1);
			Assert.isTrue(Std.is(r, Float));
			Assert.isTrue(r > -0.1000000000001);
			Assert.isTrue(r < 0.10000000000001);
		}
	}

	@Test
	public function floatInclusive():Void
	{
		var r = Random.float(7.2,7.2);
		Assert.areEqual(7.2, r);
	}

	@Test
	public function bool():Void
	{
		for (i in 0...1000)
		{
			var r = Random.bool();
			Assert.isTrue(Std.is(r, Bool));
			Assert.isTrue(r == true || r == false);
		}
	}

	@Test
	public function string():Void
	{
		#if !flash8
			var re = ~/^[A-Za-z0-9]*$/;
		#end 
		for (i in 0...1000)
		{
			var r = Random.string(20);
			Assert.isType(r, String);
			Assert.areEqual(20, r.length);
			#if !flash8 
				Assert.isTrue(re.match(r));
			#end
		}
	}

	@Test
	public function stringWithCustomRange():Void
	{
		#if !flash8
			var re = ~/^[AB]*$/;
		#end 
		for (i in 0...1000)
		{
			var r = Random.string(20, "AB");
			Assert.isType(r, String);
			Assert.areEqual(20, r.length);
			#if !flash8 
				Assert.isTrue(re.match(r));
			#end
		}
	}

	@Test
	public function arrayOfStrings():Void
	{
		var days = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
		for (i in 0...1000)
		{
			var day = Random.fromArray(days);
			Assert.isType(day,String);
			Assert.isTrue(
				day == "Sun"
				|| day == "Mon"
				|| day == "Tue"
				|| day == "Wed"
				|| day == "Thu"
				|| day == "Fri"
				|| day == "Sat"
			);
		}
	}

	@Test
	public function arrayOfInts():Void
	{
		var days = [0,1,2,3,4,5,6];
		for (i in 0...1000)
		{
			var r = Random.fromArray(days);
			Assert.isTrue(Std.is(r, Int));
			Assert.isTrue(
				r == 0
				|| r == 1
				|| r == 2
				|| r == 3
				|| r == 4
				|| r == 5
				|| r == 6
			);
		}
	}

	@Test 
	public function arrayEmpty():Void 
	{
		var arr = [];
		Assert.isNull(Random.fromArray(arr));
	}

	@Test 
	public function arrayNull():Void 
	{
		var arr = null;
		Assert.isNull(Random.fromArray(arr));
	}

}