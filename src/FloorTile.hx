package ;
import jkEngine.JKGame;
import jkEngine.JKTile;
import nme.display.DisplayObjectContainer;
import TrapHandler;

/**
 * ...
 * @author Karlo
 */

class FloorTile extends ClickableTile
{	
	var tileOnTop : TrapTile = null;
	
	public function new( XCoord : Int = 0, YCoord : Int = 0, ?TileWidth : Float
		, ?TileHeight : Float, ?graphicFileLocation : String, ?theLayer : DisplayObjectContainer, TileValue : Int = 0 ) 
	{
		super(XCoord, YCoord, TileWidth, TileHeight, graphicFileLocation, theLayer, TileValue);
	}
	
	override private function update():Dynamic 
	{
		super.update();
		
		if ( isClicked && tileOnTop == null)
		{			
			var theTrapTile : TrapTile;
			if ( Registry.game.trapHandler.trapToPlace == TrapDirection.Up )
				theTrapTile = new TrapTile(xCoord, yCoord, 40, 40, "img/up.png", layer, 0);
			else if ( Registry.game.trapHandler.trapToPlace == TrapDirection.Down )
				theTrapTile = new TrapTile(xCoord, yCoord, 40, 40, "img/down.png", layer, 0);
			else if ( Registry.game.trapHandler.trapToPlace == TrapDirection.Left )
				theTrapTile = new TrapTile(xCoord, yCoord, 40, 40, "img/left.png", layer, 0);
			else
				theTrapTile = new TrapTile(xCoord, yCoord, 40, 40, "img/right.png", layer, 0);
				
			tileOnTop = theTrapTile;
		}
	}
}