;AHKv2

MsgBox "Make sure you are on bullets"
currentresist := 0

F5:: 
    {
        MsgBox currentresist
    }

F1:: ;THIS IS BULLETS 0
    {
        if currentresist == 1
            {
                Send "{R}"
                Sleep(50)
                Send "{R}"
                global currentresist := 0
            }

        if currentresist == 2 ;;
            {
                Send "{R}"
                global currentresist := 0
            }
    }

F2:: ;THIS IS EXPLODE 1
    {   
        if currentresist == 0 ;;
            {
                Send "{R}"
                global currentresist := 1
            }

        if currentresist == 2
            {
                Send "{R}"
                Sleep(50)
                Send "{R}"
                global currentresist := 1
            }
    }

F3:: ;THIS IS FIRE 2
    {
        if currentresist == 0
            {
                Send "{R}"
                Sleep(50)
                Send "{R}"
                global currentresist := 2
            }

        if currentresist == 1 ;;
            {
                Send "{R}"
                global currentresist := 2
            }
    }
