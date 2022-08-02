_OakText6::
	text "¿Cómo has dicho"
	line "que te llamas?"
	prompt

_OakText7::
	text "<PLAYER>,"
	line "prepárate."

	para "Tu propia historia"
	line "#MON está a"
	cont "punto de empezar."

	para "Te divertirás y"
	line "te enfrentarás a"
	cont "duros desafíos."

	para "¡Te espera un"
	line "mundo de sueños y"

	para "aventuras con"
	line "#MON! ¡Vamos!"

	para "¡Nos vemos!"
	done

UnknownText_0x1c40e6::
	text "La hora del reloj"
	line "podría estar mal."

	para "Por favor, vuelve"
	line "a ponerlo en hora."
	prompt

UnknownText_0x1c411c::
	text "Cambia la hora con"
	line "el Panel Control."

	para "Confirmar: Botón A"
	line "Cancelar:  Botón B"
	done

UnknownText_0x1c415b::
	text "¿Es correcto?"
	done

UnknownText_0x1c4168::
	text "Reloj puesto en"
	line "hora otra vez."
	done

UnknownText_0x1c4183::
	text "Ha pasado mucho"
	line "tiempo. Por favor,"
	cont "vuelve a probar."
	prompt

UnknownText_0x1c41b1::
	text "Si cambias ese"
	line "#MON, no"
	cont "podrás luchar."
	prompt

UnknownText_0x1c41e6::
	text "¡El @"
	text_ram wStringBuffer1
	text_start
	line "de tu amigo/a no"
	cont "parece estar bien!"
	prompt

UnknownText_0x1c4212::
	text "¿Cambiar"
	line "@"
	text_ram wd004
	text_start
	cont "por @"
	text_ram wStringBuffer1
	text "?"
	done

UnknownText_0x1c422a::
	text "Para entrar en una"
	line "batalla móvil,"

	para "debes tener un"
	line "equipo de tres"
	cont "#MON."

	para "¿De acuerdo?"
	done

UnknownText_0x1c4275::
	text "¿Necesitas más"
	line "información acerca"

	para "de las batallas"
	line "móviles?"
	done

UnknownText_0x1c4298::
	text "Para una batalla"
	line "móvil, elige tres"
	cont "#MON."

	para "Sólo se pueden"
	line "jugar diez minutos"

	para "por día por cada"
	line "jugador conectado."

	para "Si una batalla no"
	line "se termina dentro"

	para "del límite de"
	line "tiempo, el jugador"

	para "con menos #MON"
	line "debilitados, gana."

	para "Si hay empate, el"
	line "equipo que haya"

	para "perdido menos PS,"
	line "gana."
	done

UnknownText_0x1c439c::
	text "El tiempo restante"
	line "de hoy es de"
	cont "@"
	text_decimal wStringBuffer2, 1, 2
	text " min."

	para "¿Quieres luchar?"
	done

UnknownText_0x1c43dc::
	text "Sólo quedan @"
	text_decimal wStringBuffer2, 1, 2
	text_start
	line "min. hoy."

	para "¿Quieres una lucha"
	line "rápida?"
	done

UnknownText_0x1c4419::
	text "¡Sólo queda 1 min."
	line "hoy!"

	para "¿Quieres entrar en"
	line "una batalla?"
	done

UnknownText_0x1c445a::
	text "¡Apenas dispones"
	line "de un minuto!"

	para "Por favor, intén-"
	line "talo mañana."
	done

UnknownText_0x1c449c::
	text "¿Lo intentas otra"
	line "vez con los mismos"
	cont "parámetros?"
	done

UnknownText_0x1c44c0::
	text "¡Apenas dispones"
	line "de un minuto!"
	done

UnknownText_0x1c44e7::
	text "Hoy no queda tiem-"
	line "po de conexión."
	done

UnknownText_0x1c4508::
	text "Elige tres #MON"
	line "para luchar."
	done

UnknownText_0x1c4525::
	text "Hoy quedan todavía"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text " min."
	done

UnknownText_0x1c454b::
	text "¿Quieres guardar"
	line "el juego?"
	done

UnknownText_0x1c456d::
	text "GUARDANDO… NO"
	line "APAGAR LA CONSOLA."
	done

UnknownText_0x1c4590::
	text "<PLAYER> guardó"
	line "el juego."
	done

UnknownText_0x1c45a3::
	text "Ya existe un"
	line "archivo guardado."
	cont "¿Sobrescribirlo?"
	done

UnknownText_0x1c45d9::
	text "Hay otro archivo"
	line "guardado."
	cont "¿Sobrescribirlo?"
	done

UnknownText_0x1c460d::
	text "¡El archivo"
	line "guardado está"
	cont "corrupto!"
	prompt

UnknownText_0x1c462a::
	text "Cuando cambies una"
	line "CAJA de #MON,"

	para "los datos se"
	line "guardarán. ¿Vale?"
	done

UnknownText_0x1c465f::
	text "Cuando muevas un"
	line "#MON, los datos"

	para "se guardarán."
	line "¿Estás de acuerdo?"
	done

UnknownText_0x1c4693::
	text "Se excedió el área"
	line "de guardar de la"
	cont "ventana."
	done

UnknownText_0x1c46b7::
	text "No hay ventanas"
	line "emergentes."
	done

UnknownText_0x1c46dc::
	text "¡Evento corrupto!"
	prompt

_ObjectEventText::
	text "Evento de objeto."
	done

UnknownText_0x1c46fc::
	text "Evento BG"
	done

UnknownText_0x1c4706::
	text "Coordenadas evento"
	done

UnknownText_0x1c4719::
	text "<PLAYER> recibió"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

UnknownText_0x1c472c::
	text "<PLAYER> puso"
	line "@"
	text_ram wStringBuffer1
	text " en"
	cont "@"
	text_ram wStringBuffer3
	text "."
	prompt

UnknownText_0x1c474b::
	text "La @"
	text_ram wStringBuffer3
	text_start
	line "está llena…"
	prompt

UnknownText_0x1c475f::
	text "He visto todo."
	line "Lo sé todo…"

	para "¡Ciertamente,"
	line "conozco tus"
	cont "#MON!"
	done

UnknownText_0x1c4797::
	text "¿Cómoooo? ¡No"
	line "puedo decir nada!"

	para "¿Cómo es posible"
	line "que no sepa esto?"
	done

UnknownText_0x1c47d4::
	text "Mmm… Veo que"
	line "conociste a"

	para "@"
	text_ram wSeerNickname
	text " aquí:"
	line "¡@"
	text_ram wSeerCaughtLocation
	text "!"
	prompt

UnknownText_0x1c47fa::
	text "¡Fue de"
	line "@"
	text_ram wSeerTimeOfDay
	text "!"

	para "¡Su nivel era @"
	text_ram wSeerCaughtLevelString
	text "!"

	para "¿Soy buena o no?"
	prompt

UnknownText_0x1c4837::
	text "Mmm… ¿@"
	text_ram wSeerNickname
	text_start
	line "te lo intercambió"
	cont "@"
	text_ram wSeerOTName
	text "?"

	para "¡@"
	text_ram wSeerOTName
	text " conoció"
	line "a @"
	text_ram wSeerNickname
	text " en"
	cont "@"
	text_ram wSeerCaughtLocation
	text "!"
	prompt

UnknownText_0x1c487f::
	text "¿Qué? ¡Increíble!"

	para "¡No entiendo el"
	line "porqué, pero eres"

	para "increíble!"
	line "Eres especial."

	para "No puedo decirte"
	line "dónde lo conocis-"
	cont "te, pero tenía"
	cont "el nivel @"
	text_ram wSeerCaughtLevelString
	text "."

	para "¿Soy buena o no?"
	prompt

UnknownText_0x1c491d::
	text "¡Eh!"

	para "¡Eso es un HUEVO!"

	para "Todavía no puedes"
	line "decir que le"
	cont "conoces…"
	done

UnknownText_0x1c4955::
	text "¡Fufufu! ¡Veo que"
	line "no has hecho nada!"
	done

UnknownText_0x1c497a::
	text "A propósito…"

	para "Estaría bien que"
	line "trataras a tus"

	para "#MON con un"
	line "poco más de"
	cont "cuidado."
	done

UnknownText_0x1c49c6::
	text "A propósito…"

	para "Parece que ha"
	line "crecido un poco."

	para "¡A @"
	text_ram wSeerNickname
	text_start
	line "se le ve más"
	cont "seguro!"
	done

UnknownText_0x1c4a21::
	text "A propósito…"

	para "@"
	text_ram wSeerNickname
	text " ha"
	line "crecido. Ha ganado"
	cont "mucha fuerza."
	done

UnknownText_0x1c4a5b::
	text "A propósito…"

	para "¡Ciertamente"
	line "es enorme!"

	para "Este @"
	text_ram wSeerNickname
	text_start
	line "debe de haber lu-"
	cont "chado en numerosos"
	cont "combates #MON."

	para "Se le ve muy"
	line "seguro."
	done

UnknownText_0x1c4ae5::
	text "A propósito…"

	para "Estoy impresionada"
	line "con tu dedicación."

	para "Hacía mucho desde"
	line "la última vez que"

	para "vi a un #MON"
	line "tan poderoso como"
	cont "este @"
	text_ram wSeerNickname
	text "."

	para "Estoy segura de"
	line "que ver luchar a"

	para "@"
	text_ram wSeerNickname
	text " debe de"
	line "ser emocionante."
	done

UnknownText_0x1c4b92::
	text "¡Enhorabuena!"
	line "¡Tu @"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

UnknownText_0x1c4baf::
	text_start

	para "evolucionó en"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

UnknownText_0x1c4bc5::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "no evolucionó!"
	prompt

UnknownText_0x1c4be3::
	text "¡@"
	text_ram wStringBuffer2
	text " está"
	line "evolucionando!"
	done

UnknownText_0x1c4bfd::
	text "¿Cuántas unidades?"
	done

UnknownText_0x1c4c08::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " unidad/es"
	line "de @"
	text_ram wStringBuffer2
	text_start
	cont "serán @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	done

UnknownText_0x1c4c28::
	text "Hola, joven."

	para "Vendo hierbas"
	line "medicinales."

	para "Son buenas, pero"
	line "un poco amargas."

	para "Quizá tus #MON"
	line "no las quieran."

	para "¡Je, je, je…!"
	done

UnknownText_0x1c4ca3::
	text "¿Cuántas unidades?"
	done

UnknownText_0x1c4cae::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " unidad/es"
	line "de @"
	text_ram wStringBuffer2
	text_start
	cont "serán @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	done

UnknownText_0x1c4cce::
	text "Gracias, joven."
	line "¡Je, je, je…!"
	done

UnknownText_0x1c4cea::
	text "¡Oh! Tu MOCHILA"
	line "está llena, joven."
	done

UnknownText_0x1c4d08::
	text "¡Je, je…! No"
	line "tienes ese dinero."
	done

UnknownText_0x1c4d2a::
	text "Vuelve otra vez."
	line "¡Je, je, je…!"
	done

UnknownText_0x1c4d47::
	text "¡Oye! ¿Quieres ver"
	line "unas gangas?"

	para "Vendo objetos que"
	line "nadie posee, pero"

	para "sólo un objeto de"
	line "cada tipo."
	done

UnknownText_0x1c4db0::
	text_ram wStringBuffer2
	text_start
	line "cuesta @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	cont "¿Lo quieres?"
	done

UnknownText_0x1c4dcd::
	text "Gracias."
	done

UnknownText_0x1c4dd6::
	text "¡Oh! Tu MOCHILA"
	line "está a tope."
	done

UnknownText_0x1c4df7::
	text "Eso ya lo has"
	line "comprado. No me"
	cont "quedan más."
	done

UnknownText_0x1c4e28::
	text "¡Oh! No tienes"
	line "suficiente dinero."
	done

UnknownText_0x1c4e46::
	text "Vuelve en otra"
	line "ocasión."
	done

UnknownText_0x1c4e5f::
	text "¿Qué quieres?"
	line "¿Alguna medicina?"
	done

UnknownText_0x1c4e7e::
	text "¿Cuántas unidades?"
	done

UnknownText_0x1c4e89::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " unidad/es"
	line "de @"
	text_ram wStringBuffer2
	text_start
	cont "serán @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	done

UnknownText_0x1c4eab::
	text "¡Muchas gracias!"
	done

UnknownText_0x1c4eb9::
	text "No te queda sitio."
	done

UnknownText_0x1c4ed8::
	text "¿Eh? No tienes"
	line "bastante dinero."
	done

UnknownText_0x1c4ef6::
	text "De acuerdo."
	line "Hasta luego."
	done

UnknownText_0x1c4f12::
	text "No tienes nada"
	line "para vender."
	prompt

UnknownText_0x1c4f33::
	text "¿Cuántas unidades?"
	done

UnknownText_0x1c4f3e::
	text "Puedo pagarte"
	line "@"
	text_decimal hMoneyTemp, 3, 6
	text "¥."

	para "¿Te parece bien?"
	done

UnknownText_0x1c4f62::
	text "¡Hola!"
	line "¿Qué deseas?"
	done

UnknownText_0x1c4f80::
	text "Aquí tienes."
	line "¡Gracias!"
	done

UnknownText_0x1c4f9a::
	text "No tienes"
	line "bastante dinero."
	done

UnknownText_0x1c4fb7::
	text "No puedes llevar"
	line "más objetos."
	done

UnknownText_0x1c4fd7::
	text "Lo siento, no"
	line "puedo comprártelo."
	prompt

UnknownText_0x1c4ff9::
	text "¡Vuelve cuando"
	line "quieras!"
	done

UnknownText_0x1c500d::
	text "¿Puedo ayudarte"
	line "en algo más?"
	done

UnknownText_0x1c502e::
	text "Recibiste @"
	text_decimal hMoneyTemp, 3, 6
	text " ¥"
	line "por @"
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1c5049::
	text "¿Cuántas"
	line "fichas?"
	done

UnknownText_0x1c505e::
	text "¡Comienzo!"
	done

UnknownText_0x1c5066::
	text "No tienes"
	line "bastantes fichas."
	prompt

UnknownText_0x1c5079::
	text "¡Vaya…! No me"
	line "quedan fichas…"
	done

UnknownText_0x1c5092::
	text "¿Vuelves a"
	line "jugar?"
	done

UnknownText_0x1c509f::
	text "¡Línea! ¡Has"
	line "ganado @"
	text_ram wStringBuffer2
	text " fichas!"
	done

UnknownText_0x1c50bb::
	text "¡Fallaste!"
	done

_MobileStadiumEntryText::
	text "Los datos para"
	line "utilizar en el"

	para "#MON STADIUM 2"
	line "de Nintendo 64"

	para "pueden leerse"
	line "aquí."

	para "¿Lees los datos?"
	done

_MobileStadiumSuccessText::
	text "Datos"
	line "transferidos."

	para "Esperamos que"
	line "disfrutes con los"

	para "combates en"
	line "#MON STADIUM 2"
	cont "de N64."

	para ""
	done

UnknownText_0x1c5182::
	text "Hora desconocida"
	done

UnknownText_0x1c5196::
	text "¿Borras la CONTRA-"
	line "SEÑA de ACCESO?"
	done

UnknownText_0x1c51b9::
	text "CONTRASEÑA de"
	line "ACCESO borrada."
	done

UnknownText_0x1c51d7::
	text "Elige tres #MON"
	line "para luchar."
	prompt

UnknownText_0x1c51f4::
	text_ram wMobileParticipant1Nickname
	text ","
	line "@"
	text_ram wMobileParticipant2Nickname
	text " y"
	cont "@"
	text_ram wMobileParticipant3Nickname
	text "."

	para "¿Usas estos tres?"
	done

UnknownText_0x1c521c::
	text "Sólo pueden entrar"
	line "tres #MON."
	prompt

UnknownText_0x1c5238::
	text "El TARJETERO"
	line "guarda tus"

	para "TARJETAS y las de"
	line "tus amigos/as."

	para "Una TARJETA con-"
	line "tiene información,"

	para "como el nombre de"
	line "la persona, su"

	para "número de teléfono"
	line "y su perfil."
	done

UnknownText_0x1c52bc::
	text "Ésta es tu"
	line "TARJETA."

	para "Una vez hayas in-"
	line "troducido tu núme-"
	cont "ro de teléfono,"
	cont "podrás cambiar"

	para "TARJETAS con tus"
	line "amigos/as."
	done

UnknownText_0x1c531e::
	text "Si tienes la"
	line "TARJETA de un/a"

	para "amigo/a, podrás"
	line "usarla para llamar"

	para "a un teléfono"
	line "móvil desde el 2º"

	para "piso de los"
	line "CENTROS #MON."
	done

UnknownText_0x1c5394::
	text "Para guardar tu"
	line "colección de"

	para "TARJETAS de manera"
	line "segura, asigna una"

	para "CONTRASEÑA a tu"
	line "TARJETERO."
	done

UnknownText_0x1c53ee::
	text "Si se borra el"
	line "TARJETERO, todas"

	para "las TARJETAS y la"
	line "CONTRASEÑA también"
	cont "se borrarán."

	para "¡Cuidado! Un TAR-"
	line "JETERO borrado no"
	cont "puede recuperarse."

	para "¿Quieres borrar"
	line "tu TARJETERO?"
	done

UnknownText_0x1c5494::
	text "¿Seguro que"
	line "quieres borrarlo?"
	done

UnknownText_0x1c54b9::
	text "El TARJETERO"
	line "ha sido borrado."
	done

UnknownText_0x1c54dd::
	text "Hay un TARJETERO"
	line "antiguo de un"
	cont "viaje anterior."

	para "¿Quieres abrirlo?"
	done

UnknownText_0x1c552d::
	text "¿Borras el TARJE-"
	line "TERO antiguo?"
	done

UnknownText_0x1c554a::
	text "¿Acabas de regis-"
	line "trar TARJETAS?"
	done

UnknownText_0x1c5565::
	text "¿Eh? Perdona,"
	line "n.º equivocado."
	done

UnknownText_0x1c5580::
	text "¡Clic!"
	done

UnknownText_0x1c5588::
	text "<……>"
	done

UnknownText_0x1c558b::
	text "Ese número no es"
	line "de esta zona."
	done

UnknownText_0x1c55ac::
	text "¡No es necesario"
	line "llamar, está muy"
	cont "cerca!"
	done

UnknownText_0x1c55ca::
	text "¡Gracias!"
	done

UnknownText_0x1c55d6::
	text "  :"
	done

UnknownText_0x1c55db::
	text "Contraseña válida."
	line "Elige CONTINUAR"

	para "y cambia las"
	line "opciones."
	prompt

UnknownText_0x1c560b::
	text "¡Contraseña"
	line "no válida!"
	prompt

UnknownText_0x1c561c::
	text "¿Cambias la hora?"
	done

UnknownText_0x1c562e::
	text "Introduce la"
	line "contraseña."
	done

UnknownText_0x1c564a::
	text "¿Borras todos los"
	line "datos guardados?"
	done

UnknownText_0x1c5660::
	text_ram wMonOrItemNameBuffer
	text " learned"
	line "@"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_waitbutton
	text_end

	text_end ; unused

UnknownText_0x1c5678::
	text "¿Qué movimiento"
	next "debería olvidar?"
	done

UnknownText_0x1c5699::
	text "¿Deja de aprender"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

UnknownText_0x1c56af::
	text_ram wMonOrItemNameBuffer
	text_start
	line "no aprendió"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c56c9::
	text_ram wMonOrItemNameBuffer
	text_start
	line "intenta aprender"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Pero"
	line "@"
	text_ram wMonOrItemNameBuffer
	text_start

	para "no puede aprender"
	line "más de cuatro"
	cont "movimientos."

	para "¿Borras movimiento"
	line "anterior para"

	para "dejar sitio a"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

UnknownText_0x1c5740::
	text "1, 2 y…@"
	text_pause
	text_end

	text_end ; unused

UnknownText_0x1c574e::
	text " ¡Puf!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text_start
	line "olvidó"
	cont "@"
	text_ram wStringBuffer1
	text "."

	para "Y…"
	prompt

UnknownText_0x1c5772::
	text "Los movimientos MO"
	line "no se pueden"
	cont "olvidar ahora."
	prompt

UnknownText_0x1c5793::
	text "¿Quieres apostar"
	line "tres?"
	done

UnknownText_0x1c57ab::
	text "Faltan fichas."
	prompt

UnknownText_0x1c57be::
	text "Elige una carta."
	done

UnknownText_0x1c57ce::
	text "Haz tu apuesta."
	done

UnknownText_0x1c57df::
	text "¿Vuelves a"
	line "jugar?"
	done

UnknownText_0x1c57f4::
	text "Has barajado el"
	line "mazo."
	prompt

UnknownText_0x1c5813::
	text "¡Sí!"
	done

UnknownText_0x1c581a::
	text "Maldición…"
	done

UnknownText_0x1c5821::
	text_today
	text_end

	text_end ; unused

UnknownText_0x1c5824::
	text "<……>"
	done

UnknownText_0x1c5827::
	text "Estás fuera de"
	line "cobertura."
	prompt

UnknownText_0x1c5847::
	text "¿A quién quieres"
	line "llamar?"
	done

UnknownText_0x1c5862::
	text "Pulsa un botón"
	line "para salir."
	done

UnknownText_0x1c587d::
	text "¿Borras este"
	line "n.º de teléfono?"
	done

UnknownText_0x1c589f::
	text "¿Qué premio"
	line "quieres?"
	done

UnknownText_0x1c58bc::
	text "¿@"
	text_ram wStringBuffer1
	text "?"
	line "¿Vale?"
	done

UnknownText_0x1c58d1::
	text "¡Vale!"
	done

UnknownText_0x1c58e0::
	text "No tienes puntos"
	line "suficientes."
	done

UnknownText_0x1c58ff::
	text "No tienes sitio"
	line "para esto."
	done

UnknownText_0x1c591a::
	text "Oh. ¡Por favor,"
	line "vuelve en otra"
	cont "ocasión!"
	done

UnknownText_0x1c5937::
	text "¡Disculpa!"
	done

Text_ExcuseMeYoureNotReady::
	text "Discúlpame."
	line "No estás a punto."
	done

UnknownText_0x1c5962::
	text "Por favor, vuelve"
	line "cuando estés a"
	cont "punto."
	done

_NeedAtLeastThreeMonText::
	text "Necesitas al menos"
	line "tres #MON."
	done

_EggDoesNotQualifyText::
	text "Lo siento."
	line "Un HUEVO no vale."
	done

_OnlyThreeMonMayBeEnteredText::
	text "Sólo puedes usar"
	line "tres #MON."
	done

_TheMonMustAllBeDifferentKindsText::
	text "Los @"
	text_ram wStringBuffer2
	text " #MON"
	line "deben ser diferen-"
	cont "tes."

	para ""
	done

_TheMonMustNotHoldTheSameItemsText::
	text "Los @"
	text_ram wStringBuffer2
	text " #MON no"
	line "pueden llevar los"
	cont "mismos objetos."

	para ""
	done

_YouCantTakeAnEggText::
	text "¡No puedes llevar"
	line "un HUEVO!"
	done

UnknownText_0x1c5a5a::
	text "¡Esquivó la BALL!"

	para "¡Imposible atrapar"
	line "a este #MON!"
	prompt

UnknownText_0x1c5a90::
	text "¡Has perdido al"
	line "#MON!"
	prompt

UnknownText_0x1c5aa6::
	text "¡No! ¡El #MON"
	line "se ha escapado!"
	prompt

UnknownText_0x1c5ac3::
	text "¡Parecía que lo"
	line "habías atrapado!"
	prompt

UnknownText_0x1c5ae3::
	text "¡Vaya!"
	line "¡Te faltó poco!"
	prompt

UnknownText_0x1c5afa::
	text "¡Caray! ¡Casi"
	line "lo consigues!"
	prompt

UnknownText_0x1c5b17::
	text "¡Ya está!"
	line "¡@"
	text_ram wEnemyMonNick
	text_start
	cont "atrapado!@"
	sound_caught_mon
	text_end

	text_end ; unused

Text_Waitbutton_2::
	text_waitbutton
	text_end

	text_end ; unused

UnknownText_0x1c5b38::
	text_ram wMonOrItemNameBuffer
	text_start
	line "fue enviado al PC"
	cont "de BILL."
	prompt

UnknownText_0x1c5b53::
	text_ram wEnemyMonNick
	text "'s data"
	line "was newly added to"
	cont "the #DEX.@"
	sound_slot_machine_start
	text_waitbutton
	text_end

	text_end ; unused

UnknownText_0x1c5b7f::
	text "¿Quieres darle"
	line "un mote a"
	cont "@"
	text_ram wStringBuffer1
	text "?"
	done

UnknownText_0x1c5b9a::
	text_ram wStringBuffer2
	text " de"
	line "@"
	text_ram wStringBuffer1
	text " creció."
	prompt

UnknownText_0x1c5bac::
	text "Eso no se puede"
	line "usar con este"
	cont "#MON."
	prompt

Text_RepelUsedEarlierIsStillInEffect::
	text "Todavía funciona"
	line "el REPELENTE que"
	cont "usaste antes."
	prompt

UnknownText_0x1c5bf9::
	text "Escuchaste la"
	line "# FLAUTA."

	para "¡Es una canción"
	line "muy pegadiza!"
	prompt

UnknownText_0x1c5c28::
	text "Se han despertado"
	line "todos los #MON."
	prompt

UnknownText_0x1c5c44::
	text "<PLAYER> sintonizó"
	line "el canal FLAUTA"
	cont "#MON.@"
	text_waitbutton
	text_end

	text_end ; unused

UnknownText_0x1c5c5e::
	text "Ahora tienes"
	line "@"
	text_decimal wBlueCardBalance, 1, 2
	text " punto/s."
	done

UnknownText_0x1c5c7b::
	text "Fichas:"
	line "@"
	text_decimal wCoins, 2, 4
	text_end

	text_end ; unused

Text_RaiseThePPOfWhichMove::
	text "¿A qué movimiento"
	line "quieres añadir PP?"
	done

Text_RestoreThePPOfWhichMove::
	text "¿Restaurar los PP"
	line "de qué movimiento?"
	done

Text_PPIsMaxedOut::
	text "Los PP de"
	line "@"
	text_ram wStringBuffer2
	text_start
	cont "están al máximo."
	prompt

Text_PPsIncreased::
	text "Los PP de"
	line "@"
	text_ram wStringBuffer2
	text_start
	cont "han aumentado."
	prompt

UnknownText_0x1c5cf1::
	text "PP restaurados."
	prompt

UnknownText_0x1c5d03::
	text "¡Había un trofeo"
	line "dentro!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " envió"
	line "el trofeo a casa."
	prompt

UnknownText_0x1c5d3e::
	text "Parece amarga…"
	prompt

UnknownText_0x1c5d50::
	text "Eso no se puede"
	line "usar con un HUEVO."
	prompt

UnknownText_0x1c5d6e::
	text "OAK: ¡<PLAYER>!"
	line "¡Éste no es el"
	cont "momento de usarlo!"
	prompt

UnknownText_0x1c5d97::
	text "¡Eso pertenece"
	line "a alguien!"
	prompt

UnknownText_0x1c5db6::
	text "No tendrá"
	line "ningún efecto."
	prompt

UnknownText_0x1c5dd0::
	text "¡El entrenador"
	line "bloqueó la BALL!"
	prompt

UnknownText_0x1c5def::
	text "¡No robes #MON!"
	prompt

UnknownText_0x1c5e01::
	text "Aquí no se permite"
	line "ir en bici."
	prompt

UnknownText_0x1c5e1d::
	text "No puedes subir a"
	line "tu @"
	text_ram wStringBuffer1
	text "."
	prompt

UnknownText_0x1c5e3a::
	text "La CAJA de #MON"
	line "está llena. Ahora"
	cont "no puedes usarla."
	prompt

UnknownText_0x1c5e68::
	text "<PLAYER> usó@"
	text_low
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1c5e7b::
	text "<PLAYER> got on the@"
	text_low
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c5e90::
	text "<PLAYER> got off@"
	text_low
	text "the @"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c5ea8::
	text_ram wStringBuffer1
	text_start
	line "ya conoce"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

UnknownText_0x1c5eba::
	text "Ese #MON"
	line "sólo conoce un"
	cont "movimiento."
	done

UnknownText_0x1c5eda::
	text "¿Le haces olvidar"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

UnknownText_0x1c5ef5::
	text "¡Hecho! Tu #MON"
	line "olvidó el movi-"
	cont "miento."
	done

UnknownText_0x1c5f17::
	text "¡Los HUEVOS no"
	line "saben movimientos!"
	done

UnknownText_0x1c5f36::
	text "¿No? Vuelve"
	line "cuando quieras."
	done

UnknownText_0x1c5f50::
	text "¿Qué movimiento"
	line "debería olvidar?"
	prompt

UnknownText_0x1c5f74::
	text "Soy el QUITA-"
	line "MOVIMIENTOS. Hago"

	para "olvidar movimien-"
	line "tos a los #MON."

	para "¿Quieres que"
	line "olviden algún"
	cont "movimiento?"
	done

UnknownText_0x1c5fd1::
	text "¿Qué #MON?"
	prompt

Text_DSTIsThatOK::
	text "."
	line "¿Correcto?"
	done

UnknownText_0x1c5ff1::
	text "."
	line "¿Correcto?"
	done

UnknownText_0x1c6000::
	text "¿Quieres cambiar"
	line "el reloj al"
	cont "horario de verano?"
	done

UnknownText_0x1c6030::
	text "He adelantado el"
	line "reloj una hora."
	prompt

UnknownText_0x1c6056::
	text "¿Terminó el"
	line "horario de verano?"
	done

UnknownText_0x1c6075::
	text "He atrasado el"
	line "reloj una hora."
	prompt

UnknownText_0x1c6095::
	text "¿Quieres cambiar"
	line "el reloj al"
	cont "horario de verano?"
	done

UnknownText_0x1c60d1::
	text "He perdido las"
	line "instrucciones del"

	para "#GEAR."
	line "Vuelve dentro de"
	cont "un rato."
	prompt
