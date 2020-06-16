package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	
	public class Splash extends FlxSprite
	{
		[Embed(source = 'slike/sprSplash.png')]public var imgSplash:Class;
		[Embed(source = 'muzika/sndSwitch.mp3')]public var sndSwitch:Class;
		
		public var grow:Number;
		
		public function Splash(X:Number,Y:Number) 
		{
			super(X, Y);
			loadGraphic(imgSplash);
			FlxG.play(sndSwitch);
			if (Math.random() > 0.5)
            
            grow = 0.1;	
			else grow = -0.1;
			
		}
		override public function update():void
		{
			     this.scale.y -= 0.1;
				 this.scale.x += grow;
			     super.update();
				 if (this.scale.y < 0) this.kill();
		}
    }
}