require_relative '../../raylib'

MAX_COLUMNS = 20
# Initialization
#--------------------------------------------------------------------------------------
screen_width = 800
screen_height = 450

Raylib.init_window(screen_width, screen_height, "raylib [core] example - 3d camera first person")

# Define the camera to look into our 3d world (position, target, up vector)
camera = Raylib.new_camera()
camera[:position] = Raylib.new_vector3(4.0, 2.0, 4.0)
camera[:target] = Raylib.new_vector3(0.0, 1.8, 0.0)
camera[:up] = Raylib.new_vector3(0.0, 1.0, 0.0)
camera[:fovy] = 60.0
# camera[:type] = Raylib.CAMERA_PERSPECTIVE

# Generates some random columns
heights = Array.new(MAX_COLUMNS)
positions = Array.new(MAX_COLUMNS)
colors = Array.new(MAX_COLUMNS)

for i in 0...MAX_COLUMNS

    heights[i] = Raylib.get_random_value(1, 12).to_f
    positions[i] = Raylib.new_vector3(Raylib.get_random_value(-15, 15), heights[i]/2, Raylib.get_random_value(-15, 15))
    colors[i] = Raylib.new_color(Raylib.get_random_value(20, 255), Raylib.get_random_value(10, 55), 30, 255)
end

Raylib.set_camera_mode(camera, 3) # Set a first person camera mode

Raylib.set_target_fps(60) # Set our game to run at 60 frames-per-second
#--------------------------------------------------------------------------------------

# Main game loop
while not Raylib.window_should_close                # Detect window close button or ESC key

    # Raylib.update_
    #----------------------------------------------------------------------------------
    Raylib.update_camera(camera)                  # Update camera
    #----------------------------------------------------------------------------------

    # Draw
    #----------------------------------------------------------------------------------
    Raylib.begin_drawing()

        Raylib.clear_background(Raylib::RAYWHITE)

        Raylib.begin_mode_3d(camera)

            Raylib.draw_plane(Raylib.new_vector3(0.0, 0.0, 0.0), Raylib.new_vector2(32.0, 32.0), Raylib::LIGHTGRAY) # Draw ground
            Raylib.draw_cube(Raylib.new_vector3(-16.0, 2.5, 0.0), 1.0, 5.0, 32.0, Raylib::BLUE)     # Draw a blue wall
            Raylib.draw_cube(Raylib.new_vector3(16.0, 2.5, 0.0), 1.0, 5.0, 32.0, Raylib::LIME)      # Draw a green wall
            Raylib.draw_cube(Raylib.new_vector3(0.0, 2.5, 16.0), 32.0, 5.0, 1.0, Raylib::GOLD)      # Draw a yellow wall
        
            # Draw some cubes around
            for i in 0...MAX_COLUMNS
                Raylib.draw_cube(positions[i], 2.0, heights[i], 2.0, colors[i])
                Raylib.draw_cube_wires(positions[i], 2.0, heights[i], 2.0, Raylib::MAROON)
            end

        Raylib.end_mode_3d()
        
        Raylib.draw_rectangle(10, 10, 220, 70, Raylib.fade(Raylib::SKYBLUE, 0.5))
        Raylib.draw_rectangle_lines( 10, 10, 220, 70, Raylib::BLUE)

        Raylib.draw_text("First person camera default controls:", 20, 20, 10, Raylib::BLACK)
        Raylib.draw_text("- Move with keys: W, A, S, D", 40, 40, 10, Raylib::DARKGRAY)
        Raylib.draw_text("- Mouse move to look around", 40, 60, 10, Raylib::DARKGRAY)

        Raylib.draw_fps(720, 0)

    Raylib.end_drawing()
    #----------------------------------------------------------------------------------
end

# De-Initialization
#--------------------------------------------------------------------------------------   
Raylib.close_window()