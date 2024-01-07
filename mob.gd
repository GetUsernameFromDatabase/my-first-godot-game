extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
    var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
    var random_index = randi() % mob_types.size()
    var random_mob_type = mob_types[random_index]
    $AnimatedSprite2D.play(random_mob_type)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass


func _on_visible_on_screen_notifier_2d_screen_exited():
    queue_free()
