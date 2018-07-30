require_relative '../../raylib'

# Initialization
#--------------------------------------------------------------------------------------
screen_width = 800
screen_height = 450

Raylib.init_window(screen_width, screen_height, "raylib [core] example - 3d camera free")

# Define the camera to look into our 3d world
camera = Raylib.new_camera()
camera.position = Raylib.new_vector3(10.0, 10.0, 10.0) # Camera position
camera.target = Raylib.new_vector3(0.0, 0.0, 0.0)      # Camera looking at point
camera.up = Raylib.new_vector3(0.0, 1.0, 0.0)          # Camera up vector (rotation towards target)
camera.fovy = 45.0                                # Camera field-of-view Y
camera.type = Raylib::CAMERA_PERSPECTIVE                   # Camera mode type

cube_position = Raylib.new_vector3(0.0, 0.0, 0.0)

Raylib.set_camera_mode(camera, Raylib::CAMERA_FREE) # Set a free camera mode

Raylib.set_target_fps(60)                   # Set our game to run at 60 frames-per-second
#--------------------------------------------------------------------------------------

# Main game loop
while not Raylib.window_should_close        # Detect window close button or ESC key
    # Update
    #----------------------------------------------------------------------------------
    Raylib.update_camera(camera)          # Update camera
    
    camera.target = Raylib.new_vector3(0.0, 0.0, 0.0) if Raylib.is_key_down(Raylib::KEY_Z)
    #----------------------------------------------------------------------------------

    # Draw
    #----------------------------------------------------------------------------------
    Raylib.begin_drawing()

    Raylib.clear_background(Raylib::RAYWHITE)

    Raylib.begin_mode_3d(camera)

    Raylib.draw_cube(cube_position, 2.0, 2.0, 2.0, Raylib::RED)
    Raylib.draw_cube_wires(cube_position, 2.0, 2.0, 2.0, Raylib::MAROON)

    Raylib.draw_grid(10, 1.0)

    Raylib.end_mode_3d()
        
    Raylib.draw_rectangle( 10, 10, 320, 133, Raylib::fade(Raylib::SKYBLUE, 0.5))
    Raylib.draw_rectangle_lines( 10, 10, 320, 133, Raylib::BLUE)
        
    Raylib.draw_text("Free camera default controls:", 20, 20, 10, Raylib::BLACK)
    Raylib.draw_text("- Mouse Wheel to Zoom in-out", 40, 40, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- Mouse Wheel Pressed to Pan", 40, 60, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- Alt + Mouse Wheel Pressed to Rotate", 40, 80, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- Alt + Ctrl + Mouse Wheel Pressed for Smooth Zoom", 40, 100, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- Z to zoom to (0, 0, 0)", 40, 120, 10, Raylib::DARKGRAY)

    Raylib.end_drawing()
    #----------------------------------------------------------------------------------
end

# De-Initialization
#--------------------------------------------------------------------------------------
Raylib.close_window()        # Close window and OpenGL context
#--------------------------------------------------------------------------------------