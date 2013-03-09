package ;
import jkEngine.JKGame;
import jkEngine.JKLayer;
import jkEngine.JKSprite;
import jkEngine.JKText;
import nme.Lib;

/**
 * ...
 * @author Karlo
 */

class Game extends JKGame
{

	public function new() 
	{
		super();
		Lib.trace("Test");
		
		setupPlayArea();
	}
	
	private function setupPlayArea() 
	{		
		var fgLayer : JKLayer = new JKLayer(stage);	
		var playArea : PlayArea = new PlayArea(10, 10, Lib.stage);
		playArea.populateTileMap(FloorTile, [10, 10, 40, 40, "img/tile.png", Lib.stage]);		
	}
}