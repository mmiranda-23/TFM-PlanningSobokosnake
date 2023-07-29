(define (problem sobokosnake-1-2)
(:domain sobokosnake)
(:objects
    pos0-2 - location
    pos0-3 - location
    pos1-0 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos3-0 - location
    pos3-1 - location
    pos3-2 - location
    pos3-3 - location
    pos4-2 - location
    pos4-3 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-3 dir-right)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-1 pos3-2 dir-right)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-2 pos3-3 dir-right)
    (MOVE-DIR pos3-2 pos3-1 dir-left)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-2 pos4-2 dir-down)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos3-2 dir-left)
    (MOVE-DIR pos4-2 pos3-2 dir-up)
    (MOVE-DIR pos4-2 pos4-3 dir-right)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos4-3 pos4-2 dir-left)
    ;(tailsnake pos2-1)
    ;(headsnake pos2-1)
    (thinsnake pos2-1)
    (blocked pos2-1)
    (ispoint pos0-3)
    (ispoint pos1-0)
    (ispoint pos1-2)
    (ispoint pos2-0)
    (ispoint pos2-2)
    (ispoint pos3-0)
    (ispoint pos3-2)
    (ispoint pos4-3)
)
(:goal
(and
    (not (ispoint pos0-3))
    (not (ispoint pos1-0))
    (not (ispoint pos1-2))
    (not (ispoint pos2-0))
    (not (ispoint pos2-2))
    (not (ispoint pos3-0))
    (not (ispoint pos3-2))
    (not (ispoint pos4-3))
)
)
)