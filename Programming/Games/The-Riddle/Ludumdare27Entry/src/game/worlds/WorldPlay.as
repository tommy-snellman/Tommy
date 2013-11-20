package game.worlds 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	/**
	 * ...
	 * @author Tommy Snellman
	 */
	public class WorldPlay extends World
	{
		
		public var bg:Entity = new Entity();
		public var timer:Number = 0;
		public var timesPressed:int = 0;
		
		public function WorldPlay() 
		{
			bg.graphic = new Image(resources.bg);

			add(bg);
		}
		
		override public function update():void 
		{
			// 1 sec = 30.
			timer++;
			
			if (Input.pressed(Key.SPACE)) {
				timesPressed++;
				if (timesPressed == 3 && timer <= 300) {
					FP.world = new WorldWin();
				}
			}else if (timer > 300) {
				FP.world = new WorldLost();
			}
			
			
			super.update();
		}
	}

}