(define (problem sobokosnake-3-1)
(:domain sobokosnake)
(:objects
    pos0-2 - location
    pos0-3 - location
    pos0-4 - location
    pos1-0 - location
    pos1-1 - location
    pos1-2 - location
    pos1-4 - location
    pos1-6 - location
    pos1-7 - location
    pos1-8 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-3 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
    pos2-7 - location
    pos2-8 - location
    pos3-1 - location
    pos3-3 - location
    pos3-4 - location
    pos3-6 - location
    pos3-7 - location
    pos3-8 - location
    pos4-0 - location
    pos4-1 - location
    pos4-3 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    pos5-3 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-2 pos0-3 dir-right)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos1-6 pos1-7 dir-right)
    (MOVE-DIR pos1-6 pos2-6 dir-down)
    (MOVE-DIR pos1-7 pos1-6 dir-left)
    (MOVE-DIR pos1-7 pos1-8 dir-right)
    (MOVE-DIR pos1-7 pos2-7 dir-down)
    (MOVE-DIR pos1-8 pos1-7 dir-left)
    (MOVE-DIR pos1-8 pos2-8 dir-down)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos2-3 dir-right)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-3 pos2-2 dir-left)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos2-7 dir-right)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-6 pos1-6 dir-up)
    (MOVE-DIR pos2-7 pos2-6 dir-left)
    (MOVE-DIR pos2-7 pos2-8 dir-right)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-7 pos1-7 dir-up)
    (MOVE-DIR pos2-8 pos2-7 dir-left)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos2-8 pos1-8 dir-up)
    (MOVE-DIR pos3-1 pos4-1 dir-down)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-6 pos3-7 dir-right)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos3-7 pos3-6 dir-left)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos2-8 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-1 pos3-1 dir-up)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (thinsnake pos1-0)
    (blocked pos1-0)
    (ispoint pos1-6)
    (ispoint pos1-8)
    (ispoint pos2-1)
    (ispoint pos2-7)
    (ispoint pos3-4)
    (ispoint pos3-6)
    (ispoint pos3-8)
    (ispoint pos4-0)
    (ispoint pos5-1)
    (isbox pos1-2)
    (isbox pos2-5)
    (ishole pos3-1)
    (ishole pos5-2)
    (blocked pos3-1)
    (blocked pos5-2)
)
(:goal
(and
    (not (ispoint pos1-0))
    (not (ispoint pos1-6))
    (not (ispoint pos1-8))
    (not (ispoint pos2-1))
    (not (ispoint pos2-7))
    (not (ispoint pos3-4))
    (not (ispoint pos3-6))
    (not (ispoint pos3-8))
    (not (ispoint pos4-0))
    (not (ispoint pos5-1))
)
)
)