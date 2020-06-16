package  
{
	import org.flixel.FlxSprite;
	
	public class Lancher extends FlxSprite
	{
		[Embed(source = 'slike/sprLauncher_strip2.png')]public var imgLancher:Class;
		
		public function Lancher(X:Number,Y:Number) 
		{
			super(X, Y);
			loadGraphic(imgLancher, false, false, 16, 16);
			addAnimation("puna", [0]);
			addAnimation("prazna", [1]);
			play("puna");
			this.fixed = true;
			
		}
		
	}

}