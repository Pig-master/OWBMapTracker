extends TextureButton

func _on_texture_button_pressed(source: BaseButton) -> void:
	$"../../..".selected_nation = source
	$"../../../Menu".generate()

func _ready() -> void:
	texture_click_mask = load("res://Images/BitMaps/"+self.name+".png")
