(define (problem sobokosnake-1-3)
(:domain sobokosnake)
(:objects
    pos0-5 - location
    pos0-6 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos1-5 - location
    pos1-6 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-3 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
    pos3-1 - location
    pos3-2 - location
    pos3-3 - location
    pos3-5 - location
    pos3-6 - location
    pos4-5 - location
    pos4-6 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-5 pos1-5 dir-down)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos1-6 dir-down)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos1-5 pos0-5 dir-up)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos2-6 dir-down)
    (MOVE-DIR pos1-6 pos0-6 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-2 pos2-3 dir-right)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-3 pos2-2 dir-left)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos2-5 pos3-5 dir-down)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos1-6 dir-up)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos3-1 pos3-2 dir-right)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-2 pos3-3 dir-right)
    (MOVE-DIR pos3-2 pos3-1 dir-left)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-3 pos3-2 dir-left)
    (MOVE-DIR pos3-5 pos3-6 dir-right)
    (MOVE-DIR pos3-5 pos2-5 dir-up)
    (MOVE-DIR pos3-5 pos4-5 dir-down)
    (MOVE-DIR pos3-6 pos3-5 dir-left)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos4-5 pos4-6 dir-right)
    (MOVE-DIR pos4-5 pos3-5 dir-up)
    (MOVE-DIR pos4-6 pos4-5 dir-left)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (thinsnake pos2-1)
    (blocked pos2-1)
    (ispoint pos1-1)
    (ispoint pos1-3)
    (ispoint pos1-5)
    (ispoint pos2-0)
    (ispoint pos2-2)
    (ispoint pos2-4)
    (ispoint pos2-6)
    (ispoint pos3-1)
    (ispoint pos3-3)
    (ispoint pos3-5)
)
(:goal
(and
    (not (ispoint pos1-1))
    (not (ispoint pos1-3))
    (not (ispoint pos1-5))
    (not (ispoint pos2-0))
    (not (ispoint pos2-2))
    (not (ispoint pos2-4))
    (not (ispoint pos2-6))
    (not (ispoint pos3-1))
    (not (ispoint pos3-3))
    (not (ispoint pos3-5))
)
)
)