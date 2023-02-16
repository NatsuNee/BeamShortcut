;AHKv2

MsgBox "Make sure you are on bullets"
currentresist := 0
currentweapon := 0
toggleresist := 1

XButton2::
    {
        if toggleresist == 0
            {
                global toggleresist := 1
                Sleep(100)
            }
        else if toggleresist == 1
            {
                global toggleresist := 0
                Sleep(100)
            }
    }


f5:: 
    {
        global currentresist := 0
    }
f6:: 
    {
        MsgBox currentresist
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
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 0
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
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 1
            }
    }

b:: ;THIS IS FIRE 2
    {
        if currentresist == 0 and currentweapon == 2 and toggleresist == 1
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 2
            }

        if currentresist == 1 and currentweapon == 2 and toggleresist == 1 ;;
            {
                Send "{-}"
                global currentresist := 2
            }
    }
