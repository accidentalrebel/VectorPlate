package ;
import jkEngine.JKTile;
import nme.display.DisplayObjectContainer;

/**
 * ...
 * @author Karlo
 */

class Player extends JKTile
{
	public function new( XCoord : Int = 0, YCoord : Int = 0, ?TileWidth : Float
		, ?TileHeight : Float, ?theLayer : DisplayObjectContainer, TileValue : Int = 0 ) 
	{	
		super(XCoord, YCoord, TileWidth, TileHeight, "img/red.png", theLayer, TileValue);
	}
	
}