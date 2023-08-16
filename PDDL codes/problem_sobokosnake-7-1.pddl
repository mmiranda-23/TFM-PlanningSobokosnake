(define (problem sobokosnake-7-1)
(:domain sobokosnake)
(:objects
    pos0-1 - location
    pos0-2 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos1-4 - location
    pos1-5 - location
    pos2-1 - location
    pos2-2 - location
    pos2-3 - location
    pos2-4 - location
    pos2-5 - location
    pos3-1 - location
    pos3-2 - location
    pos3-3 - location
    pos3-4 - location
    pos3-5 - location
    pos4-0 - location
    pos4-1 - location
    pos4-2 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-1 pos0-2 dir-right)
    (MOVE-DIR pos0-1 pos1-1 dir-down)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos2-3 dir-right)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-3 pos2-2 dir-left)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos3-5 dir-down)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos3-1 pos3-2 dir-right)
    (MOVE-DIR pos3-1 pos4-1 dir-down)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-2 pos3-1 dir-left)
    (MOVE-DIR pos3-2 pos3-3 dir-right)
    (MOVE-DIR pos3-2 pos4-2 dir-down)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-3 pos3-2 dir-left)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos3-5 dir-right)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-5 pos3-4 dir-left)
    (MOVE-DIR pos3-5 pos2-5 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos4-2 dir-right)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-1 pos3-1 dir-up)
    (MOVE-DIR pos4-2 pos4-1 dir-left)
    (MOVE-DIR pos4-2 pos5-2 dir-down)
    (MOVE-DIR pos4-2 pos3-2 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos4-2 dir-up)
    (thinsnake pos5-2)
    (blocked pos5-2)
    (ispoint pos2-5)
    (ispoint pos3-1)
    (ispoint pos4-0)
    (isbox pos1-2)
    (isbox pos1-4)
    (isbox pos2-1)
    (isbox pos2-4)
    (isbox pos3-2)
    (isbox pos3-3)
    (isbox pos4-1)
    (isbox pos5-1)
)
(:goal
(and
    (not (ispoint pos2-5))
    (not (ispoint pos3-1))
    (not (ispoint pos4-0))
)
)
)