package  
{
	import org.flixel.FlxSprite;
	import org.flixel.*;
	
	public class Linija extends FlxSprite
	{
		public var eP:FlxPoint;
		public var pP:FlxPoint;
		public var kP:FlxPoint;
		public var St:FlxState;
		
		public override function Linija(sP:FlxPoint,iP:FlxPoint,S:FlxState) 
		{
			St = S;
			
			
			pP = new FlxPoint(sP.x+8, sP.y+8);
			kP = new FlxPoint(iP.x+8, iP.y+8);
			eP = new FlxPoint( kP.x, kP.y);
			this.antialiasing = false;
			
		}
		override public function update():void
		{   
			this.St.graphics.clear();
			
			St.graphics.lineStyle(1, 0xFF000000);
			St.graphics.moveTo(pP.x,pP.y);
			St.graphics.lineTo(eP.x, eP.y);
			eP.x += (kP.x - eP.x) / 4;
            eP.y += (kP.y - eP.y) / 4;
			super.update();
			
		}
	}

}