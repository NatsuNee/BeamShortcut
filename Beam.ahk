;AHKv2

MsgBox "Make sure you are on bullets and press 2 in game"
currentresist := 0
currentweapon := 0


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

XButton2 & 1:: ;THIS IS BULLETS 0
    {
        if currentresist == 1 and currentweapon == 2
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 0
            }

        if currentresist == 2 and currentweapon == 2 ;;
            {
                Send "{-}"
                global currentresist := 0
            }
    }

XButton2 & 2:: ;THIS IS EXPLODE 1
    {   
        if currentresist == 0 and currentweapon == 2 ;;
            {
                Send "{-}"
                global currentresist := 1
            }

        if currentresist == 2 and currentweapon == 2
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 1
            }
    }

XButton2 & 3:: ;THIS IS FIRE 2
    {
        if currentresist == 0 and currentweapon == 2
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 2
            }

        if currentresist == 1 and currentweapon == 2 ;;
            {
                Send "{-}"
                global currentresist := 2
            }
    }
