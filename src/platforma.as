package  
{
	import org.flixel.FlxSprite;
	
	public class platforma extends FlxSprite
	{
		
		
		public function platforma(X:Number,Y:Number,W:Number,H:Number,B:uint) 
		{
			
		     super(X, Y);
		     createGraphic(W,H,B);
			 this.fixed = true;
		     
			
		}
		
	}

}