require_relative '../../raylib'

# Initialization
#--------------------------------------------------------------------------------------
screen_width = 800
screen_height = 450

Raylib.init_window(screen_width, screen_height, "raylib [core] example - 3d picking")

# Define the camera to look into our 3d world
camera = Raylib.new_camera()
camera.position = Raylib.new_vector3(10.0, 10.0, 10.0) # Camera position
camera.target = Raylib.new_vector3(0.0, 0.0, 0.0)  # Camera looking at point
camera.up = Raylib.new_vector3(0.0, 1.0, 0.0)  # Camera up vector (rotation towards target)
camera.fovy = 45.0 # Camera field-of-view Y
camera.type = Raylib::CAMERA_PERSPECTIVE   # Camera mode type

cube_position = Raylib.new_vector3(0.0, 1.0, 0.0)
cube_size = Raylib.new_vector3(2.0, 2.0, 2.0)

ray = Raylib.new_ray() # Picking line ray

collision = false

Raylib.set_camera_mode(camera, Raylib::CAMERA_FREE) # Set a free camera mode

Raylib.set_target_fps(60)   # Set our game to run at 60 frames-per-second
#--------------------------------------------------------------------------------------

# Main game loop
while not Raylib.window_should_close() # Detect window close button or ESC key
    # Update
    #----------------------------------------------------------------------------------
    Raylib.update_camera(camera)  # Update camera

    if Raylib.is_mouse_button_pressed(Raylib::MOUSE_LEFT_BUTTON)
        ray = Raylib.get_mouse_ray(Raylib.get_mouse_position(), camera)

        # Check collision between ray and box
        collision = Raylib.check_collision_ray_box(ray,
        Raylib.new_bounding_box(Raylib.new_vector3(cube_position.x - cube_size.x/2, cube_position.y - cube_size.y/2, cube_position.z - cube_size.z/2),
        Raylib.new_vector3(cube_position.x + cube_size.x/2, cube_position.y + cube_size.y/2, cube_position.z + cube_size.z/2)))
    end
    #----------------------------------------------------------------------------------

    # Draw
    #----------------------------------------------------------------------------------
    Raylib.begin_drawing()

    Raylib.clear_background(Raylib::RAYWHITE)

    Raylib.begin_mode_3d(camera)

    if (collision)
        Raylib.draw_cube(cube_position, cube_size.x, cube_size.y, cube_size.z, Raylib::RED)
        Raylib.draw_cube_wires(cube_position, cube_size.x, cube_size.y, cube_size.z, Raylib::MAROON)

        Raylib.draw_cube_wires(cube_position, cube_size.x + 0.2, cube_size.y + 0.2, cube_size.z + 0.2, Raylib::GREEN)
    else
        Raylib.draw_cube(cube_position, cube_size.x, cube_size.y, cube_size.z, Raylib::GRAY)
        Raylib.draw_cube_wires(cube_position, cube_size.x, cube_size.y, cube_size.z, Raylib::DARKGRAY)
    end

    Raylib.draw_ray(ray, Raylib::MAROON)
    Raylib.draw_grid(10, 1.0)

    Raylib.end_mode_3d()

    Raylib.draw_text("Try selecting the box with mouse!", 240, 10, 20, Raylib::DARKGRAY)

    if collision
        Raylib.draw_text("BOX SELECTED", (screen_width - Raylib.measure_text("BOX SELECTED", 30)) / 2, screen_height * 0.1, 30, Raylib::GREEN)
    end

    Raylib.draw_fps(10, 10)

    Raylib.end_drawing()
    #----------------------------------------------------------------------------------
end

# De-Initialization
#--------------------------------------------------------------------------------------
Raylib.close_window()# Close window and OpenGL context
#--------------------------------------------------------------------------------------
