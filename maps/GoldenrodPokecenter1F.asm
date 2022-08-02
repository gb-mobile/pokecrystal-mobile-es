	object_const_def ; object_event constants
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	const GOLDENRODPOKECENTER1F_SUPER_NERD ; $04
	const GOLDENRODPOKECENTER1F_LASS2 ; $05
	const GOLDENRODPOKECENTER1F_YOUNGSTER
	const GOLDENRODPOKECENTER1F_TEACHER ; $07
	const GOLDENRODPOKECENTER1F_ROCKER ; $08
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_GRAMPS ; $0A
	const GOLDENRODPOKECENTER1F_LASS
	const GOLDENRODPOKECENTER1F_POKEFAN_F

GoldenrodPokecenter1F_MapScripts:
	db 2 ; scene scripts
	scene_script .Scene0 ; SCENE_DEFAULT
	scene_script .Scene0 ; SCENE_DEFAULT

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .prepareMap

.Scene0: ; stuff to handle the player turning his gb off without saving after a trade
	setval BATTLETOWERACTION_10 ; 5671d checks if a trade was made
	special BattleTowerAction
	iffalse .noTrade ; $2967
	prioritysjump scenejmp01 ; $6F68 received pokemon from trade corner dialogue
	end

.noTrade
	setval BATTLETOWERACTION_EGGTICKET ; check if player received the odd egg or still has the egg ticket
	special BattleTowerAction ; 5672b
	iffalse .notReceivedOddEgg ; $3467 still has egg ticket
	prioritysjump scenejmp02 ; $B568 received odd egg dialogue
.notReceivedOddEgg
	end

.prepareMap
	special Mobile_DummyReturnFalse
	iftrue .mobile ; $5067
	moveobject GOLDENRODPOKECENTER1F_LASS2, $10, $09 ; this is 71 in jp crystal???
	moveobject GOLDENRODPOKECENTER1F_GRAMPS, $00, $07
	moveobject GOLDENRODPOKECENTER1F_SUPER_NERD, $08, $0D
	moveobject GOLDENRODPOKECENTER1F_TEACHER, $1B, $0D
	moveobject GOLDENRODPOKECENTER1F_ROCKER, $15, $06
	return ; this is 8f in jp crystal
.mobile
	setevent EVENT_33F
	return
	

GoldenrodPokecenter1FNurseScript:
	setevent EVENT_WELCOMED_TO_POKECOM_CENTER
	jumpstd pokecenternurse
	
GoldenrodPokecenter1FTradeCornerAttendantScript:
	db $0F
	db $01
	db $00
	opentext
	writetext GoldenrodPokecenter1FWelcomeToPCCText ; $2d6a
	buttonsound ; 54 in jp crystal?
	checkitem EGG_TICKET ; 56762 in jp crystal
	iftrue playerHasEggTicket ; $7c68
	db $0F
	db $71 ; check save file?
	db $00
	ifequal $01, pokemonInTradeCorner ; $F667
	ifequal $02, leftPokemonInTradeCornerRecently ; $6968
	readvar $01
	ifequal $01, .onlyHaveOnePokemon ; $CF67 ; 56772
	writetext GoldenrodPokecenter1FTradeMustHoldPokemonText ; $726A
	yesorno
	iffalse playerCancelled ; $D567
	
	writetext GoldenrodPokecenter1FTradeSaveText ; $756E 
	yesorno
	iffalse playerCancelled ; $D567
	special TryQuickSave
	iffalse playerCancelled ; $D567
	writetext GoldenrodPokecenter1FTradeWhichPokemonText ; $8F6E
	waitbutton ; 53 in jp crystal?
	db $0F
	db $4D
	db $00 ; 56792
	ifequal $00, playerCancelled ; $D567
	ifequal $FD, cantAcceptEgg ; $EA67
	ifgreater $FB, pokemonAbnormal ; $F067
	db $0F
	db $7B ; check party pokemon fainted
	db $00
	ifnotequal $00, cantTradeLastPokemon ; $E467
	writetext GoldenrodPokecenter1FTradeWhatKindText ; $9E6A
	waitbutton
	special Function11ac3e
	ifequal $00, playerCancelled ; $D567
	ifequal $02, .tradePokemonNeverSeen ; $BB67
	writetext GoldenrodPokecenter1FTradeSeenText ; $B96A ; 567B5
	sjump  .tradePokemon ; $BE67
.tradePokemonNeverSeen
	writetext GoldenrodPokecenter1FTradeNeverSeenText ; $1E6B
.tradePokemon
	db $0F
	db $6E ; create data to send?
	db $00
	ifequal $0A, playerCancelled ; $D567
	ifnotequal $00, mobileError ; $DB67
	writetext GoldenrodPokecenter1FTradePokemonReceivedText ; $A86B
	waitbutton
	closetext
	end
	
.onlyHaveOnePokemon
	writetext GoldenrodPokecenter1FTradeOnlyOnePokemonText ; $D76B
	waitbutton
	closetext
	end
	
playerCancelled
	writetext GoldenrodPokecenter1FTradeCancelledGoodbyeText ; $0F6C
	waitbutton
	closetext
	end
	
mobileError
	db $0F
	db $8B ; mobile error
	db $00
	writetext GoldenrodPokecenter1FTradeCancelledText ; $AA6E
	waitbutton
	closetext
	end
	
cantTradeLastPokemon
	writetext GoldenrodPokecenter1FTradeNoPokemonForBattleText ; $2C6C
	waitbutton
	closetext
	end
	
cantAcceptEgg
	writetext GoldenrodPokecenter1FTradeNoEggText ; $516C
	waitbutton
	closetext
	end
	
pokemonAbnormal
	writetext GoldenrodPokecenter1FTradeAbnormalText ; $6F6C
	waitbutton
	closetext
	end
	
pokemonInTradeCorner
	writetext GoldenrodPokecenter1FTradeSaveText ; $756E
	yesorno
	iffalse playerCancelled ; $D567
	special TryQuickSave
	iffalse playerCancelled ; $D567 ; 56800
	writetext GoldenrodPokecenter1FTradeAlreadyHoldingPokemonText ; $896C
	buttonsound
	readvar $01
	ifequal $06, partyFull ; $3868
	writetext GoldenrodPokecenter1FRoomCheckText ; $A56C
	db $0F
	db $6F ; connect
	db $00
	ifequal $0A, playerCancelled ; $D567
	ifnotequal $00, mobileError ; $DB67
	setval $0F
	db $0F
	db $86 ; 86 = BattleTowerAction
	db $00
	ifequal $00, noTradePartnerFound ; $3E68 ; 56820
	ifequal $01, .receivePokemon ; $2B68
	sjump pokemonInTradeCornerForALongTime ; $5668
	
.receivePokemon
	writetext GoldenrodPokecenter1FPartnerFoundText ; $C46C
	buttonsound
	db $0F
	db $70 ; receive a pokemon animation?
	db $00
	writetext GoldenrodPokecenter1FTradePokemonPartnerReceivedText ; $E66C
	waitbutton
	closetext
	end

partyFull
	writetext GoldenrodPokecenter1FTradePartyFullText ; $216D ; 56838
	waitbutton
	closetext
	end

noTradePartnerFound
	writetext GoldenrodPokecenter1FTradePokemonReturnedPromptText ; $576D ; 5683E
	yesorno
	iffalse continueHoldingPokemon ; $6368
	db $0F
	db $72 ; something with mobile
	db $00
	ifequal $0A, playerCancelled ; $D567
	ifnotequal $00, mobileError  ; $DB67
	writetext GoldenrodPokecenter1FTradePokemonReturnedAcceptText ; $8A6D
	waitbutton
	closetext
	end
	
pokemonInTradeCornerForALongTime
	writetext GoldenrodPokecenter1FTradeLonelyPokemonText ; $9A6D ; 56856
	buttonsound
	db $0F
	db $73 ; something with mobile
	db $00
	writetext GoldenrodPokecenter1FTradeLonelyPokemonGoodbyeText ; $016E
	waitbutton
	closetext
	end
	
continueHoldingPokemon
	writetext GoldenrodPokecenter1FTradeContinueHoldingText ; $176E ;56863
	waitbutton
	closetext
	end
	
leftPokemonInTradeCornerRecently
	writetext GoldenrodPokecenter1FTradeTooSoonText ; $306E ; 56869
	waitbutton
	closetext
	end
	
scenejmp01 ; ???
	setscene $01 ; 5686F
	refreshscreen
	writetext GoldenrodPokecenter1FPartnerFoundText ; $C46C
	buttonsound
	writetext GoldenrodPokecenter1FTradePokemonPartnerReceivedText ; $E66C
	waitbutton
	closetext
	end
	
playerHasEggTicket
	writetext GoldenrodPokecenter1FEggTicketOwnedText ; $CD6E ; 5687C
	waitbutton
	readvar $01
	ifequal $06, partyFull ; $3868
	writetext GoldenrodPokecenter1FTradeEggTicketExplanationText ; $106F
	waitbutton
	writetext GoldenrodPokecenter1FTradeSaveText ; $756E
	yesorno
	iffalse playerCancelled ; $D567
	special TryQuickSave
	iffalse playerCancelled ; $D567
	writetext GoldenrodPokecenter1FEggTicketPleaseWaitText ; $CC6F
	db $0F
	db $7D ; download odd egg
	db $00
	ifequal $0B, eggTicketExchangeNotRunning ; $AF68
	ifequal $0A, playerCancelled ; $D567
	ifnotequal $00, mobileError ; $DB67
receivedOddEgg
	writetext GoldenrodPokecenter1FEggTicketReceivedText ; $E66F
	waitbutton
	closetext
	end
	
eggTicketExchangeNotRunning
	writetext GoldenrodPokecenter1FEggTicketNotRunningText ; $2270 ; 568AF
	waitbutton
	closetext
	end
	
scenejmp02 ; 568B5
	opentext
	sjump receivedOddEgg ; $A968
	
GoldenrodPokecenter1F_NewsMachineScript:
	special Mobile_DummyReturnFalse ; 568B9
	iftrue .mobileEnabled ; $C268
	jumptext GoldenrodPokecenter1FNewsMachineNotReadyText ; $1F76
	
.mobileEnabled
	opentext
	writetext GoldenrodPokecenter1FNewsMachineText ; $4D70
	buttonsound
	setval $14
	db $0F
	db $86 ; battle tower action (get battle tower save file flags if save is yours?)
	db $00
	ifnotequal $00, .skipExplanation ; $D968
	setval $15
	db $0F
	db $86 ; battle tower action (set battle tower save file flags?)
	db $00
	writetext GoldenrodPokecenter1FNewsMachineExplanationText ; $6370 news machine tut
	waitbutton
.skipExplanation
	writetext GoldenrodPokecenter1FNewsMachineSaveText ; $C371
	yesorno
	iffalse .cancel ; $FF68
	special TryQuickSave
	iffalse .cancel ; $FF68
	setval $15
	db $0F
	db $86 ; battle tower action (set battle tower save file flags?)
	db $00
.showMenu
	writetext GoldenrodPokecenter1FNewsMachineWhatWillYouDoText ; $5970
	setval $00
	db $0F
	db $88 ; show news machine menu
	db $00
	ifequal $01, .getNews 		  ; $0869
	ifequal $02, .showNews 		  ; $1D69
	ifequal $03, .showExplanation ; $0169
.cancel
	closetext
	end
	
.showExplanation
	writetext GoldenrodPokecenter1FNewsMachineExplanationText ; $6370 ; 56901
	waitbutton
	sjump .showMenu ; $EB68
	
.getNews
	writetext GoldenrodPokecenter1FNewsMachineGetNewsPromptText ; $3E71 ; 56908
	yesorno
	iffalse .showMenu ; $EB68
	writetext GoldenrodPokecenter1FNewsMachineGettingNewsWaitText ; $5471 reading the latest news
	db $0F
	db $89 ; download news?
	db $00
	ifequal $0A, .showMenu ; $EB68
	ifnotequal $00, .mobileError ; $3569
.showNews
	db $0F
	db $8A ; show news?
	db $00
	iffalse .quitViewingNews ; $3269
	ifequal $01, .noOldNews ; $2E69
	writetext GoldenrodPokecenter1FNewsMachineCorruptedText ; $8971
	waitbutton
	sjump .showMenu ; $EB68
	
.noOldNews
	writetext GoldenrodPokecenter1FNewsMachineNoOldNewsText ; $7971 ; 5692E
	waitbutton
.quitViewingNews
	sjump .showMenu ; $EB68
	
.mobileError
	db $0F ; 56935
	db $8B ; mobile error
	db $00
	closetext
	end

Unreferenced:
	writetext GoldenrodPokecenter1FLinkReceptionistNotReadyText ; ??? $AA71 ; 5693A no jump to here?
	waitbutton
	closetext
	end
	
GoldenrodPokecenter1F_GSBallSceneLeft
	setval $0B ; 56940
	db $0F
	db $86 ; battle tower action (load mobile event index)
	db $00
	iffalse nogsball ; $9769
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER ; 340
	iftrue nogsball ; $9769
	moveobject $03, $0C, $0B
	sjump gsball ; 6769
	
GoldenrodPokecenter1F_GSBallSceneRight
	setval $0B ; 56955
	db $0F
	db $86 ; battle tower action (load mobile event index)
	db $00
	iffalse nogsball ; $9769
	checkevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER ; 340
	iftrue nogsball ; $9769
	moveobject $03, $0D, $0B
	
gsball ; 56769
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerMovement ; $0F6A
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkBackMovement ; $196A
	special RestartMapMusic
	moveobject GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST, 16,  8
	disappear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_LINK_RECEPTIONIST
	
nogsball
	end
	
GoldenrodPokecenter1FSuperNerdScript:
	special Mobile_DummyReturnFalse ; 56998
	iftrue .mobile ; $A169
	jumptextfaceplayer GoldenrodPokecenter1FMobileOffSuperNerdText ; $E071 
	
.mobile
	jumptextfaceplayer GoldenrodPokecenter1FMobileOnSuperNerdText ; $1E72
	
GoldenrodPokecenter1FLass2Script:
	special Mobile_DummyReturnFalse ; 569A4
	iftrue .mobile
	jumptextfaceplayer GoldenrodPokecenter1FMobileOffLassText ; $AD72
	
.mobile
	checkevent EVENT_33F
	iftrue .alreadyMoved ; $D369
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FMobileOnLassText1 ; $EB72
	waitbutton
	closetext
	readvar $09
	ifequal $02, .talkedToFromRight ; $C769
	applymovement GOLDENRODPOKECENTER1F_LASS2, GoldenrodPokeCenter1FLass2WalkRightMovement ; $236A
	sjump .skip ; $CB69
.talkedToFromRight
	applymovement GOLDENRODPOKECENTER1F_LASS2, GoldenrodPokeCenter1FLassWalkRightAroundPlayerMovement ; $276A
.skip
	setevent EVENT_33F
	moveobject GOLDENRODPOKECENTER1F_LASS2, $12, $09
	end

.alreadyMoved
	jumptextfaceplayer GoldenrodPokecenter1FMobileOnLassText2 ; $2373
	
GoldenrodPokecenter1FYoungsterScript:
	special Mobile_DummyReturnFalse ; 569D6
	iftrue .mobile ; $DF69
	jumptextfaceplayer GoldenrodPokecenter1FMobileOffYoungsterText ; $5473
	
.mobile
	jumptextfaceplayer GoldenrodPokecenter1FMobileOnYoungsterText ; $1074
	
GoldenrodPokecenter1FTeacherScript:
	special Mobile_DummyReturnFalse ; 569E2
	iftrue .mobile ; $EB69
	jumptextfaceplayer GoldenrodPokecenter1FMobileOffTeacherText ; $8273
	
.mobile
	jumptextfaceplayer GoldenrodPokecenter1FMobileOnTeacherText ; $3274
	
GoldenrodPokecenter1FRockerScript:
	special Mobile_DummyReturnFalse ; 569EE
	iftrue .mobile ; $F769
	jumptextfaceplayer GoldenrodPokecenter1FMobileOffRockerText ; $D073
	
.mobile
	jumptextfaceplayer GoldenrodPokecenter1FMobileOnRockerText ; $5474
	
GoldenrodPokecenter1FGrampsScript:
	special Mobile_DummyReturnFalse ; 569FD
	iftrue .mobile ; $066A
	jumptextfaceplayer GoldenrodPokecenter1FMobileOffGrampsText ; $D674
	
.mobile
	jumptextfaceplayer GoldenrodPokecenter1FMobileOnGrampsText ; $1875
	
GoldenrodPokecenter1FInfoSign:
	jumptext GoldenrodPokecenter1FInfoSignText

GoldenrodPokecenter1FGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecenter1FGameboyKidText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokecenter1FPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokecenter1FPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkBackMovement:
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

GoldenrodPokeCenter1FLass2WalkRightMovement:
	slow_step RIGHT ; db $0B
	slow_step RIGHT ; db $0B
	turn_head UP    ; db $01
	step_end 		; db $47

GoldenrodPokeCenter1FLassWalkRightAroundPlayerMovement:
	slow_step DOWN  ; db $08
	slow_step RIGHT ; db $0B
	slow_step RIGHT ; db $0B
	slow_step UP    ; db $09
	turn_head UP    ; db $01
	step_end 		; db $47

GoldenrodPokecenter1FWelcomeToPCCText:
					
	text "¡Hola! Éste es el"
	line "CENTRO DE CAMBIO"

	para "del CENTRO"
	line "#COM."

	para "Puedes cambiar"
	line "#MON con gente"
	cont "que está lejos."
	done

GoldenrodPokecenter1FTradeMustHoldPokemonText:
	text "Para hacer un"
	line "intercambio,"

	para "necesitamos tu"
	line "#MON."

	para "¿Quieres inter-"
	line "cambiar alguno?"
	done

GoldenrodPokecenter1FTradeWhatKindText:
	text "¿Qué tipo de"
	line "#MON quieres"
	cont "a cambio?"
	done

GoldenrodPokecenter1FTradeSeenText:
	text "Bien. Intentaremos"
	line "intercambiar un"

	para "@"
	text_ram wStringBuffer3
	text " por un"
	line "@"
	text_ram wStringBuffer4
	text "."

	para "Necesitamos tu"
	line "#MON durante"
	cont "el intercambio."

	para "Por favor, espera"
	line "mientras se"
	cont "prepara la sala."
	done

GoldenrodPokecenter1FTradeNeverSeenText:
	text "Bien. Intentaremos"
	line "intercambiar un"

	para "@"
	text_ram wStringBuffer3
	text " por un"
	line "#MON que no"
	cont "hayas visto nunca."

	para "Necesitamos tu"
	line "#MON durante"
	cont "el intercambio."

	para "Por favor, espera"
	line "mientras se"
	cont "prepara la sala."
	done

GoldenrodPokecenter1FTradePokemonReceivedText:
	text "Recibido tu"
	line "#MON de"
	cont "intercambio."

	para "Llevará tiempo"
	line "encontrar un"

	para "compañero de"
	line "intercambio."

	para "Vuelve luego."
	done

GoldenrodPokecenter1FTradeOnlyOnePokemonText:
	text "¿Eh? Sólo tienes"
	line "un #MON en tu"
	cont "equipo."

	para "Vuelve cuando"
	line "hayas aumentado el"

	para "número de miembros"
	line "de tu equipo."
	done

GoldenrodPokecenter1FTradeCancelledGoodbyeText:
	text "¡Vuelve siempre"
	line "que quieras!"
	done

GoldenrodPokecenter1FCommunicationError: ; Unreferenced
	text "Error de"
	line "comunicación…"
	done

GoldenrodPokecenter1FTradeNoPokemonForBattleText:
	text "Si aceptamos ese"
	line "#MON, ¿con cuál"
	cont "lucharás?"
	done

GoldenrodPokecenter1FTradeNoEggText:
	text "Lo siento. No"
	line "aceptamos HUEVOS."
	done

GoldenrodPokecenter1FTradeAbnormalText:
	text "Lo siento, pero tu"
	line "#MON no parece"

	para "muy normal. No"
	line "podemos aceptarlo."
	done

GoldenrodPokecenter1FTradeAlreadyHoldingPokemonText:
	text "¿Eh? ¿No tenemos"
	line "ya un #MON"
	cont "tuyo?"
	done

GoldenrodPokecenter1FRoomCheckText:
	text "Veremos las salas."

	para "Espera, por favor."
	done

GoldenrodPokecenter1FPartnerFoundText:
	text "Disculpa la"
	line "espera."

	para "Se ha encontrado"
	line "un compañero."
	done

GoldenrodPokecenter1FTradePokemonPartnerReceivedText:
	text "Es tu nuevo"
	line "compañero."

	para "Por favor, trátalo"
	line "con cariño."

	para "Esperamos volver a"
	line "verte."
	done

GoldenrodPokecenter1FTradePartyFullText:
	text "Oh, oh. Tu equipo"
	line "está al completo."

	para "Por favor, vuelve"
	line "cuando haya sitio"
	cont "en tu equipo."
	done

GoldenrodPokecenter1FTradePokemonReturnedPromptText:
	text "Es una pena, pero"
	line "nadie se ha"

	para "presentado para"
	line "ser tu compañero."

	para "¿Quieres recuperar"
	line "tu #MON?"
	done

GoldenrodPokecenter1FTradePokemonReturnedAcceptText:
	text "Te hemos devuelto"
	line "tu #MON."
	done

GoldenrodPokecenter1FTradeLonelyPokemonText:
	text "Es una pena, pero"
	line "nadie se ha"

	para "presentado para"
	line "ser tu compañero."

	para "Tenemos tu #MON"
	line "desde hace mucho."

	para "Por ello, se"
	line "siente solo."

	para "Lo siento, pero"
	line "debemos"
	cont "devolvértelo."
	done

GoldenrodPokecenter1FTradeLonelyPokemonGoodbyeText:
	text "¡Vuelve siempre"
	line "que quieras!"
	done

GoldenrodPokecenter1FTradeContinueHoldingText:
	text "Bien. Seguiremos"
	line "teniendo tu"

	para "#MON con"
	line "nosotros."
	done

GoldenrodPokecenter1FTradeTooSoonText:
	text "¿Eh? Dejaste tu"
	line "#MON con"

	para "nosotros hace muy"
	line "poco."

	para "Por favor, vuelve"
	line "más tarde."
	done

GoldenrodPokecenter1FTradeSaveText:
	text "Vamos a GUARDAR"
	line "antes de conectar"
	cont "con el CENTRO."
	done

GoldenrodPokecenter1FTradeWhichPokemonText:
	text "¿Qué #MON"
	line "quieres cambiar?"
	done

GoldenrodPokecenter1FTradeCancelledText:
	text "Lo siento, pero"
	line "debemos cancelar"
	cont "el intercambio."
	done

GoldenrodPokecenter1FEggTicketOwnedText:
	text "¡Oh!"

	para "¡Veo que tienes un"
	line "TICKET HUEVO!"

	para "¡Es un cupón para"
	line "gente especial que"

	para "puede cambiarse"
	line "por un #MON"
	cont "especial!"
	done

GoldenrodPokecenter1FTradeEggTicketExplanationText:
	text "Déjame darte una"
	line "pequeña"
	cont "explicación."

	para "Los cambios hechos"
	line "en el CENTRO DE"

	para "CAMBIO se hacen"
	line "entre dos entrena-"
	cont "dores que no se"
	line "conocen."

	para "Por eso, puede que"
	line "lleve tiempo."

	para "De todas formas,"
	line "tienes un HUEVO"
	cont "RARO."

	para "Enseguida lo"
	line "recibirás."

	para "Por favor, elige"
	line "una de las salas"

	para "del CENTRO para"
	line "que podamos"

	para "enviarte el"
	line "HUEVO RARO."
	done

GoldenrodPokecenter1FEggTicketPleaseWaitText:
	text "Por favor, espera"
	line "un momento."
	done

GoldenrodPokecenter1FEggTicketReceivedText:
	text "Gracias por"
	line "esperar."

	para "Hemos recibido tu"
	line "HUEVO RARO."

	para "¡Aquí lo tienes!"

	para "Por favor, cuídalo"
	line "con cariño."
	done

GoldenrodPokecenter1FEggTicketNotRunningText:
	text "Lo siento mucho."

	para "El servicio de"
	line "intercambio TICKET"

	para "HUEVO no funciona"
	line "ahora."
	done

GoldenrodPokecenter1FNewsMachineText:
	text "Es una MÁQUINA de"
	line "NOTICIAS #MON."
	done

GoldenrodPokecenter1FNewsMachineWhatWillYouDoText:
	text "¿Qué deseas hacer?"
	done

GoldenrodPokecenter1FNewsMachineExplanationText:
	text "Las NOTICIAS"
	line "#MON se"

	para "obtienen de los"
	line "archivos GUARDADOS"

	para "de entrenadores"
	cont "#MON."

	para "Cuando leas las"
	line "NOTICIAS, tu"

	para "archivo GUARDADO"
	line "será enviado."

	para "El archivo de"
	line "datos GUARDADOS"

	para "contiene tu"
	line "progreso y tu"
	cont "perfil de móvil."

	para "No se enviará tu"
	line "número de móvil."

	para "El contenido de"
	line "las NOTICIAS"

	para "variará dependien-"
	line "do de los archivos"

	para "GUARDADOS enviados"
	line "por ti y por otros"

	para "entrenadores"
	line "#MON."

	para "¡Es posible que"
	line "salgas en las"
	cont "NOTICIAS!"
	done

GoldenrodPokecenter1FNewsMachineGetNewsPromptText:
	text "¿Quieres leer las"
	line "NOTICIAS?"
	done

GoldenrodPokecenter1FNewsMachineGettingNewsWaitText:
	text "Leyendo las"
	line "últimas NOTICIAS…"
	cont "Espera, por favor."
	done

GoldenrodPokecenter1FNewsMachineNoOldNewsText:
	text "No hay NOTICIAS"
	line "antiguas…"
	done

GoldenrodPokecenter1FNewsMachineCorruptedText:
	text "Los datos de las"
	line "NOTICIAS están"
	cont "dañados."

	para "Por favor, baja"
	line "las NOTICIAS otra"
	cont "vez."
	done

GoldenrodPokecenter1FLinkReceptionistNotReadyText:
	text "Estamos en los"
	line "preparativos."

	para "Por favor, vuelve"
	line "más tarde."
	done

GoldenrodPokecenter1FNewsMachineSaveText:
	text "GUARDAREMOS tu"
	line "progreso antes de"

	para "poner en marcha la"
	line "MÁQUINA de las"
	cont "NOTICIAS."
	done

GoldenrodPokecenter1FMobileOffSuperNerdText:
	text "Uau, este CENTRO"
	line "#MON es enorme."

	para "Lo acaban de"
	line "construir. También"

	para "han instalado"
	line "muchas máquinas"
	cont "nuevas."
	done

GoldenrodPokecenter1FMobileOnSuperNerdText:
	text "¡Ideé algo nuevo"
	line "para el CENTRO DE"
	cont "CAMBIO!"

	para "¡Equipo a PIDGEY"
	line "con una CARTA y"

	para "después preparo el"
	line "intercambio con"
	cont "otro #MON!"

	para "¡Si todo el mundo"
	line "lo hiciera, la"

	para "CARTA llegaría a"
	line "todo tipo de"
	cont "gente!"

	para "¡Lo llamo CARTA"
	line "PIDGEY!"

	para "¡Si se vuelve"
	line "popular, voy a"

	para "hacer un montón de"
	line "nuevos amigos!"
	done

GoldenrodPokecenter1FMobileOffLassText:
	text "Se dice que puedes"
	line "cambiar #MON"

	para "hasta con"
	line "desconocidos."

	para "Pero todavía están"
	line "con preparativos."
	done

GoldenrodPokecenter1FMobileOnLassText1:
	text "Una chica que no"
	line "conozco me envió"

	para "su HOPPIP."
	line "Deberías cambiar"

	para "un #MON por"
	line "otro que quieras."
	done

GoldenrodPokecenter1FMobileOnLassText2:
	text "¡Recibí un HOPPIP"
	line "hembra, pero se"
	cont "llama STANLEY!"

	para "¡Así se llama mi"
	line "padre!"
	done

GoldenrodPokecenter1FMobileOffYoungsterText:
	text "¿Qué es la MÁQUINA"
	line "de las NOTICIAS?"

	para "¿Recoge noticias"
	line "de un área más"

	para "amplia que la"
	line "radio?"
	done

GoldenrodPokecenter1FMobileOffTeacherText:
	text "El CENTRO #COM"
	line "se enlazará con"

	para "los otros CENTROS"
	line "#MON por"

	para "medio de una red"
	line "inalámbrica."

	para "Lo que significa"
	line "que podré conec-"
	cont "tarme con todo"
	line "tipo de gente."
	done

GoldenrodPokecenter1FMobileOffRockerText:
	text "Las máquinas no"
	line "están en uso"
	cont "todavía."

	para "Aunque mola venir"
	line "a un sitio tan"

	para "chulo antes que"
	line "nadie."
	done

GoldenrodPokecenter1FMobileOnYoungsterText:
	text "Mi amigo salió en"
	line "las NOTICIAS hace"

	para "poco. ¡No me lo"
	line "podía creer!"
	done

GoldenrodPokecenter1FMobileOnTeacherText:
	text "¡No puedo dejar de"
	line "leer las últimas"
	cont "NOTICIAS!"
	done

GoldenrodPokecenter1FMobileOnRockerText:
	text "Si aparezco en las"
	line "NOTICIAS y me hago"

	para "famoso, supongo"
	line "que me adorarán."

	para "Estoy tramando"
	line "cómo podría salir"
	cont "en las NOTICIAS…"
	done

GoldenrodPokecenter1FGameboyKidText:
	text "En el COLISEO de"
	line "arriba se lucha"
	cont "enlazado."

	para "Los récords se"
	line "apuntan en la"

	para "pared, así que no"
	line "puedo perder."
	done

GoldenrodPokecenter1FMobileOffGrampsText:
	text "Vine por aquí"
	line "cuando me enteré"

	para "de que el CENTRO"
	line "#MON de TRIGAL"

	para "tenía máquinas"
	line "nuevas que nadie"
	cont "había visto antes."

	para "Pero parece que"
	line "siguen ocupados"

	para "con todos los"
	line "preparativos…"
	done

GoldenrodPokecenter1FMobileOnGrampsText:
	text "¡Sólo de ver todas"
	line "estas cosas nuevas"

	para "me siento mucho"
	line "más joven!"
	done

GoldenrodPokecenter1FLassText:
	text "Un #MON de"
	line "nivel superior no"
	cont "siempre gana."

	para "Aún así, su tipo"
	line "puede tener alguna"
	cont "desventaja."

	para "No creo que haya"
	line "un único #MON"

	para "que sea el más"
	line "fuerte."
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, ¿no?"

	para "¡Felicidades!"

	para "¡Estamos de"
	line "promoción, hemos"

	para "recibido una GS"
	line "BALL para ti!"

	para "¡Por favor,"
	line "acéptala!"
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText:
	text "¡Vuelve cuando"
	line "quieras!"
	done

GoldenrodPokecenter1FInfoSignText:
	text "CENTRO #COM"
	line "PB INFORMACIÓN"

	para "Izquierda:"
	line "ADMINISTRACIÓN"

	para "Centro:"
	line "CENTRO DE CAMBIO"

	para "Derecha:"
	line "NOTICIAS #MON"
	done

GoldenrodPokecenter1FNewsMachineNotReadyText:
	text "¡Es una MÁQUINA de"
	line "NOTICIAS #MON!"

	para "No está operativa"
	line "todavía…"
	done

GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText:
	text "¡Llevas mucho peso"
	line "en la mochila!"

	para "¡Oye! ¿No tendrás"
	line "algo llamado"
	cont "CARTA EÓN?"

	para "Mi hija está"
	line "buscando una."

	para "Puedes darme una,"
	line "¿verdad?"
	done

GoldenrodPokecenter1FAskGiveAwayAnEonMailText:
	text "¿Entregas una"
	line "CARTA EÓN?"
	done

GoldenrodPokecenter1FPokefanFThisIsForYouText:
	text "¡Oh, genial!"
	line "¡Gracias, cariño!"

	para "¡Toma esto en"
	line "agradecimiento!"
	done

GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText:
	text "¡A mi hija le"
	line "encantará!"
	done

GoldenrodPokecenter1FPokefanFTooBadText:
	text "¿Oh? ¿No tienes?"
	line "Qué lástima…"
	done

GoldenrodPokecenter1FPokefanFAnotherTimeThenText:
	text "Oh… Bueno, en otra"
	line "ocasión será."
	done

GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText:
	text "<PLAYER> entrega"
	line "la CARTA EÓN."
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15
	warp_event  0,  6, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 1
	warp_event  0, 15, POKECENTER_2F, 1

	db 2 ; coord events
	coord_event  6, 15, SCENE_DEFAULT, GoldenrodPokecenter1F_GSBallSceneLeft
	coord_event  7, 15, SCENE_DEFAULT, GoldenrodPokecenter1F_GSBallSceneRight

	db 16 ; bg events
	bg_event 24,  5, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript ; 57666
	bg_event 24,  6, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 24,  7, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 24,  9, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 24, 10, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 25, 11, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 26, 11, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 27, 11, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 28, 11, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 29,  5, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 29,  6, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 29,  7, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 29,  8, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 29,  9, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event 29, 10, BGEVENT_READ, GoldenrodPokecenter1F_NewsMachineScript
	bg_event  2,  9, BGEVENT_READ, GoldenrodPokecenter1FInfoSign

	db 11 ; 576B6 ; 5 ; object events sprite, y, x, movedata , ?, ?, ?, pal, ?, pointer, ?, ?
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	 ; 576C4
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FTradeCornerAttendantScript, -1
	 ; boy left of trade corner 576D1
	object_event 13,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 16, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FSuperNerdScript, -1
	 ; girl in front of trade corner 576DE
	object_event 18,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLass2Script, -1
	 ; boy left of news machine 576EB
	object_event 23, 08, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FYoungsterScript, -1
	 ; girl right of news machine 576F8
	object_event 30, 09, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FTeacherScript, -1
	 ; boy right of news machine 57705
	object_event 30, 05, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FRockerScript, -1
	 ; 57712
	object_event 11, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	 ; old man 5771F
	object_event 19, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGrampsScript, -1
	 ; 5772C
	object_event  4, 11, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
	object_event 15, 12, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
