package  
{
	import org.flixel.FlxSprite;
	
	public class Zvezda extends FlxSprite
	{
		[Embed(source = 'slike/sprStar_strip4.png')]public var imgZvezda:Class;
		
		public function Zvezda(X:Number,Y:Number) 
		{
			super(X, Y);
			loadGraphic(imgZvezda, true, false);
			addAnimation("treperi", [0, 1, 2, 3], 5, true);
			play("treperi");
		}
		
	}

}