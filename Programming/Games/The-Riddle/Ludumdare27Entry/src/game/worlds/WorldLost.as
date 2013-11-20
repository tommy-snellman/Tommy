package game.worlds 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	/**
	 * ...
	 * @author Tommy Snellman
	 */
	public class WorldLost extends World
	{
		public var bg:Entity = new Entity();
		
		public function WorldLost() 
		{
			bg.graphic = new Image(resources.lostScreen);
			
			add(bg);
		}
		
	}

}