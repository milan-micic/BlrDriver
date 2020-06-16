package  
{
	import org.flixel.FlxG;
	import org.flixel.FlxGroup;
	import org.flixel.*;
	import org.flixel.FlxPoint;
	import org.flixel.FlxSound;
	import org.flixel.FlxSprite;
	import org.flixel.FlxState;
	import org.flixel.FlxU;
	
	public class level1 extends FlxState
	{
		[Embed(source = 'muzika/mus2.mp3')]public var muz1:Class;
		[Embed(source = 'font/04B_03__.TTF', fontName = "Arial")]public var _font:Class;
		[Embed(source = 'muzika/mus1.mp3')] public var muz2:Class;  
		[Embed(source = 'slike/bg.png')]public var imgPoz:Class;
		[Embed(source = 'slike/bgSpline.png')]public var imgPozSpline:Class;
		
		
		public var muzika1:FlxSound; 
		public var muzika2:FlxSound;
		public var plat:FlxGroup;
		public var poz:FlxSprite;
		public var pozSpline:FlxTileblock;
		public const hX:Number = 16;
		public const hY:Number = 16;
		public var igrac:Player;
		public var skakaonica1:Lancher;
		public var skakaonica2:Lancher
		public var bucka:Splash;
		public var provera:FlxSprite;
		public var bLinija:FlxSprite;
		public var zvezdaGrupa:FlxGroup;
		public var HUD:FlxText;
		//public var linija:FlxSprite;
		//public var rastojanje:Array = new Array();
		//public var blizaZvezda:Number = 4;
		public var brojZvezda:Number = 24;
		public var t:Number = 3;
		public var brPoz:Number = 5;
		//private var crtaj:Boolean= true;
		public var komentar:Komentar;
		public var rezX:Number;
		public var rezY:Number;
		
		override public function create():void
		{   
			FlxG.score = 25;
			poz = new FlxSprite(0, 0, imgPoz);			
			add(poz);
			
			
			
			//Platforme
			plat = new FlxGroup();
			plat.add(new platforma(22 * hX, 20 * hY, 13 * hX, hY,0xFF6f4f68));			
			plat.add(new platforma(24 * hX, 21 * hY,  hX, hY,0xFF6f4f68));
			plat.add(new platforma(22 * hX, 22 * hY,  hX, hY,0xFF6f4f68));
			plat.add(new platforma(31 * hX, 21 * hY, 4 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(33 * hX, 22 * hY, 2 * hX, 2 * hY,0xFF6f4f68));
			plat.add(new platforma(25 * hX, 23 * hY, 3 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(26 * hX, 24 * hY, 4 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(27 * hX, 25 * hY, 3 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(28 * hX, 26 * hY, 7 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(31 * hX, 27 * hY, 4 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(38 * hX, 20 * hY, 9 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(49 * hX, 20 * hY, 4 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(38 * hX, 21 * hY, 8 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(38 * hX, 22 * hY, 2 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(38 * hX, 23 * hY, hX, hY,0xFF6f4f68));
			plat.add(new platforma(50 * hX, 28 * hY, 3 * hX, 3 * hY,0xFF6f4f68));
			plat.add(new platforma(50 * hX, 31 * hY, 2 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(46 * hX, 37 * hY, 5 * hX, 2 * hY,0xFF6f4f68));
			plat.add(new platforma(46 * hX, 36 * hY, 2 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(47 * hX, 35 * hY, hX, hY,0xFF6f4f68));
			plat.add(new platforma(31 * hX, 37 * hY, 5 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(29 * hX, 38 * hY, 10 * hX, hY,0xFF6f4f68));
			plat.add(new platforma(32 * hX, 36 * hY, hX, hY,0xFF6f4f68));
			plat.add(new platforma(34 * hX, 36 * hY, hX, hY,0xFF6f4f68));
			
			plat.add(new platforma(29 * hX, 19 * hY, 6 * hX, hY,0xFF706550));
			plat.add(new platforma(33 * hX, 12 * hY, 2 * hX, 5 * hY,0xFF706550));
			plat.add(new platforma(32 * hX, 12 * hY, hX,3*hY,0xFF706550));
			plat.add(new platforma(30 * hX, 12 * hY, 2 * hX, 2 * hY,0xFF706550));
			plat.add(new platforma(27 * hX, 12 * hY, 3 * hX, hY,0xFF706550));
			plat.add(new platforma(26 * hX, 11 * hY, 8 * hX, hY,0xFF706550));
			plat.add(new platforma(26 * hX, 10 * hY, 5 * hX, hY,0xFF706550));
			plat.add(new platforma(32 * hX, 9 * hY, hX, hY,0xFF706550));
			plat.add(new platforma(29 * hX, 5 * hY, 6 * hX, hY,0xFF706550));
			plat.add(new platforma(37 * hX, 19 * hY, 8 * hX, hY,0xFF706550));
			plat.add(new platforma(37 * hX, 18 * hY, 6 * hX, hY,0xFF706550));
			plat.add(new platforma(37 * hX, 10 * hY, hX, 4 * hY,0xFF706550));
			plat.add(new platforma(38 * hX, 10 * hY, hX, 5 * hY,0xFF706550));
			plat.add(new platforma(37 * hX, 8 * hY, 4 * hX, hY, 0xFF706550));
			plat.add(new platforma(37 * hX, 9 * hY, 4 * hX, hY, 0xFF706550));
			plat.add(new platforma(37 * hX, 127, 4 * hX, 1, 0xFF706550));//doadtak zbog quake
			plat.add(new platforma(44 * hX, 2 * hY, 3 * hX, 2 * hY,0xFF706550));
			plat.add(new platforma(49 * hX, 19 * hY, 2 * hX, hY, 0xFF706550));//pre skak2
			plat.add(new platforma(52 * hX, 19 * hY,  hX, hY, 0xFF706550));//posle skak2
			plat.add(new platforma(56 * hX, 6 * hY, hX, hY,0xFF706550));
			plat.add(new platforma(53 * hX, 7 * hY, 11 * hX, hY,0xFF706550));
			plat.add(new platforma(54 * hX, 8 * hY, 8 * hX, hY,0xFF706550));
			plat.add(new platforma(54 * hX, 9 * hY, 7 * hX, hY,0xFF706550));
			plat.add(new platforma(58 * hX, 10 * hY, 2 * hX, 7 * hY,0xFF706550));
			plat.add(new platforma(70 * hX, 6 * hY, 3 * hX, hY,0xFF706550));
			plat.add(new platforma(71 * hX, 5 * hY, 2 * hX, hY,0xFF706550));
			plat.add(new platforma(72 * hX, 4 * hY, hX, hY,0xFF706550));
			plat.add(new platforma(76 * hX, 3 * hY, hX, 2 * hY,0xFF706550));
			add(plat);
			
			zvezdaGrupa = new FlxGroup();
			zvezdaGrupa.add(new Zvezda(32 * hX, 28 * hY));
			zvezdaGrupa.add(new Zvezda(41 * hX, 27 * hY));
			zvezdaGrupa.add(new Zvezda(42 * hX, 22 * hY));
			zvezdaGrupa.add(new Zvezda(41 * hX, 17 * hY));
			zvezdaGrupa.add(new Zvezda(24 * hX, 14 * hY));
			zvezdaGrupa.add(new Zvezda(28 * hX, 9 * hY));
			zvezdaGrupa.add(new Zvezda(21 * hX, 4 * hY));
			zvezdaGrupa.add(new Zvezda(33 * hX, 4 * hY));
			zvezdaGrupa.add(new Zvezda(1 * hX, 16 * hY));
			zvezdaGrupa.add(new Zvezda(39 * hX, 7 * hY));
			zvezdaGrupa.add(new Zvezda(40 * hX, 12 * hY));
			zvezdaGrupa.add(new Zvezda(45 * hX, 1 * hY));
			zvezdaGrupa.add(new Zvezda(45 * hX, 4 * hY));
			zvezdaGrupa.add(new Zvezda(51 * hX, 18 * hY));
			zvezdaGrupa.add(new Zvezda(51 * hX, 21 * hY));
			zvezdaGrupa.add(new Zvezda(55 * hX, 10 * hY));
			zvezdaGrupa.add(new Zvezda(58 * hX, 17 * hY));
			zvezdaGrupa.add(new Zvezda(62 * hX, 6 * hY));
			zvezdaGrupa.add(new Zvezda(76 * hX, 5 * hY));
			zvezdaGrupa.add(new Zvezda(51 * hX, 32 * hY));
			zvezdaGrupa.add(new Zvezda(65 * hX, 33 * hY));
			zvezdaGrupa.add(new Zvezda(33 * hX, 39 * hY));
			zvezdaGrupa.add(new Zvezda(36 * hX, 37 * hY));
			zvezdaGrupa.add(new Zvezda(33 * hX, 24 * hY));
			zvezdaGrupa.add(new Zvezda(22 * hX, 23 * hY));
			add(zvezdaGrupa);
			
			
			
			//plat.add(new platforma(37 * hX, 20 * hY, 16, 16, 0xFF706550));
			plat.add(new platforma(37 * hX, 20 * hY, 16, 1, 0xFF706550));
			plat.add(new platforma(51 * hX, 19 * hY+15, 16, 1, 0xFF706550));
			
			skakaonica1=new Lancher(37 * hX, 20 * hY+1);	
			skakaonica1.collideLeft = false;
		    skakaonica1.collideRight = false;
			add(skakaonica1);
			
			skakaonica2 = new Lancher(51 * hX, 19 * hY-1);
			skakaonica1.collideLeft = false;
		    skakaonica1.collideRight = false;		
			add(skakaonica2);
			
			igrac =  new Player(480, 288);
			
			provera = new FlxSprite(0,320);
			provera.createGraphic(1263,2, 0xffff0000);
			provera.fixed = true;
			
		    bLinija = new FlxSprite(igrac.x+4, igrac.y + 8);
			bLinija.createGraphic(8, 2, 0xFFFF00FF);
			bLinija.fixed = true;
			
			HUD = new FlxText(145, (this.height/2), 100,""+ FlxG.score);
			HUD.scrollFactor.x = HUD.scrollFactor.y = 0;
			HUD.setFormat("Arial", 32);	
			add(HUD);
			
			drawPozadinu();
			//add(provera);			
			add(igrac);
			//add(bLinija);			
			muzika1 = new FlxSound();
			muzika1.loadEmbedded(muz1, true);
			muzika2 = new FlxSound();
			muzika2.loadEmbedded(muz2, true);			
			muzika1.play();
			
			komentar = new Komentar(HUD.x - 65, HUD.y + 40);
	
		}
		//public function vrti(X:Number):void
		//  {  
			 
		//	 for (var Q:Number = 0; Q <= brojZvezda; Q++)
		//	    {
		//			//rastojanje[Q]=(Math.sqrt(((igrac.getScreenXY().x - zvezdaGrupa.members[Q].getScreenXY().x) * (igrac.getScreenXY().x - zvezdaGrupa.members[Q].getScreenXY().x)) + ((igrac.getScreenXY().y - zvezdaGrupa.members[Q].getScreenXY().y) * (igrac.getScreenXY().y - zvezdaGrupa.members[Q].getScreenXY().y))));
		//			rastojanje[Q] = getDistance(zvezdaGrupa.members[Q].x,zvezdaGrupa.members[Q].y,igrac.x,igrac.y);
		//			X = Math.min(X, rastojanje[Q]);
		//			if (Math.round(X) == Math.round(rastojanje[Q]) && zvezdaGrupa.members[Q].exists )
		//			   {
		//					blizaZvezda = Q;
		//				}
					
		//		}  
		//  }
	   

		
		override public function update():void
		{ 
		//	vrti(2880);
		    if (!komentar.exists)drawKomentar();
			bLinija.x = igrac.x+4;
			bLinija.y = igrac.y + 8;
			
			if ((FlxG.score == 20) && (brPoz == 5)) ubaciKomentar(1);			
			else
			if ((FlxG.score == 15) && (brPoz == 4)) ubaciKomentar(2);			
			else
			if ((FlxG.score == 10) && (brPoz == 3)) ubaciKomentar(3);
			else
		    if ((FlxG.score == 5) && (brPoz == 2)) ubaciKomentar(4);
			else
			if ((FlxG.score == 0) && (brPoz == 1)) ubaciKomentar(5);
			
			if (igrac.x > 1264)
			{
				igrac.reset(0,igrac.y); 
			}
			else
			if (igrac.x < 0)
			{
			 igrac.reset(1254,igrac.y);
			}
			
	          if ((igrac.y) > 320 )
			   {
				   muzika1.stop();
				   muzika2.play();
			   }
			else 
			  if ((igrac.y) < 320 )
			  {				   
				   muzika2.stop();
				   muzika1.play(); 	
		      }
			  if ( provera.overlaps(bLinija))
			    {
				   
				   bucka = new Splash(igrac.x + 2, 308);					
		           add(bucka);   
				}
			
     		if (skakaonica1.collide(igrac) && FlxG.score<=15 )
			   {  			  
				    igrac.velocity.y = 500; 
			   } 
			if  (skakaonica2.collide(igrac)&& FlxG.score<=15)
			   {
					igrac.velocity.y = -500;
			   }
			if (FlxG.score <= 15)
			   {
				   skakaonica1.play("prazna");
				   skakaonica2.play("prazna");
			   }
			//if (crtaj)
			//   {	
			 //    linija = new Linija(zvezdaGrupa.members[blizaZvezda].getScreenXY(), igrac.getScreenXY(), this);
			 //    add(linija);  
			//   }
			 if ((FlxG.keys.SPACE) && (brojZvezda <= 23))
			    {
					igrac.reset(rezX, rezY);
				}
			super.update();
			
			FlxU.collide(igrac, plat);
			
			FlxU.overlap(igrac, zvezdaGrupa, onIgracOverlapZvezu);
			FlxG.follow(igrac);
			FlxG.followBounds(0, 0, poz.width, poz.height);
		    
			
		}
		public function drawPozadinu():void
		{
			pozSpline = new FlxTileblock(0,0,1264,640);
			pozSpline.loadGraphic(imgPozSpline);
			add(pozSpline);
		}
		public function drawKomentar():void
		{
			komentar = new Komentar(HUD.x - 65, HUD.y + 40);
		}
		
		public function onIgracOverlapZvezu(Igrac:FlxObject, zvezda:FlxObject):void
		    {
				var i:Number;
				FlxG.score = FlxG.score-1;
				HUD.text = "" + FlxG.score;
				rezX = zvezda.x; rezY = zvezda.y;
				zvezda.kill();
				brojZvezda = brojZvezda - 1;
				i = zvezdaGrupa.members.lastIndexOf(zvezda, brojZvezda);
				zvezdaGrupa.members.splice(i, 1);
			}
			public function ubaciKomentar(x:Number):void
			{
				  igrac.active = false;
				  pozSpline.kill();
				  
				  if (x == 1) komentar.play("prva");
				  if (x == 2) komentar.play("druga");
				  if (x == 3) komentar.play("treca");
				  if (x == 4) komentar.play("cetvrta");
				  if (x == 5) komentar.play("peta");
				  
				  add(komentar);
				  drawPozadinu();
				  t = t - FlxG.elapsed;
				  if (t < 0) 
				    {
						komentar.kill();
						igrac.active = true;
						brPoz = brPoz - 1;
						resetTime();
						
					}
			}
			public function resetTime():void
			{
				t = 5;
			}
	//	public function getDistance(P1:Number, P2:Number,P3:Number,P4:Number):Number
    //       {
	//		   var XX:Number = Math.max(P3, P1) - Math.min(P3, P1);
	//		   var YY:Number = Math.max(P4, P2) - Math.min(P4, P2);	        
	//         return Math.sqrt( XX * XX + YY * YY );
    //       }
	}  

}