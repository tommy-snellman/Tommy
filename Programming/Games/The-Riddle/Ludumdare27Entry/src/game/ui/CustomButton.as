package game.ui 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	
	public class CustomButton extends Entity
	{
		public const OFF:int = 0;
		public const ON:int = 1;
		
		public var state:int = OFF;
		private var lastState:int = OFF;
		
		private var img:Image;
		public var onImg:Image;
		public var offImg:Image;
		
		public var callFunc:Function;
		
		public function CustomButton(x:int, y:int, offImg:Class, onImg:Class, callFunc:Function = null) 
		{
			this.x = x;
			this.y = y;
			
			this.onImg = new Image(onImg);
			this.offImg = new Image(offImg);
			
			graphic = img = this.offImg;
			
			this.callFunc = callFunc;
		}
		
		override public function update():void 
		{
			if (Input.mouseX >= x && Input.mouseX < x + img.width && 
				Input.mouseY >= y && Input.mouseY < y + img.height) {
					state = ON;
				}
				else {
					state = OFF;
				}
				
				if (lastState != state) {
					stateChanged();
					lastState = state
				}
				
				if (state == ON && Input.mousePressed) {
					if(callFunc != null) {
					callFunc();
					}
				}
			}
			
			private function stateChanged():void {
				switch (state) {
					case ON:
						graphic = img = onImg;
						break;
						
					case OFF: 
						graphic = img = offImg;
						break;
				}
			}
		}
		
	}

