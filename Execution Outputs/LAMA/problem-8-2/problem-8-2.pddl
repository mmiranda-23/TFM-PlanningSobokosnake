(define (problem sobokosnake-8-2)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos0-3 - location
    pos0-4 - location
    pos0-5 - location
    pos0-7 - location
    pos0-8 - location
    pos0-9 - location
    pos0-10 - location
    pos1-0 - location
    pos1-1 - location
    pos1-7 - location
    pos1-8 - location
    pos1-9 - location
    pos1-10 - location
    pos2-1 - location
    pos2-3 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
    pos2-7 - location
    pos2-8 - location
    pos2-9 - location
    pos3-1 - location
    pos3-3 - location
    pos3-4 - location
    pos3-5 - location
    pos3-6 - location
    pos3-7 - location
    pos3-8 - location
    pos3-9 - location
    pos3-10 - location
    pos4-1 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-6 - location
    pos4-7 - location
    pos4-8 - location
    pos4-9 - location
    pos4-10 - location
    pos5-1 - location
    pos5-7 - location
    pos5-8 - location
    pos5-9 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
    pos6-4 - location
    pos6-5 - location
    pos6-6 - location
    pos6-7 - location
    pos6-8 - location
    pos6-9 - location
    pos7-1 - location
    pos7-2 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-0 pos0-1 dir-right)
    (MOVE-DIR pos0-0 pos1-0 dir-down)
    (MOVE-DIR pos0-1 pos0-0 dir-left)
    (MOVE-DIR pos0-1 pos0-2 dir-right)
    (MOVE-DIR pos0-1 pos1-1 dir-down)
    (MOVE-DIR pos0-2 pos0-3 dir-right)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos0-4 pos0-5 dir-right)
    (MOVE-DIR pos0-5 pos0-4 dir-left)
    (MOVE-DIR pos0-7 pos0-8 dir-right)
    (MOVE-DIR pos0-7 pos1-7 dir-down)
    (MOVE-DIR pos0-8 pos0-7 dir-left)
    (MOVE-DIR pos0-8 pos0-9 dir-right)
    (MOVE-DIR pos0-8 pos1-8 dir-down)
    (MOVE-DIR pos0-9 pos0-8 dir-left)
    (MOVE-DIR pos0-9 pos0-10 dir-right)
    (MOVE-DIR pos0-9 pos1-9 dir-down)
    (MOVE-DIR pos0-10 pos0-9 dir-left)
    (MOVE-DIR pos0-10 pos1-10 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-7 pos1-8 dir-right)
    (MOVE-DIR pos1-7 pos2-7 dir-down)
    (MOVE-DIR pos1-7 pos0-7 dir-up)
    (MOVE-DIR pos1-8 pos1-7 dir-left)
    (MOVE-DIR pos1-8 pos1-9 dir-right)
    (MOVE-DIR pos1-8 pos2-8 dir-down)
    (MOVE-DIR pos1-8 pos0-8 dir-up)
    (MOVE-DIR pos1-9 pos1-8 dir-left)
    (MOVE-DIR pos1-9 pos1-10 dir-right)
    (MOVE-DIR pos1-9 pos2-9 dir-down)
    (MOVE-DIR pos1-9 pos0-9 dir-up)
    (MOVE-DIR pos1-10 pos1-9 dir-left)
    (MOVE-DIR pos1-10 pos0-10 dir-up)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-5 pos3-5 dir-down)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos2-7 dir-right)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-7 pos2-6 dir-left)
    (MOVE-DIR pos2-7 pos2-8 dir-right)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-7 pos1-7 dir-up)
    (MOVE-DIR pos2-8 pos2-7 dir-left)
    (MOVE-DIR pos2-8 pos2-9 dir-right)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos2-8 pos1-8 dir-up)
    (MOVE-DIR pos2-9 pos2-8 dir-left)
    (MOVE-DIR pos2-9 pos3-9 dir-down)
    (MOVE-DIR pos2-9 pos1-9 dir-up)
    (MOVE-DIR pos3-1 pos4-1 dir-down)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos3-5 dir-right)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-5 pos3-4 dir-left)
    (MOVE-DIR pos3-5 pos3-6 dir-right)
    (MOVE-DIR pos3-5 pos4-5 dir-down)
    (MOVE-DIR pos3-5 pos2-5 dir-up)
    (MOVE-DIR pos3-6 pos3-5 dir-left)
    (MOVE-DIR pos3-6 pos3-7 dir-right)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos3-7 pos3-6 dir-left)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-7 pos4-7 dir-down)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos4-8 dir-down)
    (MOVE-DIR pos3-8 pos2-8 dir-up)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-1 pos3-1 dir-up)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos4-6 dir-right)
    (MOVE-DIR pos4-5 pos3-5 dir-up)
    (MOVE-DIR pos4-6 pos4-5 dir-left)
    (MOVE-DIR pos4-6 pos4-7 dir-right)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos4-7 pos4-6 dir-left)
    (MOVE-DIR pos4-7 pos4-8 dir-right)
    (MOVE-DIR pos4-7 pos5-7 dir-down)
    (MOVE-DIR pos4-7 pos3-7 dir-up)
    (MOVE-DIR pos4-8 pos4-7 dir-left)
    (MOVE-DIR pos4-8 pos5-8 dir-down)
    (MOVE-DIR pos4-8 pos3-8 dir-up)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos5-7 pos5-8 dir-right)
    (MOVE-DIR pos5-7 pos6-7 dir-down)
    (MOVE-DIR pos5-7 pos4-7 dir-up)
    (MOVE-DIR pos5-8 pos5-7 dir-left)
    (MOVE-DIR pos5-8 pos5-9 dir-right)
    (MOVE-DIR pos5-8 pos6-8 dir-down)
    (MOVE-DIR pos5-8 pos4-8 dir-up)
    (MOVE-DIR pos5-9 pos5-8 dir-left)
    (MOVE-DIR pos5-9 pos6-9 dir-down)
    (MOVE-DIR pos5-9 pos4-9 dir-up)
    (MOVE-DIR pos6-1 pos6-2 dir-right)
    (MOVE-DIR pos6-1 pos7-1 dir-down)
    (MOVE-DIR pos6-1 pos5-1 dir-up)
    (MOVE-DIR pos6-2 pos6-1 dir-left)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-2 pos7-2 dir-down)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos6-4 dir-right)
    (MOVE-DIR pos6-4 pos6-3 dir-left)
    (MOVE-DIR pos6-4 pos6-5 dir-right)
    (MOVE-DIR pos6-5 pos6-4 dir-left)
    (MOVE-DIR pos6-5 pos6-6 dir-right)
    (MOVE-DIR pos6-6 pos6-5 dir-left)
    (MOVE-DIR pos6-6 pos6-7 dir-right)
    (MOVE-DIR pos6-7 pos6-6 dir-left)
    (MOVE-DIR pos6-7 pos6-8 dir-right)
    (MOVE-DIR pos6-7 pos5-7 dir-up)
    (MOVE-DIR pos6-8 pos6-7 dir-left)
    (MOVE-DIR pos6-8 pos6-9 dir-right)
    (MOVE-DIR pos6-8 pos5-8 dir-up)
    (MOVE-DIR pos6-9 pos6-8 dir-left)
    (MOVE-DIR pos6-9 pos5-9 dir-up)
    (MOVE-DIR pos7-1 pos7-2 dir-right)
    (MOVE-DIR pos7-1 pos6-1 dir-up)
    (MOVE-DIR pos7-2 pos7-1 dir-left)
    (MOVE-DIR pos7-2 pos6-2 dir-up)
    (thinsnake pos3-3)
    (blocked pos3-3)
    (ispoint pos0-5)
    (isbox pos1-7)
    (isbox pos2-5)
    (isbox pos2-9)
    (isbox pos3-4)
    (isbox pos3-5)
    (isbox pos3-7)
    (isbox pos4-5)
    (isbox pos4-8)
    (isbox pos4-9)
    (isbox pos5-7)
    (isbox pos6-8)
    (ishole pos0-2)
    (ishole pos0-3)
    (ishole pos0-4)
    (ishole pos2-1)
    (ishole pos3-1)
    (ishole pos4-1)
    (ishole pos5-1)
    (ishole pos6-3)
    (ishole pos6-4)
    (ishole pos6-5)
    (ishole pos6-6)
    (blocked pos0-2)
    (blocked pos0-3)
    (blocked pos0-4)
    (blocked pos2-1)
    (blocked pos3-1)
    (blocked pos4-1)
    (blocked pos5-1)
    (blocked pos6-3)
    (blocked pos6-4)
    (blocked pos6-5)
    (blocked pos6-6)
)
(:goal
    (not (ispoint pos0-5))
)
)