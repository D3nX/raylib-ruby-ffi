require_relative '../../raylib'

# Initialization
#--------------------------------------------------------------------------------------
screen_width = 800
screen_height = 450

Raylib.init_window(screen_width, screen_height, "raylib [models] example - obj model loading")

# Define the camera to look into our 3d world
camera = Raylib.new_camera()
camera.position = Raylib.new_vector3(8.0, 8.0, 8.0)    # Camera position
camera.target = Raylib.new_vector3(0.0, 2.5, 0.0)      # Camera looking at point
camera.up = Raylib.new_vector3(0.0, 1.0, 0.0)          # Camera up vector (rotation towards target)
camera.fovy = 45.0                                # Camera field-of-view Y
camera.type = Raylib::CAMERA_PERSPECTIVE                   # Camera mode type

model = Raylib.load_model("resources/models/castle.obj")                 # Load OBJ model
texture = Raylib.load_texture("resources/models/castle_diffuse.png") # Load model texture
model.material.maps[Raylib::MAP_DIFFUSE].texture = texture                     # Set map diffuse texture
position = Raylib.new_vector3(0.0, 0.0, 0.0)                                # Set model position

Raylib.set_target_fps(60)   # Set our game to run at 60 frames-per-second
#--------------------------------------------------------------------------------------

# Main game loop
while not Raylib.window_should_close()    # Detect window close button or ESC key
    # Update
    #----------------------------------------------------------------------------------
    #...
    #----------------------------------------------------------------------------------

    # Draw
    #----------------------------------------------------------------------------------
    Raylib.begin_drawing()

    Raylib.clear_background(Raylib::RAYWHITE)

    Raylib.begin_mode_3d(camera)

    Raylib.draw_model(model, position, 0.2, Raylib::WHITE)   # Draw 3d model with texture

    Raylib.draw_grid(10, 1.0)         # Draw a grid

    Raylib.draw_gizmo(position)        # Draw gizmo

    Raylib.end_mode_3d()
        
    Raylib.draw_text("(c) Castle 3D model by Alberto Cano", screen_width - 200, screen_height - 20, 10, Raylib::GRAY)

    Raylib.draw_fps(10, 10)

    Raylib.end_drawing()
    #----------------------------------------------------------------------------------
end

# De-Initialization
#--------------------------------------------------------------------------------------
Raylib.unload_texture(texture)     # Unload texture
Raylib.unload_model(model)         # Unload model

Raylib.close_window()              # Close window and OpenGL context
#--------------------------------------------------------------------------------------


