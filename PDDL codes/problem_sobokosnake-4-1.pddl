(define (problem sobokosnake-4-1)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos0-4 - location
    pos0-5 - location
    pos0-6 - location
    pos1-0 - location
    pos1-1 - location
    pos1-2 - location
    pos1-4 - location
    pos1-5 - location
    pos1-6 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
    pos3-0 - location
    pos3-2 - location
    pos3-5 - location
    pos4-0 - location
    pos4-1 - location
    pos4-2 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-6 - location
    pos4-8 - location
    pos5-1 - location
    pos5-2 - location
    pos5-3 - location
    pos5-4 - location
    pos5-5 - location
    pos5-6 - location
    pos5-8 - location
    pos5-9 - location
    pos6-5 - location
    pos6-6 - location
    pos6-7 - location
    pos6-8 - location
    pos6-9 - location
    pos7-7 - location
    pos7-8 - location
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
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-4 pos0-5 dir-right)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos0-5 pos0-4 dir-left)
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-5 pos1-5 dir-down)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos1-6 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos1-5 pos0-5 dir-up)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos2-6 dir-down)
    (MOVE-DIR pos1-6 pos0-6 dir-up)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-5 pos3-5 dir-down)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos1-6 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-2 pos4-2 dir-down)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-5 pos4-5 dir-down)
    (MOVE-DIR pos3-5 pos2-5 dir-up)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos4-2 dir-right)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-2 pos4-1 dir-left)
    (MOVE-DIR pos4-2 pos4-3 dir-right)
    (MOVE-DIR pos4-2 pos5-2 dir-down)
    (MOVE-DIR pos4-2 pos3-2 dir-up)
    (MOVE-DIR pos4-3 pos4-2 dir-left)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos4-6 dir-right)
    (MOVE-DIR pos4-5 pos5-5 dir-down)
    (MOVE-DIR pos4-5 pos3-5 dir-up)
    (MOVE-DIR pos4-6 pos4-5 dir-left)
    (MOVE-DIR pos4-6 pos5-6 dir-down)
    (MOVE-DIR pos4-8 pos5-8 dir-down)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-2 pos4-2 dir-up)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos5-4 dir-right)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos5-4 pos5-3 dir-left)
    (MOVE-DIR pos5-4 pos5-5 dir-right)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (MOVE-DIR pos5-5 pos5-4 dir-left)
    (MOVE-DIR pos5-5 pos5-6 dir-right)
    (MOVE-DIR pos5-5 pos6-5 dir-down)
    (MOVE-DIR pos5-5 pos4-5 dir-up)
    (MOVE-DIR pos5-6 pos5-5 dir-left)
    (MOVE-DIR pos5-6 pos6-6 dir-down)
    (MOVE-DIR pos5-6 pos4-6 dir-up)
    (MOVE-DIR pos5-8 pos5-9 dir-right)
    (MOVE-DIR pos5-8 pos6-8 dir-down)
    (MOVE-DIR pos5-8 pos4-8 dir-up)
    (MOVE-DIR pos5-9 pos5-8 dir-left)
    (MOVE-DIR pos5-9 pos6-9 dir-down)
    (MOVE-DIR pos6-5 pos6-6 dir-right)
    (MOVE-DIR pos6-5 pos5-5 dir-up)
    (MOVE-DIR pos6-6 pos6-5 dir-left)
    (MOVE-DIR pos6-6 pos6-7 dir-right)
    (MOVE-DIR pos6-6 pos5-6 dir-up)
    (MOVE-DIR pos6-7 pos6-6 dir-left)
    (MOVE-DIR pos6-7 pos6-8 dir-right)
    (MOVE-DIR pos6-7 pos7-7 dir-down)
    (MOVE-DIR pos6-8 pos6-7 dir-left)
    (MOVE-DIR pos6-8 pos6-9 dir-right)
    (MOVE-DIR pos6-8 pos7-8 dir-down)
    (MOVE-DIR pos6-8 pos5-8 dir-up)
    (MOVE-DIR pos6-9 pos6-8 dir-left)
    (MOVE-DIR pos6-9 pos5-9 dir-up)
    (MOVE-DIR pos7-7 pos7-8 dir-right)
    (MOVE-DIR pos7-7 pos6-7 dir-up)
    (MOVE-DIR pos7-8 pos7-7 dir-left)
    (MOVE-DIR pos7-8 pos6-8 dir-up)
    (thinsnake pos4-5)
    (blocked pos4-5)
    (ispoint pos0-0)
    (ispoint pos0-4)
    (ispoint pos0-6)
    (ispoint pos1-2)
    (ispoint pos1-5)
    (ispoint pos2-0)
    (ispoint pos2-1)
    (ispoint pos2-4)
    (ispoint pos2-6)
    (isbox pos4-4)
    (blocked pos3-5)
    (isclosed pos3-5)
    (isswitch pos4-8)
    (DOOR-SWITCH pos3-5 pos4-8)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ispoint pos0-4))
    (not (ispoint pos0-6))
    (not (ispoint pos1-2))
    (not (ispoint pos1-5))
    (not (ispoint pos2-0))
    (not (ispoint pos2-1))
    (not (ispoint pos2-4))
    (not (ispoint pos2-6))
    
)
)
)