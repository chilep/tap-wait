package gameClasses
{
	import flash.geom.Point;
	import starling.display.Button;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.textures.Texture;
	
	
	/**
	 * ...
	 * @author _47_
	 */
	public class TapBaseButton extends Button 
	{
		
		private var _pos:Point;
		private var _triggered:Boolean;
		
		public function TapBaseButton(texture:Texture) 
		{
			super(texture);
			_pos = new Point(0, 0);
			_triggered = false;
			addEventListener(Event.TRIGGERED, triggered);
		}
		
		private function triggered(e:Event):void 
		{
			_triggered = true;
			dispatchEvent(new Event(gameClasses.GameEvents.TAP_EVENT, true));
		}
		
		private function update(e:Event):void 
		{
			
		}
		
		public function set pos(value:Point):void 
		{
			_pos = value;
			x = _pos.x;
			y = _pos.y;
		}
		
		public function get pos():Point 
		{
			return _pos;
		}
		
	}

}