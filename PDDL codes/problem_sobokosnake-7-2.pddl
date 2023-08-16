(define (problem sobokosnake-7-2)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos0-3 - location
    pos0-4 - location
    pos1-0 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos1-4 - location
    pos2-0 - location
    pos2-1 - location
    pos2-3 - location
    pos3-0 - location
    pos3-1 - location
    pos3-3 - location
    pos3-4 - location
    pos4-0 - location
    pos4-1 - location
    pos4-4 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    pos5-3 - location
    pos5-4 - location
    pos5-5 - location
    pos6-0 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
    pos6-4 - location
    pos6-5 - location
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
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos4-1 dir-down)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-1 pos3-1 dir-up)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-2 pos6-2 dir-down)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos5-4 dir-right)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-4 pos5-3 dir-left)
    (MOVE-DIR pos5-4 pos5-5 dir-right)
    (MOVE-DIR pos5-4 pos6-4 dir-down)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (MOVE-DIR pos5-5 pos5-4 dir-left)
    (MOVE-DIR pos5-5 pos6-5 dir-down)
    (MOVE-DIR pos6-0 pos5-0 dir-up)
    (MOVE-DIR pos6-0 pos6-1 dir-right)
    (MOVE-DIR pos6-1 pos6-0 dir-left)
    (MOVE-DIR pos6-1 pos6-2 dir-right)
    (MOVE-DIR pos6-1 pos5-1 dir-up)
    (MOVE-DIR pos6-2 pos6-1 dir-left)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-2 pos5-2 dir-up)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos6-4 dir-right)
    (MOVE-DIR pos6-3 pos5-3 dir-up)
    (MOVE-DIR pos6-4 pos6-3 dir-left)
    (MOVE-DIR pos6-4 pos6-5 dir-right)
    (MOVE-DIR pos6-4 pos5-4 dir-up)
    (MOVE-DIR pos6-5 pos6-4 dir-left)
    (MOVE-DIR pos6-5 pos5-5 dir-up)
    (thinsnake pos6-2)
    (blocked pos6-2)
    (ispoint pos0-3)
    (ispoint pos2-1)
    (ispoint pos2-3)
    (ispoint pos3-1)
    (ispoint pos3-3)
    (ispoint pos5-3)
    (ispoint pos5-5)
    (isbox pos0-2)
    (isbox pos1-1)
    (isbox pos1-2)
    (isbox pos1-3)
    (isbox pos4-1)
    (isbox pos5-0)
    (isbox pos5-2)
    (isbox pos5-4)
)
(:goal
(and
    (not (ispoint pos0-3))
    (not (ispoint pos2-1))
    (not (ispoint pos2-3))
    (not (ispoint pos3-1))
    (not (ispoint pos3-3))
    (not (ispoint pos5-3))
    (not (ispoint pos5-5))
)
)
)