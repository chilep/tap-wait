package gameScenes
{
	import flash.geom.Point;
	import starling.display.Sprite;
	import scenes.Scene;
	import gameClasses.TapBaseButton;
	import starling.events.Event;
	import starling.events.EventDispatcher;
	
	/**
	 * ...
	 * @author _47_
	 */
	public class GameField extends Scene
	{
		private var _buttons:Vector.<TapBaseButton>;
		private var _counter:int = 0;
		
		public function GameField() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, initialize);
		}
		
		private function initialize(e:Event = null):void 
		{
			_buttons = new Vector.<TapBaseButton>;
			removeEventListener(Event.ADDED_TO_STAGE, initialize);
			var tapBaseButton:TapBaseButton = new TapBaseButton(Assets.getTexture("BtnSimpleUp"));
			tapBaseButton.pos = new Point(200, 100);
			_buttons.push(tapBaseButton);
			
			for each (var btn:TapBaseButton in _buttons) {
				addChild(btn);
			}
			addEventListener(gameClasses.GameEvents.TAP_EVENT, tapUpdate);
		}
		
		private function tapUpdate(e:Event):void 
		{
			_counter++;
			trace("I'm tapped!" + _counter);
		}
		
	}

}