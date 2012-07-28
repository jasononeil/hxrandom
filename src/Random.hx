/****
* Copyright (c) 2012 Jason O'Neil
* 
* Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
* 
* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
* 
****/

class Random
{
	static function main() 
	{
		// var b1 = new StringBuf();
		// for (i in 0...10)
		// {
		// 	b1.add(bool() + ", ");
		// }
		// trace (b1.toString());
		
		// var b2 = new StringBuf();
		// for (i in 0...100)
		// {
		// 	b2.add(int(1,5) + ", ");
		// }
		// trace (b2.toString());
		
		// var b3 = new StringBuf();
		// for (i in 0...10)
		// {
		// 	b3.add(float(-1,1) + "\n");
		// }
		// trace (b3.toString());
		
		// var b4 = new StringBuf();
		// var arr = ["blue","red","green"];
		// for (i in 0...100)
		// {
		// 	b4.add(fromArray(arr) + ", ");
		// }
		// trace (b4.toString());
	}

	/** Return a random boolean value (true or false) */
	public static inline function bool():Bool
	{
		return Math.random() < 0.5;
	}

	/** Return a random integer between 'from' and 'to', inclusive. */
	public static inline function int(from:Int, to:Int):Int
	{
		return from + Math.floor(((to - from + 1) * Math.random()));
	}

	/** Return a random float between 'from' and 'to', inclusive. */
	public static inline function float(from:Float, to:Float):Float
	{
		return from + ((to - from) * Math.random());
	}

	/** Return a random item from an array.  Will return null if the array is null or empty. */
	public static inline function fromArray<T>(arr:Array<T>):Null<T>
	{
		return (arr != null && arr.length > 0) ? arr[int(0, arr.length - 1)] : null;
	}
}