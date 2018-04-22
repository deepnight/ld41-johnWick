import mt.heaps.slib.*;
import mt.deepnight.Sfx;

class Assets {
	//public static var SBANK = Sfx.importDirectory("sfx");
	public static var gameElements : SpriteLib;
	public static var font : h2d.Font;
	public static var music : Sfx;

	public static function init() {
		Sfx.setGroupVolume(0, 1);
		Sfx.setGroupVolume(1, 0.25);
		#if debug
		Sfx.toggleMuteGroup(1);
		#end

		gameElements = mt.heaps.slib.assets.Atlas.load("gameElements.atlas");
		gameElements.defineAnim("dummyAimShoot","0(5)");
		gameElements.defineAnim("dummyBlindShoot","0(5)");
		gameElements.defineAnim("dummyHit","0(8)");
		gameElements.defineAnim("dummyDeathFly","0(30), 1(9999)");

		font = hxd.Res.minecraftiaOutline.toFont();
		//tiles = mt.heaps.slib.assets.Atlas.load("tiles.atlas");
	}
}