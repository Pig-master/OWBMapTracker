extends PanelContainer

const ENTRY = preload("uid://di34rf4hh00im")

func generate():
	visible = true
	$Base/Main/Base/HBoxContainer/Button.disabled = false
	$Base/Main/Base/HBoxContainer/Button2.disabled = false
	for x in $Base/ScrollContainer/VBoxContainer.get_children():
		x.queue_free()
		await x.tree_exited
	var nation:String = $"..".selected_nation.name
	for x in $"..".nations[nation]:
		create_entry()
	for p in $Base/ScrollContainer/VBoxContainer.get_children():
		p.path.text = $"..".nations[nation][str(p.get_index()+1)][0]
		p.notes.text = $"..".nations[nation][str(p.get_index()+1)][1]
	if $Base/ScrollContainer/VBoxContainer.get_child_count() >= 1:
		size.y = 1
	$Base/Main/Base/HBoxContainer/Label2.text = str(len($"..".nations[nation]))
	$Base/Main/Nation.text = $"..".selected_nation.name

func create_entry():
	var entry = ENTRY.instantiate()
	$Base/ScrollContainer/VBoxContainer.add_child(entry)

func remove_entry():
	if len($"..".nations[$"..".selected_nation.name]) >= 1:
		$"..".nations[$"..".selected_nation.name].erase(str(len($"..".nations[$"..".selected_nation.name])))
		$Base/ScrollContainer/VBoxContainer.get_child($Base/ScrollContainer/VBoxContainer.get_child_count()-1).queue_free()

func update_visuals():
	$Base/Main/Base/HBoxContainer/Label2.text = str(len($"..".nations[$"..".selected_nation.name]))
	$"..".colour_nations()

func increase_log() -> void:
	create_entry()
	$"..".nations[$"..".selected_nation.name][str(len($"..".nations[$"..".selected_nation.name])+1)] = ["",""]
	update_visuals()

func decrease_log() -> void:
	remove_entry()
	update_visuals()
