package gameClasses
{
	import flash.net.SharedObject;
	import gameClasses.App
	/**
	 * ...
	 * @author _47_
	 */
	public class PlayerInfo 
	{
		private var _info:Object;
		
		public function PlayerInfo() 
		{
			
		}
		
		public function initInfoFromSharedObject()
		{
			_info = SharedObject.getLocal(App.APP_NAME).data;
		}
		
		public function setProperty(name:String, value:Object = null) : void
		{
			_info.name = value;
		}
		
		public function getProperty(name:String) : Object
		{
			if (_info.hasOwnProperty(name)){
				return _info.name;
			} else {
				trace("No such property " + name);
				return 0;
			}
		}
		
		public function deleteProperty(name:String) : void 
		{
			if (_info.hasOwnProperty(name)) {
				delete _info.name;
			}
		}
		
	}

}