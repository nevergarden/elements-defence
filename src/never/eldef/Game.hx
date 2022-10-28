package never.eldef;

import never.eldef.Base.ElementType;

class Game extends hxd.App {
	var a : Base;
	var b : Base;
	var c : Base;
	var d : Base;
	var m : Base;
	override function init() {
		engine.backgroundColor = 0xffffffff;
		var x : h2d.Graphics = new h2d.Graphics(s2d);
		x.lineStyle(4, 0x000000);
		x.moveTo(0,0);
		x.lineTo(100, 100);

		a = new Base(30, ElementType.Wind, s2d);
		a.x = 100;
		a.y = 100;

		b = new Base(30, ElementType.Water, s2d);
		b.x = 350;
		b.y = 100;

		c = new Base(30, ElementType.Fire, s2d);
		c.x = 100;
		c.y = 650;

		d = new Base(30, ElementType.Earth, s2d);
		d.x = 350;
		d.y = 650;

		m = new Base(40, ElementType.Normal, s2d);
		m.x = 225;
		m.y = 400;
	}

	override function update(_) {
		a.update();
		b.update();
		c.update();
		d.update();
		m.update();
	}
}
