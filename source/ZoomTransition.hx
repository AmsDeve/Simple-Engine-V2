import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.*;

class ZoomTransition extends MusicBeatState
{
    public static var bg:FlxSprite;

  override function create()
        {
        }
    
        override function update(elapsed:Float) {
            
        }

   public static function zoomTransInitial()
        {
        bg.angle = 179;
        FlxG.camera.zoom = 3;
		FlxTween.tween(FlxG.camera, {zoom: 1}, 1.1, {ease: FlxEase.expoInOut});
		FlxTween.tween(bg, {angle: 0}, 1, {ease: FlxEase.quartInOut});
        }

        public static function zoomTransStarter()
            {
                FlxTween.tween(FlxG.camera, {zoom: 5}, 0.8, {ease: FlxEase.expoIn});
						FlxTween.tween(bg, {angle: 45}, 0.8, {ease: FlxEase.expoIn});
            }
}