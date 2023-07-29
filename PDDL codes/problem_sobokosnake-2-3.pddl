(define (problem sobokosnake-2-3)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos0-3 - location
    pos0-5 - location
    pos0-6 - location
    pos1-0 - location
    pos1-2 - location
    pos1-3 - location
    pos1-4 - location
    pos1-5 - location
    pos1-6 - location
    pos2-0 - location
    pos2-2 - location
    pos2-4 - location
    pos2-6 - location
    pos3-0 - location
    pos3-1 - location
    pos3-2 - location
    pos3-4 - location
    pos3-6 - location
    pos4-0 - location
    pos4-2 - location
    pos4-4 - location
    pos4-6 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    pos5-4 - location
    pos5-5 - location
    pos5-6 - location
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
    (MOVE-DIR pos0-2 pos0-3 dir-right)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-5 pos1-5 dir-down)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos1-6 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos0-5 dir-up)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos2-6 dir-down)
    (MOVE-DIR pos1-6 pos0-6 dir-up)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-6 pos1-6 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos3-2 dir-right)
    (MOVE-DIR pos3-2 pos3-1 dir-left)
    (MOVE-DIR pos3-2 pos4-2 dir-down)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-2 pos5-2 dir-down)
    (MOVE-DIR pos4-2 pos3-2 dir-up)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos4-6 pos5-6 dir-down)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos4-2 dir-up)
    (MOVE-DIR pos5-4 pos5-5 dir-right)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (MOVE-DIR pos5-5 pos5-4 dir-left)
    (MOVE-DIR pos5-5 pos5-6 dir-right)
    (MOVE-DIR pos5-6 pos5-5 dir-left)
    (MOVE-DIR pos5-6 pos4-6 dir-up)
    (thinsnake pos1-2)
    (blocked pos1-2)
    (ispoint pos1-4)
    (ispoint pos1-5)
    (ispoint pos1-6)
    (ispoint pos3-0)
    (ispoint pos3-1)
    (ispoint pos3-2)
    (ispoint pos4-0)
    (ispoint pos4-2)
    (ispoint pos5-0)
    (ispoint pos5-1)
    (ispoint pos5-2)
    (ispoint pos5-4)
    (ispoint pos5-6)
    (isbox pos1-3)
)
(:goal
(and
    (not (ispoint pos1-4))
    (not (ispoint pos1-5))
    (not (ispoint pos1-6))
    (not (ispoint pos3-0))
    (not (ispoint pos3-1))
    (not (ispoint pos3-2))
    (not (ispoint pos4-0))
    (not (ispoint pos4-2))
    (not (ispoint pos5-0))
    (not (ispoint pos5-1))
    (not (ispoint pos5-2))
    (not (ispoint pos5-4))
    (not (ispoint pos5-6))
)
)
)