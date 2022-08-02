_FruitBearingTreeText::
	text "Es un árbol"
	line "frutal."
	done

_HeyItsFruitText::
	text "¡Oye! ¡Mira qué"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ObtainedFruitText::
	text "¡Obtuvo"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_FruitPackIsFullText::
	text "Pero la MOCHILA"
	line "está llena…"
	done

_NothingHereText::
	text "Aquí no hay"
	line "nada…"
	done

_WhichApricornText::
	text "¿Qué BONGURI debo"
	line "utilizar?"
	done

_HowManyShouldIMakeText::
	text "¿Cuántas debo"
	line "hacer?"
	done

_RecoveredSomeHPText::
	text "¡@"
	text_ram wStringBuffer1
	text_start
	line "recuperó @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text " PS!"
	done

_CuredOfPoisonText::
	text_ram wStringBuffer1
	text_start
	line "curado del veneno."
	done

_RidOfParalysisText::
	text_ram wStringBuffer1
	text_start
	line "curado de"
	cont "parálisis."
	done

_BurnWasHealedText::
	text_ram wStringBuffer1
	text_start
	line "curado de"
	cont "quemaduras."
	done

_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "fue descongelado."
	done

_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "se despertó."
	done

_HealthReturnedText::
	text_ram wStringBuffer1
	text_start
	line "recuperó la salud."
	done

_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "es revitalizado."
	done

_GrewToLevelText::
	text_ram wStringBuffer1
	text " grew to"
	line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79 ; plays SFX_DEX_FANFARE_50_79, identical to SFX_LEVEL_UP
	text_waitbutton
	text_end

	text_end ; unused

_CameToItsSensesText::
	text_ram wStringBuffer1
	text_start
	line "recuperó el"
	cont "conocimiento."
	done

_EnterNewPasscodeText::
	text "Por favor, mete"
	line "cualquier número"
	cont "de 4 cifras."
	done

_ConfirmPasscodeText::
	text "Introduce el mismo"
	line "número para"
	cont "confirmar."
	done

_PasscodesNotSameText::
	text "Ése no es el"
	line "mismo número."
	done

_PasscodeSetText::
	text "PASSWORD"
	line "fijado."

	para "Introduce este"
	line "número la próxima"

	para "vez para abrir el"
	line "TARJETERO."
	done

_FourZerosInvalidText::
	text "¡0000 no es"
	line "válido!"
	done

_EnterPasscodeText::
	text "Introduce el"
	next "CÓDIGO del"
	cont "TARJETERO."
	done

_IncorrectPasscodeText::
	text "¡CÓDIGO"
	line "incorrecto!"
	done

_CardFolderOpenText::
	text "TARJETERO"
	line "abierto.@"
	text_end

_OakTimeText1::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "¡Zzz…! ¿Qué…?"
	line "¡Me despertaste!"

	para "¿Te importaría"
	line "decirme la hora?"
	prompt

_OakTimeText2::
	text "¿Qué hora es?"
	done

_OakTimeText3::
	text "What?@"
	text_end

_OakTimeText4::
	text "?"
	done

_OakTimeText5::
	text "¿Cuántos minutos?"
	done

_OakTimeText6::
	text "Whoa!@"
	text_end

_OakTimeText7::
	text "?"
	done

_OakTimeText8::
	text "!"
	line "¡Me he"
	cont "quedado dormido!"
	done

_OakTimeText11::
	text "!"
	line "¡Caray! ¡Me he"
	cont "quedado dormido!"
	done

_OakTimeText12::
	text "!"
	line "¡No me extraña que"
	cont "esté tan oscuro!"
	done

_OakTimeText13::
	text "¿Qué día es hoy?"
	done

_OakTimeText14::
	text ", ¿vale?"
	done

UnknownText_0x1bc384::
	text "No hay nada"
	line "conectado."
	done

UnknownText_0x1bc3a1::
	text "Comprobando adap-"
	line "tador del móvil."
	done

UnknownText_0x1bc3bc::
	text "Comprobando adap-"
	line "tador CDMA."
	done

UnknownText_0x1bc3d1::
	text "Comprobando adap-"
	line "tador DOCOMO PHS."
	done

UnknownText_0x1bc3ec::
	text "Comprobando adap-"
	line "tador DDI PHS."
	done

UnknownText_0x1bc404::
	text "Comprobando adap-"
	line "tador batallas mó-"
	cont "viles ilimitadas."
	done

UnknownText_0x1bc42c::
	text "La contraseña es:"
	line ""
	done

UnknownText_0x1bc43f::
	text "¿Es correcto?"
	done

UnknownText_0x1bc44c::
	text "Teclea el"
	line "N.º ID."
	done

UnknownText_0x1bc45e::
	text "Introduce la"
	line "cantidad."
	done

_NothingToChooseText::
	text "No hay nada que"
	line "puedas elegir."
	prompt

_WhichSidePutOnText::
	text "¿A qué lado lo"
	line "quieres poner?"
	done

_WhichSidePutAwayText::
	text "¿De qué lado lo"
	line "quieres quitar?"
	done

_PutAwayTheDecoText::
	text "Se guardó"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_NothingToPutAwayText::
	text "No hay nada que"
	line "puedas guardar."
	prompt

_SetUpTheDecoText::
	text "Se colocó"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PutAwayAndSetUpText::
	text "Se guardó"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "y se colocó"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

_AlreadySetUpText::
	text "Ya está ahí."
	prompt

_LookTownMapText::
	text "MAPA del PUEBLO."
	done

_LookPikachuPosterText::
	text "Un póster de un"
	line "simpático PIKACHU."
	done

_LookClefairyPosterText::
	text "Un póster de un"
	line "gracioso CLEFAIRY."
	done

_LookJigglypuffPosterText::
	text "Un póster de un"
	line "bonito JIGGLYPUFF."
	done

_LookAdorableDecoText::
	text "¡Qué guay es este"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_LookGiantDecoText::
	text "¡Un muñeco de"
	line "peluche muy mono!"
	done

_MomShoppingText1::
	text "¡Hola, <PLAYER>!"
	line "¿Qué tal?"
	prompt

_MomShoppingText2::
	text "Vi algo muy útil"
	line "en la tienda y"
	prompt

_MomShoppingText3::
	text "lo compré con tu"
	line "dinero. ¡Perdona!"
	prompt

_MomShoppingText4::
	text "Está en tu PC."
	line "¡Te gustará!"
	done

_MomShoppingText5::
	text "Cuando salí de"
	line "compras, vi este"
	cont "adorable muñeco y"
	prompt

_MomShoppingText6::
	text "ahora está en tu"
	line "cuarto. ¡Ya verás!"
	done

_TradingText1::
	text_ram wPlayerTrademonSpeciesName
	text_start
	line "fue enviado a"
	cont "@"
	text_ram wOTTrademonSenderName
	text "."
	done

_TradingText2::
	text_start
	done

_TradingText3::
	text_ram wOTTrademonSenderName
	text_start
	line "dice adiós a"
	done

_TradingText4::
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText5::
	text "Cuida bien de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText6::
	text "Por @"
	text_ram wPlayerTrademonSpeciesName
	text_start
	line "de @"
	text_ram wPlayerTrademonSenderName
	text ","
	done

_TradingText7::
	text_ram wOTTrademonSenderName
	text_start
	line "envía a"
	cont "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText8::
	text_ram wOTTrademonSenderName
	text_start
	line "cambiará a"
	cont "@"
	text_ram wOTTrademonSpeciesName
	text_end

	text_end ; unused

_TradingText9::
	text "por @"
	text_ram wPlayerTrademonSpeciesName
	text_start
	line "de @"
	text_ram wPlayerTrademonSenderName
	text "."
	done

_TradingText10::
	text_ram wPlayerTrademonSenderName
	text_start
	line "cambiará a"
	cont "@"
	text_ram wPlayerTrademonSpeciesName
	text_end

	text_end ; unused

_TradingText11::
	text "por @"
	text_ram wOTTrademonSpeciesName
	text_start
	line "de @"
	text_ram wOTTrademonSenderName
	text "."
	done

_TradingText12::
	text_ram wPlayerTrademonSpeciesName
	text_start
	line "de @"
	text_ram wPlayerTrademonSenderName
	text_start
	cont "cambiado…"
	done

_TradingText13::
	text "Cuida bien de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText14::
	text_ram wPlayerTrademonSpeciesName
	text_start
	line "de @"
	text_ram wPlayerTrademonSenderName
	text_start
	cont "cambiado…"
	done

_TradingText15::
	text "Cuida bien de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TradingText16::
	text "¡@"
	text_ram wOTTrademonSpeciesName
	text_start
	line "volvió!"
	done

; Oak's Pokémon Talk

_OPT_IntroText1::
	text_start
	line "ROSA: ¡LA HORA"
	done

_OPT_IntroText2::
	text_start
	line "del PROF. OAK!"
	done

_OPT_IntroText3::
	text_start
	line "¡Conmigo, ROSA!"
	done

_OPT_OakText1::
	text_start
	line "OAK: @"
	text_ram wMonOrItemNameBuffer
	text_end

	text_end ; unused

_OPT_OakText2::
	text_start
	line "puede aparecer en"
	done

_OPT_OakText3::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_OPT_MaryText1::
	text_start
	line "ROSA: @"
	text_ram wStringBuffer1
	text_end
	done

OPT_SweetAdorably::
	text_start
	line "dulce y adorable…"
	done

OPT_WigglySlickly::
	text_start
	line "hábil y ágil…"
	done

OPT_AptlyNamed::
	text_start
	line "ejemplar y"
	done

OPT_UndeniablyKindOf::
	text_start
	line "muy especial…"
	done

OPT_Unbearably::
	text_start
	line "alucinante…"
	done

OPT_WowImpressively::
	text_start
	line "impresionante…"
	done

OPT_AlmostPoisonously::
	text_start
	line "es demasiado…"
	done

OPT_Sensually::
	text_start
	line "irresistible…"
	done

OPT_Mischievously::
	text_start
	line "travieso…"
	done

OPT_Topically::
	text_start
	line "siempre de moda…"
	done

OPT_Addictively::
	text_start
	line "carismático…"
	done

OPT_LooksInWater::
	text_start
	line "de lo más acuático"
	done

OPT_EvolutionMustBe::
	text_start
	line "evoluciona rápido…"
	done

OPT_Provocatively::
	text_start
	line "sorprendente…"
	done

OPT_FlippedOut::
	text_start
	line "un pelín chiflado"
	done

OPT_HeartMeltingly::
	text_start
	line "enternecedor…"
	done

OPT_Cute::
	text_start
	line "precioso…"
	done

OPT_Weird::
	text_start
	line "fuera de lo común"
	done

OPT_Pleasant::
	text_start
	line "agradable…"
	done

OPT_BoldSortOf::
	text_start
	line "valiente…"
	done

OPT_Frightening::
	text_start
	line "asusta un poco…"
	done

OPT_SuaveDebonair::
	text_start
	line "gallardo y cortés"
	done

OPT_Powerful::
	text_start
	line "fuerte…"
	done

OPT_Exciting::
	text_start
	line "apasionante…"
	done

OPT_Groovy::
	text_start
	line "¡mola!"
	done

OPT_Inspiring::
	text_start
	line "todo un ejemplo…"
	done

OPT_Friendly::
	text_start
	line "amigable…"
	done

OPT_HotHotHot::
	text_start
	line "es lo más…"
	done

OPT_Stimulating::
	text_start
	line "estimulante…"
	done

OPT_Guarded::
	text_start
	line "prudente…"
	done

OPT_Lovely::
	text_start
	line "fascinante…"
	done

OPT_Speedy::
	text_start
	line "veloz…"
	done

_OPT_PokemonChannelText::
	text "#MON"
	done

_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

; Pokémon Music Channel / Pokémusic

_BenIntroText1::
	text_start
	line "NARDO: ¡CANAL DE"
	done

_BenIntroText2::
	text_start
	line "MÚSICA #MON!"
	done

_BenIntroText3::
	text_start
	line "¡Soy yo, DJ NARDO!"
	done

_FernIntroText1::
	text_start
	line "FLORO: #MÚSICA"
	done

_FernIntroText2::
	text_start
	line "¡Con el DJ FLORO!"
	done

_BenFernText1::
	text_start
	line "Hoy es @"
	text_today
	text ","
	done

_BenFernText2A::
	text_start
	line "disfrutemos con"
	done

_BenFernText2B::
	text_start
	line "relajémonos con"
	done

_BenFernText3A::
	text_start
	line "la Marcha #MON."
	done

_BenFernText3B::
	text_start
	line "la Nana #MON."
	done

; Lucky Channel

_LC_Text1::
	text_start
	line "SALVA: ¡Hola!"
	done

_LC_Text2::
	text_start
	line "¿Qué tal va eso?"
	done

_LC_Text3::
	text_start
	line "Ya estéis animados"
	done

_LC_Text4::
	text_start
	line "o desanimados,"
	done

_LC_Text5::
	text_start
	line "¡no os perdáis el"
	done

_LC_Text6::
	text_start
	line "N.º DE LA SUERTE!"
	done

_LC_Text7::
	text_start
	line "¡El número de esta"
	done

_LC_Text8::
	text_start
	line "Number is @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

_LC_Text9::
	text_start
	line "¡Lo repetiré!"
	done

_LC_Text10::
	text_start
	line "¡Si coincide, ve"
	done

_LC_Text11::
	text_start
	line "a la TORRE RADIO!"
	done

_LC_DragText1::
	text_start
	line "Si me repito,"
	done

_LC_DragText2::
	text_start
	line "se hace pesado…"
	done

; Places and People

_PnP_Text1::
	text_start
	line "¡LUGARES Y GENTE!"
	done

_PnP_Text2::
	text_start
	line "¡Presentado por"
	done

_PnP_Text3::
	text_start
	line "mí, DJ LILA!"
	done

_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

_PnP_cute::
	text_start
	line "me encanta."
	done

_PnP_lazy::
	text_start
	line "no mola."
	done

_PnP_happy::
	text_start
	line "es alegre."
	done

_PnP_noisy::
	text_start
	line "transmite energía."
	done

_PnP_precocious::
	text_start
	line "es inigualable."
	done

_PnP_bold::
	text_start
	line "es inimitable."
	done

_PnP_picky::
	text_start
	line "es muy especial."
	done

_PnP_sortofok::
	text_start
	line "es interesante."
	done

_PnP_soso::
	text_start
	line "debería molar."
	done

_PnP_great::
	text_start
	line "es una maravilla."
	done

_PnP_mytype::
	text_start
	line "me gusta."
	done

_PnP_cool::
	text_start
	line "es genial, ¿no?"
	done

_PnP_inspiring::
	text_start
	line "te guía."
	done

_PnP_weird::
	text_start
	line "es poco común."
	done

_PnP_rightforme::
	text_start
	line "encaja conmigo."
	done

_PnP_odd::
	text_start
	line "es excepcional."
	done

_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

_RocketRadioText1::
	text_start
	line "¡Ejem…, somos"
	done

_RocketRadioText2::
	text_start
	line "el TEAM ROCKET!"
	done

_RocketRadioText3::
	text_start
	line "¡Tras tres años"
	done

_RocketRadioText4::
	text_start
	line "de preparativos,"
	done

_RocketRadioText5::
	text_start
	line "hemos resurgido"
	done

_RocketRadioText6::
	text_start
	line "de las cenizas!"
	done

_RocketRadioText7::
	text_start
	line "¡GIOVANNI! @"
	text_pause
	text_end
	done

_RocketRadioText8::
	text_start
	line "¿Oíste? Lo hicimos@"
	text_pause
	text_end
	done

_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "¿Y nuestro jefe?"
	line ""
	done

_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "¿Nos escucha?"
	done

_BuenaRadioText1::
	text_start
	line "BUENA: Aquí BUENA…"
	done

_BuenaRadioText2::
	text_start
	line "¡El código de hoy!"
	done

_BuenaRadioText3::
	text_start
	line "A ver… ¡Es"
	done

_BuenaRadioText4::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_BuenaRadioText5::
	text_start
	line "¡No lo olvidéis!"
	done

_BuenaRadioText6::
	text_start
	line "¡Estoy en TRIGAL,"
	done

_BuenaRadioText7::
	text_start
	line "en la TORRE RADIO!"
	done

_BuenaRadioMidnightText1::
	text_start
	line "BUENA: Oh…"
	done

_BuenaRadioMidnightText2::
	text_start
	line "¡Es medianoche!"
	done

_BuenaRadioMidnightText3::
	text_start
	line "¡Debo acabar!"
	done

_BuenaRadioMidnightText4::
	text_start
	line "¡Gracias por"
	done

_BuenaRadioMidnightText5::
	text_start
	line "sintonizarnos! ¡No"
	done

_BuenaRadioMidnightText6::
	text_start
	line "os acostéis muy"
	done

_BuenaRadioMidnightText7::
	text_start
	line "tarde! ¡Con voso-"
	done

_BuenaRadioMidnightText8::
	text_start
	line "tros, DJ BUENA!"
	done

_BuenaRadioMidnightText9::
	text "¡Me voy!"
	done

_BuenaRadioMidnightText10::
	text "<……> <……>"
	done

_BuenaOffTheAirText::
	text_start
	line ""
	done

Text_EnemyWithdrew::
	text "<ENEMY>"
	line "retiró a"
	cont "@"
	text_ram wEnemyMonNick
	text "."
	prompt

Text_EnemyUsedOn::
	text "<ENEMY>"
	line "utilizó"

	para "@"
	text_ram wMonOrItemNameBuffer
	text_start
	line "con"
	cont "@"
	text_ram wEnemyMonNick
	text "."
	prompt

Text_ThatCantBeUsedRightNow::
	text "No puedes usarlo"
	line "en este momento."
	prompt

Text_ThatItemCantBePutInThePack::
	text "No se puede meter"
	line "en la MOCHILA."
	done

Text_TheItemWasPutInThePack::
	text_ram wStringBuffer1
	text_start
	line "fue metido en la"
	cont "MOCHILA."
	done

Text_RemainingTime::
	text "Tiempo restante"
	done

Text_YourMonsHPWasHealed::
	text "Recuperados los"
	line "PS de tu #MON."
	prompt

Text_Warping::
	text "Saltando…"
	done

UnknownText_0x1bd05e::
	text "¿Qué número"
	line "quieres cambiar?"
	done

UnknownText_0x1bd07f::
	text "¿Vas a jugar con"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

UnknownText_0x1bd09a::
	text "Necesitas dos"
	line "#MON para"
	cont "poder criarlos."
	prompt

Text_BreedingIsNotPossible::
	text "No es posible"
	line "criar."
	prompt

UnknownText_0x1bd0d8::
	text "The compatibility"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Should they breed?"
	done

UnknownText_0x1bd109::
	text "No hay HUEVO."
	line ""
	prompt

UnknownText_0x1bd11c::
	text "¡Se va a abrir!"
	prompt

UnknownText_0x1bd131::
	text "¿Evento de prueba"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text "?"
	done

UnknownText_0x1bd145::
	text "¡Comienzo!"
	done

UnknownText_0x1bd14d::
	text "¡Final!"
	done

UnknownText_0x1bd153::
	text "¡Para un chico!"
	done

UnknownText_0x1bd15f::
	text "¡Para una chica!"
	done

UnknownText_0x1bd16c::
	text "¡Esto no le inte-"
	line "resa a un chico!"
	done

UnknownText_0x1bd188::
	text "¡CAJA llena!"
	done

UnknownText_0x1bd19a::
	text "Ha llegado una"
	line "nueva TARJETA de"
	cont "@"
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1bd1ba::
	text "¿Pones la TARJETA"
	line "en el TARJETERO?"
	done

UnknownText_0x1bd1dd::
	text "La TARJETA de"
	line "@"
	text_ram wStringBuffer2
	text " ha"
	line "sido la n.º @"
	text_decimal wStringBuffer1, 1, 2
	text "."
	prompt

UnknownText_0x1bd201::
	text "Estableciendo"
	line "conexión."
	done

UnknownText_0x1bd211::
	text "Conexión"
	line "terminada."
	done

UnknownText_0x1bd223::
	text "Cerrando"
	line "conexión."
	done

UnknownText_0x1bd232::
	text "¿Eliminar el"
	line "límite de tiempo?"
	done

UnknownText_0x1bd249::
	text "Límite de tiempo"
	line "eliminado."
	done

UnknownText_0x1bd266::
	text "¿Qué paquete tomas"
	line "como error?"
	done

UnknownText_0x1bd286::
	text "Cambia @"
	text_ram wStringBuffer2
	text_start
	line "por @"
	text_ram wStringBuffer1
	text "<……> <……>"
	done

UnknownText_0x1bd2a0::
	text "¡Conseguida la"
	line "MEDALLA VOLTORB!"
	done

UnknownText_0x1bd2bc::
	text "¿Qué piso?"
	done

UnknownText_0x1bd2ca::
	text "PRESENTADOR:¡BIIP!"

	para "¡Fin del concurso!"
	done

UnknownText_0x1bd2e7::
	text "PRESENTADOR: ¡Se"
	line "acabó el concurso!"
	done

_RepelWoreOffText::
	text "Agotado el efecto"
	line "del REPELENTE."
	done

_PlayerFoundItemText::
	text "¡<PLAYER> encontró"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ButNoSpaceText::
	text "Pero a <PLAYER>"
	line "no le queda sitio."
	done

_JustSawSomeRareMonText::
	text "Acabo de ver un"
	line "@"
	text_ram wStringBuffer1
	text " raro en"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Te llamaré si veo"
	line "más #MON raros,"
	cont "¿vale?"
	prompt

_SavingRecordText::
	text "GUARDANDO… NO"
	line "APAGAR LA CONSOLA."
	done

_ReceiveItemText::
	text_ram wPlayerName
	text " received"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_waitbutton
	text_end

	text_end ; unused

_NoCoinsText::
	text "No tienes fichas."
	prompt

_NoCoinCaseText::
	text "No tienes ningún"
	line "MONEDERO."
	prompt

UnknownText_0x1bd407::
	text "¡Bien, conecta el"
	line "cable Game Link!"
	prompt

UnknownText_0x1bd429::
	text "<PLAYER>"
	line "cambió a"

	para "@"
	text_ram wStringBuffer2
	text_start
	line "por"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text ".@"
	text_end

UnknownText_0x1bd445::
	sound_dex_fanfare_80_109
	text_pause
	text_end

	text_end ; unused

_NPCTradeIntroText1::
	text "Colecciono"
	line "#MON."

	para "¿Tienes un"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "¿Quieres cambiarlo"
	line "por mi"
	cont "@"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText1::
	text "¿No quieres"
	line "cambiarlo? ¡Bah!"
	done

_NPCTradeWrongText1::
	text "¿Qué? Ése no es"
	line "@"
	text_ram wStringBuffer1
	text "."
	cont "¡Qué chasco…!"
	done

_NPCTradeCompleteText1::
	text "¡Sí! ¡Conseguí un"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "¡Gracias!"
	done

_NPCTradeAFterText1::
	text "Hola, ¿cómo está"
	line "mi @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeIntroText2::
	text "Estoy buscando a"
	line "este #MON."

	para "Si tuvieras un"
	line "@"
	text_ram wStringBuffer1
	text ","

	para "¿lo cambiarías por"
	line "mi @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText2::
	text "¿Tú tampoco"
	line "tienes uno?"

	para "¡Pues vaya! ¡Qué"
	line "decepción…!"
	done

_NPCTradeWrongText2::
	text "¿No tienes un"
	line "@"
	text_ram wStringBuffer1
	text "?"
	cont "¡Qué lástima!"
	done

_NPCTradeCompleteText2::
	text "¡Genial! ¡Gracias!"

	para "Por fin conseguí"
	line "un @"
	text_ram wStringBuffer1
	text "."
	done

_NPCTradeAfterText2::
	text "¡El @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "que me cambiaste"
	cont "está fenomenal!"
	done

_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text " es"
	line "genial, pero no lo"

	para "tengo. ¿Tienes un"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "¿Quieres cambiarlo"
	line "por mi"
	cont "@"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText3::
	text "¿No quieres"
	line "cambiarlo? ¡Vaya!"
	done

_NPCTradeWrongText3::
	text "Ése no es un"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Cámbiamelo si"
	line "consigues uno."
	done

_NPCTradeCompleteText3::
	text "¡Uau! ¡Gracias!"
	line "¡Siempre quise un"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

_NPCTradeAfterText3::
	text "¿Cómo está el"
	line "@"
	text_ram wStringBuffer2
	text_start
	cont "que te cambié?"

	para "¡Tu @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "es tan mono!"
	done

_NPCTradeCompleteText4::
	text "¿Eh? ¿Qué pasó?"
	done

_NPCTradeAfterText4::
	text "Intercambiar es"
	line "tan raro…"

	para "Todavía tengo mu-"
	line "cho que aprender."
	done

_MomLeavingText1::
	text "¡Uau! Ese #MON"
	line "es estupendo."

	para "¿De dónde lo has"
	line "sacado?"

	para "…"

	para "Así que te marchas"
	line "de aventura…"

	para "Pues cuenta con"
	line "mi ayuda."

	para "Pero, ¿cómo podría"
	line "ayudarte?"

	para "¡Ya lo sé! Cuidaré"
	line "de tu dinero."

	para "En un viaje largo"
	line "necesitas dinero."

	para "¿Te guardo algo"
	line "de dinero?"
	done

_MomLeavingText2::
	text "Vale, yo cuidaré"
	line "de tu dinero."

	para "<……><……><……>"
	prompt

_MomLeavingText3::
	text "Ten cuidado."

	para "Los #MON son"
	line "tus amigos. Debéis"
	cont "ser un equipo."

	para "¡Adelante!"
	done

_MomVisitingText1::
	text "¡Hola, hola!"
	line "Lo estás haciendo"
	cont "muy bien."

	para "He ordenado tu"
	line "habitación."

	para "¿Quieres saber"
	line "de tu dinero?"
	done

_MomVisitingText2::
	text "¿Qué quieres"
	line "hacer?"
	done

_MomVisitingText3::
	text "¿Cuánto dinero"
	line "quieres ahorrar?"
	done

_MomVisitingText4::
	text "¿Cuánto dinero"
	line "quieres coger?"
	done

_MomVisitingText5::
	text "¿Quieres ahorrar"
	line "algo de dinero?"
	done

_MomVisitingText6::
	text "No has ahorrado"
	line "tanto dinero."
	prompt

_MomVisitingText7::
	text "No puedes coger"
	line "tanto dinero."
	prompt

_MomVisitingText8::
	text "No tienes tanto"
	line "dinero."
	prompt

_MomVisitingText9::
	text "No puedes guardar"
	line "tanto dinero."
	prompt

_MomVisitingText10::
	text "Yo te lo guardaré."
	line "¡Confía en mí!"

	para "¡<PLAYER>,"
	line "sigue así!"
	done

_MomVisitingText11::
	text "¡Tu dinero está"
	line "seguro! ¡Adelante!"
	done

_MomVisitingText12::
	text "¡<PLAYER>,"
	line "no te rindas!"
	done

_MomVisitingText13::
	text "Hazlo lo mejor"
	line "posible."
	done

_DaycareDummyText::
	text_start
	done

_DayCareManIntroText::
	text "Soy el ENCARGADO"
	line "de la GUARDERÍA."

	para "¿Quieres que"
	line "cuide un #MON?"
	done

_DayCareManOddEggText::
	text "Soy el ENCARGADO"
	line "de la GUARDERÍA."

	para "¿Sabes algo sobre"
	line "los HUEVOS?"

	para "Mi mujer y yo"
	line "estábamos cuidando"
	cont "unos #MON."

	para "¡Y de pronto"
	line "vimos un HUEVO!"

	para "¿No te parece"
	line "increíble?"

	para "¿Quieres que te"
	line "cuide un #MON?"
	done

_DayCareLadyIntroText::
	text "Soy la ENCARGADA"
	line "de la GUARDERÍA."

	para "¿Quieres que te"
	line "cuide un #MON?"
	done

_DayCareLadyOddEggText::
	text "Soy la ENCARGADA"
	line "de la GUARDERÍA."

	para "¿Sabes algo sobre"
	line "los HUEVOS?"

	para "Mi marido y yo"
	line "estábamos cuidando"
	cont "unos #MON."

	para "¡Y de pronto"
	line "vimos un HUEVO!"

	para "¿No te parece"
	line "increíble?"

	para "¿Quieres que te"
	line "cuide un #MON?"
	done

_WhatShouldIRaiseText::
	text "¿Cuál quieres"
	line "que cuide?"
	prompt

_OnlyOneMonText::
	text "¿Oh? Pero sólo"
	line "tienes un #MON."
	prompt

_CantRaiseEggText::
	text "Perdona, pero no"
	line "acepto HUEVOS."
	prompt

_RemoveMailText::
	text "Quita la CARTA y"
	line "vuelve a verme."
	prompt

_LastHealthyMonText::
	text "Si me lo das,"
	line "¿con quién vas a"
	cont "combatir?"
	prompt

_IllRaiseYourMonText::
	text "Vale. Cuidaré de"
	line "tu @"
	text_ram wStringBuffer1
	text "."
	prompt

_ComeBackLaterText::
	text "Vuelve a por él"
	line "más tarde."
	done

_AreWeGeniusesText::
	text "¿Somos geniales o"
	line "no? ¿Quieres ver a"
	cont "tu @"
	text_ram wStringBuffer1
	text "?"
	done

_YourMonHasGrownText::
	text "Tu @"
	text_ram wStringBuffer1
	text_start
	line "ha crecido mucho."

	para "En cuanto a su ni-"
	line "vel, ha subido @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "Recuperar a tu"
	line "#MON te"
	cont "costará @"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "¥."
	done

_PerfectHeresYourMonText::
	text "¡Perfecto! ¡Aquí"
	line "está tu #MON!"
	prompt

_GotBackMonText::
	text "<PLAYER> recogió"
	line "a @"
	text_ram wStringBuffer1
	text "."
	prompt

_BackAlreadyText::
	text "¿Ya de vuelta?"
	line "Tu @"
	text_ram wStringBuffer1
	text_start
	para "debería pasar más"
	line "tiempo aquí. Pero"

	para "recoger ahora a"
	line "tu #MON, te"
	cont "costará 100¥."
	done

_HaveNoRoomText::
	text "¡No tienes sitio"
	line "para él!"
	prompt

_DCNotEnoughMoneyText::
	text "No tienes"
	line "bastante dinero."
	prompt

_OhFineThenText::
	text "No hay problema."
	prompt

_ComeAgainText::
	text "Vuelve cuando"
	line "quieras."
	done

_NotYetText::
	text "Aún no…"
	done

_FoundAnEggText::
	text "¡Ah, eres tú!"

	para "Estábamos cuidando"
	line "de tus #MON y…"

	para "¡Menuda sorpresa"
	line "nos hemos llevado!"

	para "¡Tus #MON han"
	line "tenido un HUEVO!"

	para "No sabemos cómo ha"
	line "llegado ahí, pero"

	para "es de tus #MON."
	line "¿Lo quieres?"
	done

_ReceivedEggText::
	text "¡<PLAYER> recibió"
	line "el HUEVO!"
	done

_TakeGoodCareOfEggText::
	text "Cuídalo bien."
	done

_RefuseEggText::
	text "Cuidaré de él."
	line "¡Gracias!"
	done

_NoRoomForEggText::
	text "No tienes sitio en"
	line "tu equipo. Vuelve"
	cont "en otro momento."
	done

_WhichMonPhotoText::
	text "¿Qué #MON"
	line "te gustaría"
	cont "fotografiar?"
	prompt

_HoldOnText::
	text "Muy bien. Espera"
	line "un poco."
	prompt

_PrestoAllDoneText::
	text "¡Presto! Ya está."
	line "Aquí estaré."
	done
