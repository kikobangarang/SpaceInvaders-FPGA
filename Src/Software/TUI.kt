object TUI {

    fun write(top: String, bottom: String){
        LCD.clear()
        LCD.cursor(0,0)
        LCD.write(top)
        LCD.cursor(1,0)
        var pos = 0
        for (i in bottom) {
            if (i == '$'){
                Invader(1, pos)
            }else{
            LCD.write(i)}
            pos += 1
        }
    }
    fun write_question(question:String, option1:String, option2: String){
        LCD.clear()
        LCD.cursor(0,0)
        LCD.write(question)
        LCD.cursor(1,0)
        LCD.write("$option1 $option2")
    }
    fun pressed_key(): Char {
        return KBD.waitKey(10)
    }

    fun write_main(coins:Int){
        LCD.clear()
        val cointext = "$$coins"
        val text = " Game $  $ $    ".dropLast(cointext.length)
        write(" Space Invaders", text)
        LCD.write(cointext)
    }

    //primeiro elemento da direita para a esquerda que é uma empty string
    fun lastEmptyStringIndex(list: MutableList<String>): Int {
        for (i in list.size - 1 downTo 0) {
            if (list[i].isEmpty()) {
                return i
            }
        }
        return -1
    }
    //primeiro elemento da esquerda para a direita que é uma empty string
    fun firstEmptyStringIndex(list: MutableList<String>): Int {
        for (i in list.indices) {
            if (list[i].isEmpty()) {
                return i
            }
        }
        return 0
    }
    //primeiro elemento da direita para a esquerda antes de uma empty string
    fun firstElementBeforeEmptyFromRight(list: MutableList<String>): Int {
        for (i in list.size - 1 downTo 1) {
            if (list[i - 1].isEmpty() && list[i].isNotEmpty()) {
                return i
            }
        }
        return list.size-1
    }
    //troca um valor empty string com o elemento seguinte
    fun switch(idx:Int, list:MutableList<String>){
        list[idx] = list[idx+1]
        list[idx+1] = ""
    }
    //update display
    fun update(){
        var inc = 0
        LCD.clear()
        for (i in LCD0){
            LCD.cursor(0,inc)
            if (i == ">")
                Ship(0, inc)
            else
                LCD.write(i)
            inc++
        }
        inc =0
        for (i in LCD1){
            LCD.cursor(1,inc)
            if (i == ">")
                Ship(1, inc)
            else
                LCD.write(i)
            inc++
        }
        update=false
    }
    //update player
    fun updatePlayer(aim:Char){
        LCD.clear()
        if (linha == 0){
            LCD0[0]=""
            LCD0[1]=""
            writeright(aim)
            writeright('>')
        }
        else if (linha == 1){
            LCD1[0]=""
            LCD1[1]=""
            writeright(aim)
            writeright('>')
        }
    }

    fun clear(){
        LCD.clear()
    }

    fun Ship(line: Int, column: Int) {
        LCD.Ship(line, column)
    }
    fun Invader(line:Int,column: Int){
        LCD.Invader(line, column)
    }





}
