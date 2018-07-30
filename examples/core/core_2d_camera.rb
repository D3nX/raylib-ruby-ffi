require_relative '../../raylib'

# Initialization
#--------------------------------------------------------------------------------------
MAX_BUILDINGS = 100

screen_width = 800
screen_height = 450

Raylib::init_window(screen_width, screen_height, "raylib [core] example - 2d camera")

player = Raylib::new_rectangle(400, 280, 40, 40)
buildings = []
build_colors = []
# Rectangle player =  400, 280, 40, 40 end
# Rectangle buildings[MAX_BUILDINGS]
# Color build_colors[MAX_BUILDINGS]

spacing = 0

for i in 0...MAX_BUILDINGS

    buildings << Raylib.new_rectangle(0, 0, 0, 0)

    buildings[i].width = Raylib.get_random_value(50, 200)
    buildings[i].height = Raylib.get_random_value(100, 800)
    buildings[i].y = screen_height - 130 - buildings[i].height
    buildings[i].x = -6000 + spacing

    spacing += buildings[i].width

    build_colors << Raylib.new_color(0, 0, 0, 0)

    build_colors[i] = Raylib.new_color(Raylib.get_random_value(200, 240),
        Raylib.get_random_value(200, 240),
        Raylib.get_random_value(200, 250),
        255)

end

camera = Raylib::new_camera2d()

camera.target = Raylib.new_vector2(player.x + 20, player.y + 20)
camera.offset = Raylib.new_vector2(0, 0)
camera.rotation = 0.0
camera.zoom = 1.0

Raylib.set_target_fps(60)
#--------------------------------------------------------------------------------------

# Main game loop
while not Raylib.window_should_close() # Detect window close button or ESC Raylib::KEY

    # Update
    #----------------------------------------------------------------------------------
    if (Raylib.is_key_down(Raylib::KEY_RIGHT))
        player.x += 2  # Player movement
        camera.offset.x -= 2   # Camera displacement with player movement
    elsif (Raylib.is_key_down(Raylib::KEY_LEFT))
        player.x -= 2  # Player movement
        camera.offset.x += 2   # Camera displacement with player movement
    end

    # Camera target follows player
    camera.target = Raylib.new_vector2(player.x + 20, player.y + 20)

    # Camera rotation controls
    if Raylib.is_key_down(Raylib::KEY_A)
        camera.rotation -= 1
    elsif Raylib.is_key_down(Raylib::KEY_S)
        camera.rotation += 1
    end

    # Limit camera rotation to 80 degrees (-40 to 40)
    if (camera.rotation > 40)
        camera.rotation = 40
    elsif (camera.rotation < -40)
        camera.rotation = -40
    end

    # Camera zoom controls
    camera.zoom += (Raylib.get_mouse_wheel_move().to_f*0.05)

    if (camera.zoom > 3.0)
        camera.zoom = 3.0
    elsif (camera.zoom < 0.1)
        camera.zoom = 0.1
    end

    # Camera reset (zoom and rotation)
    if (Raylib.is_key_pressed(Raylib::KEY_R)) 
        camera.zoom = 1.0
        camera.rotation = 0.0
    end
    #----------------------------------------------------------------------------------

    # Draw
    #----------------------------------------------------------------------------------
    Raylib.clear_background(Raylib::RAYWHITE)
    Raylib.begin_drawing()

    Raylib.begin_mode_2d(camera)

    Raylib.draw_rectangle(-6000, 320, 13000, 8000, Raylib::DARKGRAY)

    for i in 0...MAX_BUILDINGS
        Raylib.draw_rectangle_rec(buildings[i], build_colors[i])
    end

    Raylib.draw_rectangle_rec(player, Raylib::RED)

    Raylib.draw_rectangle(camera.target.x, -500, 1, screen_height*4, Raylib::GREEN)
    Raylib.draw_rectangle(-500, camera.target.y, screen_width*4, 1, Raylib::GREEN)

    Raylib.end_mode_2d()

    Raylib.draw_text("SCREEN AREA", 640, 10, 20, Raylib::RED)

    Raylib.draw_rectangle(0, 0, screen_width, 5, Raylib::RED)
    Raylib.draw_rectangle(0, 5, 5, screen_height - 10, Raylib::RED)
    Raylib.draw_rectangle(screen_width - 5, 5, 5, screen_height - 10, Raylib::RED)
    Raylib.draw_rectangle(0, screen_height - 5, screen_width, 5, Raylib::RED)

    Raylib.draw_rectangle( 10, 10, 250, 113, Raylib.fade(Raylib::SKYBLUE, 0.5))
    Raylib.draw_rectangle_lines( 10, 10, 250, 113, Raylib::BLUE)

    Raylib.draw_text("Free 2d camera controls:", 20, 20, 10, Raylib::BLACK)
    Raylib.draw_text("- Right/Left to move Offset", 40, 40, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- Mouse Wheel to Zoom in-out", 40, 60, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- A / S to Rotate", 40, 80, 10, Raylib::DARKGRAY)
    Raylib.draw_text("- R to reset Zoom and Rotation", 40, 100, 10, Raylib::DARKGRAY)

    Raylib.end_drawing()
    #----------------------------------------------------------------------------------
end

# De-Initialization
#--------------------------------------------------------------------------------------   
Raylib.close_window()# Close window and OpenGL context
#--------------------------------------------------------------------------------------