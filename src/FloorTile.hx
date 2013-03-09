package ;
import jkEngine.JKGame;
import jkEngine.JKTile;
import nme.display.DisplayObjectContainer;

/**
 * ...
 * @author Karlo
 */

class FloorTile extends ClickableTile
{	
	var isFilled :Bool= false;
	
	public function new( XCoord : Int = 0, YCoord : Int = 0, ?TileWidth : Float
		, ?TileHeight : Float, ?graphicFileLocation : String, ?theLayer : DisplayObjectContainer, TileValue : Int = 0 ) 
	{
		super(XCoord, YCoord, TileWidth, TileHeight, graphicFileLocation, theLayer, TileValue);
	}
	
	override private function update():Dynamic 
	{
		super.update();
		
		if ( isClicked && !isFilled)
		{
			trace("spawning new traptile");
			isFilled = true;
			new TrapTile(xCoord, yCoord, 40, 40, "img/marker.png", layer, 0);
		}
	}
}