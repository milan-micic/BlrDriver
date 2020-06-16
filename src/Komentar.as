package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Milan
	 */
	public class Komentar extends FlxSprite
	{
		[Embed(source = 'slike/komantari.png')]public var imgKomentar:Class;
		public function Komentar(x:Number,y:Number) 
		{
			super(x, y);
			loadGraphic(imgKomentar, false, false, 160, 160);
			addAnimation("prva", [0]);
			addAnimation("druga", [1]);
			addAnimation("treca", [2]);
			addAnimation("cetvrta", [3]);
			addAnimation("peta", [4]);
			play("prva");
			scrollFactor.x = scrollFactor.y = 0;
			scale.x = 2;
			scale.y = 1.5;
		}
		
	}

}