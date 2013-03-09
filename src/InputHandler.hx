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
		else if ( JKGame.keyboard.checkIfKeyPressed(Keyboard.S))
		{
			Registry.game.trapHandler.trapToPlace = TrapDirection.Down;
		}
		else if ( JKGame.keyboard.checkIfKeyPressed(Keyboard.A))
		{
			Registry.game.trapHandler.trapToPlace = TrapDirection.Left;
		}
		else if ( JKGame.keyboard.checkIfKeyPressed(Keyboard.D))
		{
			Registry.game.trapHandler.trapToPlace = TrapDirection.Right;
		}		
	}
	
}