extends StaticBody3D
class_name NpcSurvivor3D

# Placeholder humanoid NPC. Capsule body + sphere head, role-colored.
# Lives long enough to give the arena a sense of population and to test the
# NPC survivor encounter verbs from ImmersiveSimDesign.get_npc_survivor_encounters().

var encounter_id: String = "wounded_courier"
var role_label: String = "Courier"
var body_color: Color = Color(0.32, 0.36, 0.4)
var helped: bool = false
var killed: bool = false

func configure(new_encounter_id: String, new_role_label: String, new_color: Color) -> void:
	encounter_id = new_encounter_id
	role_label = new_role_label
	body_color = new_color
	name = "NpcSurvivor_%s" % encounter_id

func _ready() -> void:
	add_to_group("npc_survivors")
	# Layer 1 = world geometry, so both the player (mask 1|2) and enemies
	# (mask 1) treat the NPC as solid. No mask needed; the NPC doesn't move.
	collision_layer = 1
	collision_mask = 0
	_build_visuals()
	_build_collision()
	_build_interaction_label()

func _build_visuals() -> void:
	var body := MeshInstance3D.new()
	body.name = "NpcBody"
	var body_mesh := CapsuleMesh.new()
	body_mesh.radius = 0.34
	body_mesh.height = 1.5
	body.mesh = body_mesh
	body.position.y = 0.88
	body.material_override = _make_material(body_color, 0.0)
	add_child(body)
	var head := MeshInstance3D.new()
	head.name = "NpcHead"
	var head_mesh := SphereMesh.new()
	head_mesh.radius = 0.22
	head_mesh.height = 0.44
	head.mesh = head_mesh
	head.position.y = 1.74
	head.material_override = _make_material(Color(0.74, 0.66, 0.6), 0.0)
	add_child(head)
	var role_marker := MeshInstance3D.new()
	role_marker.name = "NpcRoleMarker"
	var marker_mesh := BoxMesh.new()
	marker_mesh.size = Vector3(0.28, 0.06, 0.04)
	role_marker.mesh = marker_mesh
	role_marker.position = Vector3(0.0, 1.42, 0.22)
	role_marker.material_override = _make_material(body_color, 0.4)
	add_child(role_marker)

func _build_collision() -> void:
	var collision := CollisionShape3D.new()
	collision.name = "NpcCollision"
	var shape := CapsuleShape3D.new()
	shape.radius = 0.36
	shape.height = 1.5
	collision.shape = shape
	collision.position.y = 0.86
	add_child(collision)

func _build_interaction_label() -> void:
	var label := Label3D.new()
	label.name = "NpcLabel"
	label.text = role_label
	label.position = Vector3(0.0, 2.05, 0.0)
	label.billboard = BaseMaterial3D.BILLBOARD_ENABLED
	label.no_depth_test = false
	label.modulate = Color(0.86, 0.94, 0.9)
	label.pixel_size = 0.004
	add_child(label)

func use(actor: Node) -> void:
	if killed or helped:
		return
	helped = true
	if actor and actor.has_method("show_diegetic_notice"):
		actor.show_diegetic_notice("%s acknowledges you." % role_label, 2.0)
	GameEvents.request_sound("interact", global_position, 0.6)

func _make_material(color: Color, emission_energy: float) -> StandardMaterial3D:
	return EffectMaterialCache.get_material(color, emission_energy)
