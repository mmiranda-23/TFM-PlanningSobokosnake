(define (problem sobokosnake-1-1)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location 
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
    pos2-4 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-0 pos1-0 dir-down)
    (MOVE-DIR pos0-0 pos0-1 dir-right)
    (MOVE-DIR pos0-1 pos1-1 dir-down)
    (MOVE-DIR pos0-1 pos0-0 dir-left)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (tailsnake pos1-1)
    (headsnake pos1-1)
    (nextsnake pos1-1 pos1-1)
    (blocked pos1-1)
    (ispoint pos0-0)
    (ispoint pos0-1)
    (ispoint pos0-4)
    (ispoint pos1-0)
    (ispoint pos1-2)
    (ispoint pos1-3)
    (ispoint pos2-0)
    (ispoint pos2-1)
    (ispoint pos2-4)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ispoint pos0-1))
    (not (ispoint pos0-4))
    (not (ispoint pos1-0))
    (not (ispoint pos1-2))
    (not (ispoint pos1-3))
    (not (ispoint pos2-0))
    (not (ispoint pos2-1))
    (not (ispoint pos2-4))
)
)
)



