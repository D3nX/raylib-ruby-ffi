require_relative '../../raylib'


screen_width = 800
screen_height = 450

Raylib.init_window(screen_width, screen_height, "raylib [core] example - basic window")

Raylib.set_target_fps(60)
#--------------------------------------------------------------------------------------

# Main game loop
while not Raylib.window_should_close() # Detect window close button or ESC key

    # Update
    #----------------------------------------------------------------------------------
    # TODO: Update your variables here
    #----------------------------------------------------------------------------------

    # Draw
    #----------------------------------------------------------------------------------
    Raylib.begin_drawing()

    Raylib.clear_background(Raylib::RAYWHITE)

    Raylib.draw_text("Congrats! You created your first window!", 190, 200, 20, Raylib::LIGHTGRAY)

    Raylib.end_drawing()
    #----------------------------------------------------------------------------------
end

# De-Initialization
#--------------------------------------------------------------------------------------   
Raylib.close_window()# Close window and OpenGL context
#--------------------------------------------------------------------------------------