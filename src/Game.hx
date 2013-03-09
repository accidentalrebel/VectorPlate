package ;
import jkEngine.JKGame;
import jkEngine.JKLayer;
import jkEngine.JKSprite;
import jkEngine.JKText;
import nme.events.Event;
import nme.Lib;

/**
 * ...
 * @author Karlo
 */

class Game extends JKGame
{	
	public var trapHandler:TrapHandler;
	
	public function new() 
	{
		super();
		
		setupPlayArea();
		setupInputHandler();
		setupTrapHandler();
	}
	
	private function setupTrapHandler() 
	{
		trapHandler = new TrapHandler();
	}
	
	private function setupInputHandler() 
	{
		var inputHandler : InputHandler = new InputHandler();
	}
	
	private function setupPlayArea() 
	{		
		var bgLayer : JKLayer = new JKLayer(stage);
		var playAreaLayer : JKLayer = new JKLayer(bgLayer);
		
		var playArea : PlayArea = new PlayArea(10, 10, playAreaLayer);
		playArea.populateTileMap(FloorTile, [10, 10, 40, 40, "img/tile.png", playAreaLayer]);
		
		playAreaLayer.x = (Lib.stage.width / 2) - ((playArea.width * 40) /2);
		playAreaLayer.y = 50;
	}
}