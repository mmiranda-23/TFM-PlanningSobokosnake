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
    ;switch button is not pushed so door is closed or will close
    (isclosed ?x - location)
    ;a field that contains a switch button that opens a door
    (isswitch ?x - location)
    ;door at position x opens while pressing switch button in position y
    (DOOR-SWITCH ?x ?y - location)
)


; MOVE
(:action move-thin-snake
    ;move thin snake
    :parameters (?oldposition ?newposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (not (isswitch ?oldposition))
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
(:action move-thin-snake-and-close-door
    ;move thin snake and close door
    :parameters (?oldposition ?newposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (isswitch ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (not (blocked ?newposition))
        (not (ispoint ?newposition))
        (not (isbox ?newposition))
        (DOOR-SWITCH ?doorposition ?oldposition)
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
        (blocked ?doorposition)
        (isclosed ?doorposition)
    )
)
(:action move-fat-snake
    ;move snake
    :parameters (?head ?newhead ?tail ?newtail - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (not (isclosed ?tail))
        (not (isswitch ?newhead))
        (not (isswitch ?tail))
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
(:action move-fat-snake-and-open-door
    ;move snake
    :parameters (?head ?newhead ?tail ?newtail ?doorposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isswitch ?newhead)
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newhead))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
        (DOOR-SWITCH ?doorposition ?newhead)
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
        (not (blocked ?doorposition))
    )
)
(:action move-fat-snake-and-switch-off
    ;move snake and close door
    :parameters (?head ?newhead ?tail ?newtail ?doorposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isswitch ?tail)
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newhead))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
        (DOOR-SWITCH ?doorposition ?tail)
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
        (blocked ?doorposition)
        (isclosed ?doorposition)
    )
)
(:action move-fat-snake-and-close-door
    ;move snake and close door
    :parameters (?head ?newhead ?tail ?newtail - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isclosed ?tail)
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
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
    )
)


; MOVE AND EAT
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


; MOVE AND PUSH BOX

(:action move-thin-snake-and-box
    ;move thin snake and push box
    :parameters (?oldposition ?newposition ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (not (isclosed ?oldposition))
        (not (isswitch ?oldposition))
        (not (isswitch ?newboxposition))
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
(:action move-thin-snake-and-box-open-door
    ;move thin snake and push box to a switch button
    :parameters (?oldposition ?newposition ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (MOVE-DIR ?newposition ?newboxposition ?dir)
        (not (ispoint ?newposition))
        (isbox ?newposition)
        (isswitch ?newboxposition)
        (DOOR-SWITCH ?doorposition ?newboxposition)
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
        (not (isbox ?newposition))
        (not (blocked ?doorposition))
        (not (isclosed ?doorposition))
        (isbox ?newboxposition)
    )
)
(:action move-thin-snake-and-box-close-door
    ;move thin snake and push box
    :parameters (?oldposition ?newposition ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (isswitch ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (MOVE-DIR ?newposition ?newboxposition ?dir)
        (not (blocked ?newboxposition))
        (not (ispoint ?newposition))
        (isbox ?newposition)
        (not (isbox ?newboxposition))
        (DOOR-SWITCH ?doorposition ?oldposition)
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
        (not (isbox ?newposition))
        (isbox ?newboxposition)
        (blocked ?doorposition)
        (isclosed ?doorposition)
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

(:action move-fat-snake-and-box
    ;move snake and push box
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (not (isswitch ?newboxposition))
        (not (isswitch ?tail))
        (not (isclosed ?tail))
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
(:action move-fat-snake-and-box-open-door
    ;move snake and push box to a switch button
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isswitch ?newboxposition)
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (ispoint ?newhead))
        (isbox ?newhead)
        (DOOR-SWITCH ?doorposition ?newboxposition)
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
        (blocked ?newboxposition)
        (not (blocked ?doorposition))
        (not (isclosed ?doorposition))
    )
)
(:action move-fat-snake-and-box-switch-off
    ;move snake and push box
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isswitch ?tail)
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newboxposition))
        (not (ispoint ?newhead))
        (isbox ?newhead)
        (not (isbox ?newboxposition))
        (DOOR-SWITCH ?doorposition ?tail)
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
        (blocked ?doorposition)
        (isclosed ?doorposition)
    )
)
(:action move-fat-snake-and-box-close-door
    ;move snake and push box
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isclosed ?tail)
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
        (not (isclosed ?tail))
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
(:action move-fat-snake-and-box-to-hole-switch-off
    ;move snake and push box to a hole
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (isswitch ?tail)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (ispoint ?newhead))
        (isbox ?newhead)
        (ishole ?newboxposition)
        (DOOR-SWITCH ?doorposition ?tail)
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
        (blocked ?doorposition)
        (isclosed ?doorposition)
    )
)
(:action move-fat-snake-and-box-to-hole-close-door
    ;move snake and push box to a hole
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (isclosed ?tail)
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
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
        (not (isbox ?newhead))
        (not (ishole ?newboxposition))
        (not (blocked ?newboxposition))
    )
)



; MOVE, EAT AND PUSH BOX

(:action move-box-and-first-eat
    ;move thin snake, push box and eat
    :parameters (?position ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (not (isswitch ?newboxposition))
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
(:action move-box-open-door-and-first-eat
    ;move thin snake, push box to a switch button and eat
    :parameters (?position ?newhead ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (isswitch ?newboxposition)
        (DOOR-SWITCH ?doorposition ?newboxposition)
        (MOVE-DIR ?position ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (ispoint ?newhead)
        (isbox ?newhead)
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
        (blocked ?newboxposition)
        (not (blocked ?doorposition))
        (not (isclosed ?doorposition))
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
(:action move-box-and-eat
    ;move snake, push box and eat
    :parameters (?head ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (not (isswitch ?newboxposition))
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
(:action move-box-open-door-and-eat
    ;move snake, push box to a switch button and eat
    :parameters (?head ?newhead ?newboxposition ?doorposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (isswitch ?newboxposition)
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (ispoint ?newhead)
        (isbox ?newhead)
        (DOOR-SWITCH ?doorposition ?newboxposition)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
        (blocked ?newboxposition)
        (not (blocked ?doorposition))
        (not (isclosed ?doorposition))
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
