package ;
import jkEngine.input.JKKeyboard;
import jkEngine.JKGame;
import jkEngine.JKObject;
import jkEngine.JKUtils;
import nme.ui.Keyboard;
import TrapHandler;

/**
 * ...
 * @author Karlo
 */

class InputHandler extends JKObject
{

	public function new() 
	{
		super();
	}
	
	override private function update():Dynamic 
	{
		super.update();
		
		if ( JKGame.keyboard.checkIfKeyPressed(Keyboard.W))
		{
			Registry.game.trapHandler.trapToPlace = TrapDirection.Up;
		}
	}
	
}