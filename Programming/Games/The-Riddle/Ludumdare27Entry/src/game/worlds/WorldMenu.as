package game.worlds 
{
	import game.ui.CustomButton;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Tommy Snellman
	 */
	public class WorldMenu extends World
	{
		public var playButton:CustomButton;
		public var instructions:Entity = new Entity();
		
		public function WorldMenu() 
		{
			//Create the stuff
			playButton = new CustomButton(320, 420, resources.playButton, resources.playButtonHover, klick);
			instructions.graphic = new Image(resources.instructions);
			instructions.x = 20;
			instructions.y = 50;
			
			//Add the stuff
			add(playButton);
			add(instructions);
		
		}
		
		public function klick():void {
			FP.world = new WorldPlay();
		}
		
	}

}