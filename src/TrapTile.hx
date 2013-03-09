package ;
import jkEngine.JKTile;
import nme.display.DisplayObjectContainer;

/**
 * ...
 * @author Karlo
 */

class TrapTile extends ClickableTile
{
	public function new( XCoord : Int = 0, YCoord : Int = 0, ?TileWidth : Float
		, ?TileHeight : Float, ?graphicFileLocation : String, ?theLayer : DisplayObjectContainer, TileValue : Int = 0 ) 
	{
		super(XCoord, YCoord, TileWidth, TileHeight, graphicFileLocation, theLayer, TileValue);
	}
	
}