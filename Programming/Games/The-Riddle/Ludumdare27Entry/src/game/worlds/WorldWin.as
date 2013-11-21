package game.worlds 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	/**
	 * ...
	 * @author Tommy Snellman
	 */
	public class WorldWin extends World
	{
		public var bg:Entity = new Entity();
		
		public function WorldWin() 
		{
			bg.graphic = new Image(resources.winScreen);
			
			add(bg);
		}
		
	}

}