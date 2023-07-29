(define (problem sobokosnake-2-1)
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
    pos1-3 - location
    pos1-4 - location
    pos1-5 - location
    pos1-6 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
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
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-4 pos0-5 dir-right)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-5 pos0-4 dir-left)
    (MOVE-DIR pos0-5 pos1-5 dir-down)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos1-6 dir-down)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos1-5 pos0-5 dir-up)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos2-6 dir-down)
    (MOVE-DIR pos1-6 pos0-6 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos1-6 dir-up)
    ;(tailsnake pos2-1)
    ;(headsnake pos2-1)
    (thinsnake pos1-0)
    (blocked pos1-0)
    (ispoint pos0-0)
    (ispoint pos0-2)
    (ispoint pos0-5)
    (ispoint pos1-1)
    (ispoint pos1-5)
    (ispoint pos1-6)
    (ispoint pos2-0)
    (ispoint pos2-2)
    (ispoint pos2-5)
    (isbox pos1-3)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ispoint pos0-2))
    (not (ispoint pos0-5))
    (not (ispoint pos1-1))
    (not (ispoint pos1-5))
    (not (ispoint pos1-6))
    (not (ispoint pos2-0))
    (not (ispoint pos2-2))
    (not (ispoint pos2-5))
)
)
)