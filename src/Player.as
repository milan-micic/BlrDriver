package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	
	public class Player extends FlxSprite
	{
		
		[Embed(source = 'slike/imgPlayer.png')]public var imgPlayer:Class;
		 
		
		public const SPEED:Number = 150;
		public const gravitacija :int = 500;
		public const JUMP:int = 300;
		
		
		public function Player(X:Number,Y:Number) 
		{
			super(X, Y);
			loadGraphic(imgPlayer, true,true, 16, 16);
			
			addAnimation("trci", [ 0, 1, 2, 3 ], 11,true);
			addAnimation("stoji", [3]);
			addAnimation("skaci", [4,5,6,7],11,true);
			play("stoji");
			//offset.x = -1;
			acceleration.y = gravitacija;
			maxVelocity.y = 700;
			//colHullX.x = 10;
		}
		override public function update():void
		{
			velocity.x = 0;
			if (FlxG.keys.LEFT)
			     {
					 velocity.x -= SPEED ; 
				 }
			 else
			 if (FlxG.keys.RIGHT)
			     {
					 velocity.x += SPEED;
				 }
			 if (this.y < 320)
			   {
				   this.angle = 0;
				   this.acceleration.y = gravitacija;
				 if ((FlxG.keys.justPressed("X") || FlxG.keys.justPressed("UP")) && velocity.y==0)
			      {
					  velocity.y = -JUMP;
				  }
			   }
			if (this.y > 320)
			{
				this.angle = 180;
				this.acceleration.y = -gravitacija;
				if ((FlxG.keys.justPressed("X") || FlxG.keys.justPressed("UP")) && velocity.y==0)
			      {
					  velocity.y = JUMP; 
				  }
			}
			
			if (velocity.y != 0)
                {
                    play("skaci");
                }
                else
                {
                    if (velocity.x == 0)
                    {
                        play("stoji");
                    }
                    else
                    {
                       play("trci");
                    }
                }
			
			
			super.update();
			
		}
	}

}