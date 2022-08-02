	object_const_def ; object_event constants
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY

DayCare_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .EggCheckCallback

.EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	return

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	return

DayCareManScript_Inside:
	faceplayer
	opentext
	special Mobile_DummyReturnFalse
	iffalse .AlreadyHaveOddEgg
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	setval EGG_TICKET
	special UnusedFindItemInPCOrBag
	iftrue .AlreadyHaveOddEgg
	writetext Text_DayCareManTalksAboutEggTicket ; 7E2A
	buttonsound
	verbosegiveitem EGG_TICKET
	writetext DayCareText_ComeAgain ; 7EA3
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end

.PartyFull:
	opentext
	writetext DayCareText_PartyFull
	waitbutton
	closetext
	end

.AlreadyHaveOddEgg:
	special DayCareMan
	waitbutton
	closetext
	end

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd difficultbookshelf

Text_GrampsLookingForYou:
	text "El abuelo te"
	line "estaba buscando."
	done

Text_DayCareManTalksAboutEggTicket:
	text "Soy el ENCARGADO"
	line "de la GUARDERÍA."

	para "Hay algo nuevo en"
	line "CIUDAD TRIGAL"

	para "llamado CENTRO DE"
	line "CAMBIO."

	para "Me dieron un"
	line "TICKET HUEVO que"

	para "puede ser cambiado"
	line "por un HUEVO RARO."

	para "Pero como tengo"
	line "una GUARDERÍA, no"

	para "lo necesito. Mejor"
	line "te lo quedas tú."
	done

DayCareManText_GiveOddEgg:
	text "Soy el ENCARGADO"
	line "de la GUARDERÍA."

	para "¿Sabes algo acerca"
	line "de los HUEVOS?"

	para "He estado cuidando"
	line "#MON junto con"
	cont "mi esposa."

	para "¡Y hemos consegui-"
	line "do un HUEVO!"

	para "¿A que es"
	line "increíble?"

	para "¿Qué? ¿Te gusta"
	line "este HUEVO?"

	para "¡Entonces, "
	line "quédatelo!"
	done

DayCareText_ComeAgain:
	text "Vuelve cuando"
	line "quieras."
	done

DayCareText_GotOddEgg:
	text "¡<PLAYER> recibió"
	line "el HUEVO RARO!"
	done

DayCareText_DescribeOddEgg:
	text "Lo encontré"
	line "mientras cuidaba"

	para "el #MON de"
	line "alguien."

	para "Pero el entrenador"
	line "no quiso el HUEVO,"

	para "así que lo dejé"
	line "por aquí."
	done

DayCareText_PartyFull:
	text "No tienes sitio"
	line "para esto."
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	db 2 ; object events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
