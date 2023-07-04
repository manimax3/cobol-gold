       identification division.
       program-id. HelloWorld.
       data division.
       working-storage section.
       01 width binary-long value 512.
       01 height binary-long value 512.
       01 done binary-long value 0.
       procedure division.
           call "InitWindow" using by value width by value height
           by content z'hallo'.
           call "SetTargetFPS" using by content 10.
           perform until done = 1
               call "WindowShouldClose" giving done
               call "BeginDrawing"
               call "EndDrawing"
           end-perform
           .
