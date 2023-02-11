;AHKv2

MsgBox "Make sure you are on bullets"
currentresist := 0


f5:: 
    {
        global currentresist := 0
    }

;;r:: 
    ;;{
        ;;if currentresist < 2
            ;;{
                ;;Send "{-}"
                ;;global currentresist := 0
            ;;}
        ;;else 
           ;;{
                ;;Send "{-}"
                ;;global currentresist := currentresist + 1
            ;;} 
    ;;}

XButton2 & 1:: ;THIS IS BULLETS 0
    {
        if currentresist == 1
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 0
            }

        if currentresist == 2 ;;
            {
                Send "{-}"
                global currentresist := 0
            }
    }

XButton2 & 2:: ;THIS IS EXPLODE 1
    {   
        if currentresist == 0 ;;
            {
                Send "{-}"
                global currentresist := 1
            }

        if currentresist == 2
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 1
            }
    }

XButton2 & 3:: ;THIS IS FIRE 2
    {
        if currentresist == 0
            {
                Send "{-}"
                Sleep(50)
                Send "{-}"
                global currentresist := 2
            }

        if currentresist == 1 ;;
            {
                Send "{-}"
                global currentresist := 2
            }
    }
