package ;
import jkEngine.JKGame;
import jkEngine.JKTile;
import nme.display.DisplayObjectContainer;

/**
 * ...
 * @author Karlo
 */

class ClickableTile extends JKTile
{	
	var isClicked : Bool = false;
	
	public function new( XCoord : Int = 0, YCoord : Int = 0, ?TileWidth : Float
		, ?TileHeight : Float, ?graphicFileLocation : String, ?theLayer : DisplayObjectContainer, TileValue : Int = 0 ) 
	{
		super(XCoord, YCoord, TileWidth, TileHeight, graphicFileLocation, theLayer, TileValue);
	}
	
	override private function update():Dynamic 
	{		
		super.update();
		
		if ( JKGame.mouse.justPressed() )			// If the mouse is pressed
		{
			checkIfClicked();
		}
	}
	
	override private function lateUpdate():Dynamic 
	{		
		isClicked = false;
		super.lateUpdate();
	}
	
	function checkIfClicked()
	{		
		if ( mouseX > 0 && mouseX < width					// We use the mouseX and mouseY positions to determine
			&& mouseY > 0 && mouseY < height )				// If this button is clicked
		{
			isClicked = true;			
		}		
	}
}