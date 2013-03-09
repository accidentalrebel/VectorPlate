package ;
import jkEngine.JKTileMap;
import nme.display.DisplayObjectContainer;

/**
 * ...
 * @author Karlo
 */

class PlayArea extends JKTileMap
{

	public function new(_width: Int, _height: Int, TheLayer : DisplayObjectContainer) 
	{
		super(_width, _height, TheLayer);
	}
	
}