package funkin.ui.debug.char.components.common;

class NumberField {
    public var pos:Float;
    public function new(v:Float = 0) this.pos = v;
}

class BoolField {
    public var selected:Bool;
    public function new(v:Bool = false) this.selected = v;
}

class TextField {
    public var text:String;
    public function new(v:String = "") this.text = v;
}

class Dropdown {
    public var selectedIndex:Int = -1;
    public var dataSource:Array<Dynamic> = [];
    public var safeSelectedItem(get, never):Dynamic;
    public function new() {}
    public function clear():Void dataSource = [];
    public function add(item:Dynamic):Void dataSource.push(item);
    function get_safeSelectedItem():Dynamic {
        if (selectedIndex >= 0 && selectedIndex < dataSource.length) return dataSource[selectedIndex];
        return { text: "" };
    }
    public var size(get, never):Int;
    function get_size():Int return dataSource.length;
}
