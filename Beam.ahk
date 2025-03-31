;AHKv2

MsgBox "Start on Bullets Resistance`nControls:`nF5 : Reset`nF6 : Reminder`nQ : Blast`nE : Bullets`nV : Fire `n Rebind 123 to [ ] \ and Reload to Minus"

currentresist := 0
currentweapon := 0
toggleresist := 1

#SuspendExempt
f7::Suspend
#SuspendExempt False

f5:: 
    {
        global currentresist := 0
    }
f6:: 
    {
        MsgBox toggleresist
    }

1::
    {
        Send "{[}"
        global currentweapon := 1
    }

2::
    {
        Send "{]}"
        global currentweapon := 2
    }

3::
    {
        Send "{\}"
        global currentweapon := 3
    }

r:: 
    {
        
        if currentresist == 0 and currentweapon == 2
            {
                Send "{-}"
                global currentresist := 1
            }
        else if currentresist == 1 and currentweapon == 2
            {
                Send "{-}"
                global currentresist := 2
            }
        else if currentresist == 2 and currentweapon == 2
            {
                Send "{-}"
                global currentresist := 0
            }
    }

e:: ;THIS IS BULLETS 0
    {
        if currentresist == 1 and currentweapon == 2 and toggleresist == 1
            {
                blockinput true
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 0
                blockinput false
            }

        if currentresist == 2 and currentweapon == 2 and toggleresist == 1 ;;
            {
                Send "{-}"
                global currentresist := 0
            }

    }

q:: ;THIS IS EXPLODE 1
    {   
        if currentresist == 0 and currentweapon == 2 and toggleresist == 1 ;;
            {
                Send "{-}"
                global currentresist := 1
            }

        if currentresist == 2 and currentweapon == 2 and toggleresist == 1
            {
                blockinput true
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 1
                blockinput false
            }
    }

v:: ;THIS IS FIRE 2
    {
        if currentresist == 0 and currentweapon == 2 and toggleresist == 1
            {
                blockinput true
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 2
                blockinput false
            }

        if currentresist == 1 and currentweapon == 2 and toggleresist == 1 ;;
            {
                Send "{-}"
                global currentresist := 2
            }
    }
