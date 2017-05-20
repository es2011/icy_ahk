SetKeyDelay, -1, 500

;Assumptions: only user profiles are guest and another, current profile is not guest
;need to install AutoHotKey
;starts from gameover
Sleep, 1000
params := Object(1,"ESC",2,"ESC",3,"ESC")
press(params)

Sleep, 1000
; Go to profiles
params := Object(1,"Down",2,"Down",3,"Enter",4,"Down",5,"Enter")
press(params)

;quick fix
params := Object("quick ESC")
press(params)

; Changing to Guest
params := Object(1,"quick Down",2,"Enter",3,"Enter")
press(params)

; delete icy profile
params := Object(1,"Enter",2,"quick Down",3,"quick Down",4,"Del",5,"Left",6,"Enter")
press(params)

; create new icy profile
params := Object(1,"Up",2,"Enter",3,"icy",4,"Enter",5,"Enter",6,"Enter",7,"Enter")
press(params)

; start game
params := Object(0,"Down",1,"Enter",2,"Up",3,"Up",4,"Enter")
;params := Object(0,"Down",1,"Enter",2,"Up",3,"Up",4,"Enter",5,"Enter")
press(params)

;end game
;Loop ,4{
;Sleep, 1000
;send, {ESC}
;}

press(params){

for k,param in params{
s = %k% "=" %param% "`n"
;MsgBox % s
if (param = "Down")		
send, {Down}
if (param = "Up")
send, {Up}
if (param = "Enter")
send, {Enter}
if (param = "ESC")
send, {ESC}
if (param = "Del")
send, {Del}
if (param = "Left")
send, {Left}
if (param = "icy"){
	SetKeyDelay, -1, 5
	send,icy
	SetKeyDelay, -1, 500
}
if (param="quick ESC"){
	SetKeyDelay, -1, 5
	send,{ESC}
	SetKeyDelay, -1, 500
}
if (param = "quick Down"){
	SetKeyDelay, -1, 260
	send,{Down}
	SetKeyDelay, -1, 500
}
Sleep, 100
}
}