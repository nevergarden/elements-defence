package never.eldef;

import h2d.Graphics;
import h2d.Object;

enum ElementType {
	Earth;
	Fire;
	Water;
	Wind;
	Normal;
}

class Base extends Object {
	private var baseSize : Int = 0;
	private var maxBaseSize : Float = Math.POSITIVE_INFINITY;
	public var size : Float = 0;
	private var text : h2d.Text;
	public function new(baseSize, element:ElementType, ?parent:Object) {
		super(parent);
		this.baseSize = baseSize;
		initBase(baseSize, element);
	}

	public function initBase(baseSize:Int, element:ElementType) {
		var g : Graphics = new Graphics(this);
		var c : Int = 0;
		switch element {
			case ElementType.Earth: c = 0x795125;
			case ElementType.Fire: c = 0x76223a;
			case ElementType.Water: c = 0x267b85;
			case ElementType.Wind: c = 0x898989;
			case ElementType.Normal: c = 0xffffff;
		}
		g.beginFill(c, 1);
		g.drawCircle(0, 0, baseSize);
		g.endFill();

		text = new h2d.Text(hxd.res.DefaultFont.get(), this);
		text.color = new h3d.Vector(0,0,0,1);
    text.text = Std.string(size);
	}

	public function update() : Void {
		if(text != null) {
			size += (baseSize * hxd.Timer.elapsedTime) / 40;
			size = hxd.Math.clamp(size, 0, maxBaseSize);
			trace(size);
			text.text = Std.string(Math.floor(size));
		}
	}
}
