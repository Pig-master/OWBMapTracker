extends HBoxContainer
@onready var color_rect: ColorRect = $ColorRect
@onready var hex_code: LineEdit = $HexCode

var map:CanvasLayer
var index:int

func _ready():
	map = get_tree().get_first_node_in_group("Map")
	index = get_parent().get_children().find(self)
	hex_code.text = map.to_save["green_shades"][index]
	update()

func update():
	color_rect.color = Color(hex_code.text)
	map.to_save["green_shades"][index] = hex_code.text
	map.colour_nations()

func _on_hex_code_text_changed(_new_text: String) -> void:
	update()

func on_load():
	hex_code.text = map.to_save["green_shades"][index]
	color_rect.color = Color(hex_code.text)
	
