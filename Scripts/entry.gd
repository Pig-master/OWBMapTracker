extends HBoxContainer

@onready var path: LineEdit = $Path
@onready var notes: LineEdit = $Notes

func _on_path_text_changed(new_text: String) -> void:
	for x in get_parent().get_children():
		if x == self:
			get_tree().get_first_node_in_group("Map").nations[get_tree().get_first_node_in_group("Map").selected_nation.name][str(x.get_index())][0] = new_text

func _on_notes_text_changed(new_text: String) -> void:
	for x in get_parent().get_children():
		if x == self:
			get_tree().get_first_node_in_group("Map").nations[get_tree().get_first_node_in_group("Map").selected_nation.name][str(x.get_index())][1] = new_text
