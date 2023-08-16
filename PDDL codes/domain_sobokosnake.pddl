(define (domain sobokosnake)
(:requirements :typing :negative-preconditions)
(:types location direction - object)
(:predicates
    ;up down left right of a field
    (MOVE-DIR ?x ?y - location ?dir - direction)
    ;snake that has not eaten anything yet
    (thinsnake ?x - location)
    ;the last field of the snake
    (tailsnake ?x - location)
    ;the first field of the snake
    (headsnake ?x - location)
    ;pieces of the snake that are connected. from front to back
    (nextsnake ?x ?y - location)
    ;a field that is occupied by the snake or by a hole
    (blocked ?x - location)
    ;a field that has a point that can be collected by the snake
    (ispoint ?x - location)
    ;a field that is occupied by an obstacle
    (isbox ?x - location)
    ;a field that has a hole on it
    (ishole ?x - location)
)

(:action move-thin-snake
    ;move thin snake
    :parameters (?oldposition ?newposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (not (blocked ?newposition))
        (not (ispoint ?newposition))
        (not (isbox ?newposition))
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
    )
)
(:action move-thin-snake-and-box
    ;move thin snake and push box
    :parameters (?oldposition ?newposition ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (MOVE-DIR ?newposition ?newboxposition ?dir)
        (not (blocked ?newboxposition))
        (not (ispoint ?newposition))
        (isbox ?newposition)
        (not (isbox ?newboxposition))
        
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
        (not (isbox ?newposition))
        (isbox ?newboxposition)
    )
)
(:action move-thin-snake-and-box-to-hole
    ;move thin snake and push box to a hole
    :parameters (?oldposition ?newposition ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (MOVE-DIR ?newposition ?newboxposition ?dir)
        (not (ispoint ?newposition))
        (isbox ?newposition)
        (ishole ?newboxposition)
        
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
        (not (isbox ?newposition))
        (not (ishole ?newboxposition))
        (not (blocked ?newboxposition))
    )
)



(:action move-thin-snake-and-first-eat
    ;move thin snake and eat
    :parameters (?position ?newhead - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (MOVE-DIR ?position ?newhead ?dir)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (not (isbox ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (tailsnake ?position)
        (nextsnake ?newhead ?position)
        (not (ispoint ?newhead))
        (not (thinsnake ?position))
    )
)
(:action move-box-and-first-eat
    ;move thin snake, push box and eat
    :parameters (?position ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (MOVE-DIR ?position ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (not (blocked ?newboxposition))
        (ispoint ?newhead)
        (isbox ?newhead)
        (not (isbox ?newboxposition))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (tailsnake ?position)
        (nextsnake ?newhead ?position)
        (not (ispoint ?newhead))
        (not (thinsnake ?position))
        (not (isbox ?newhead))
        (isbox ?newboxposition)
    )
)
(:action move-box-to-hole-and-first-eat
    ;move thin snake, push box to a hole and eat
    :parameters (?position ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (MOVE-DIR ?position ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (ispoint ?newhead)
        (isbox ?newhead)
        (ishole ?newboxposition)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (tailsnake ?position)
        (nextsnake ?newhead ?position)
        (not (ispoint ?newhead))
        (not (thinsnake ?position))
        (not (isbox ?newhead))
        (not (ishole ?newboxposition))
        (not (blocked ?newboxposition))
    )
)
(:action move-fat-snake
    ;move snake
    :parameters (?head ?newhead ?tail ?newtail - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newhead))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (blocked ?tail))
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
    )
)
(:action move-fat-snake-and-box
    ;move snake and push box
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newboxposition))
        (not (ispoint ?newhead))
        (isbox ?newhead)
        (not (isbox ?newboxposition))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (blocked ?tail))
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
        (not (isbox ?newhead))
        (isbox ?newboxposition)
    )
)
(:action move-fat-snake-and-box-to-hole
    ;move snake and push box to a hole
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (ispoint ?newhead))
        (isbox ?newhead)
        (ishole ?newboxposition)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (blocked ?tail))
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
        (not (isbox ?newhead))
        (not (ishole ?newboxposition))
        (not (blocked ?newboxposition))
    )
)
(:action move-and-eat
    ;move snake and eat
    :parameters (?head ?newhead - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (not (isbox ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
    )
)
(:action move-box-and-eat
    ;move snake, push box and eat
    :parameters (?head ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (not (blocked ?newboxposition))
        (ispoint ?newhead)
        (isbox ?newhead)
        (not (isbox ?newboxposition))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
        (isbox ?newboxposition)
    )
)
(:action move-box-to-hole-and-eat
    ;move snake, push box to a hole and eat
    :parameters (?head ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (ispoint ?newhead)
        (isbox ?newhead)
        (ishole ?newboxposition)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
        (not (ishole ?newboxposition))
        (not (blocked ?newboxposition))
    )
)
)