package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import game.worlds.WorldMenu;
	import net.flashpunk.FP;
	import net.flashpunk.Engine;
	
	/**
	 * ...
	 * @author Tommy Snellman
	 */
	
	[SWF(width=640, height=480, frameRate=30, backgroundColor=0x000000)]
	public class Main extends Engine 
	{
		
		public function Main():void 
		{
			super(640, 480, 30, false);
		}
		
		override public function init():void 
		{
			FP.world = new WorldMenu();
		}
		
	}
	
}