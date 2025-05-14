import isel.leic.utils.Time
import kotlin.system.exitProcess



//cria enimigos a direita e mexe os para a esquerda, verifica colisao com player
fun spawnEnemy(){
    val enemy = listOf('0', '1', '2', '3', '4', '5', '6', '7', '8', '9').random()

    val enemyline = (0..1).random()
    val col = when (enemyline) {
        0 -> TUI.lastEmptyStringIndex(LCD0)
        1 -> TUI.lastEmptyStringIndex(LCD1)
        else -> -1 }
    if (col ==-1){
        gameover =true
        return
    }
    if (enemyline ==0){
        for (idx in col..<LCD0.size-1)
            TUI.switch(idx, LCD0)
        LCD0[LCD0.size-1] = enemy.toString()
    }
    else if (enemyline ==1){
        for (idx in col..<LCD1.size-1)
            TUI.switch(idx, LCD1)
        LCD1[LCD1.size-1] = enemy.toString()
    }
}

//escreve a direita no primeiro espaço disponivel
fun writeright(value : Char){
    if(value != KBD.NONE.toChar() && value != '*' && value != '#'){
        val col = when (linha) {
            0 -> TUI.firstEmptyStringIndex(LCD0)
            1 -> TUI.firstEmptyStringIndex(LCD1)
            else -> -1 }
        if (linha ==0){
            LCD0[col] = value.toString()
        }
        else if (linha ==1){
            LCD1[col] = value.toString()
        }
    }
}

fun isHighscore(score: Int, scoreMap: MutableMap<Int, List<String>>): Boolean {
    // Check if the map size is smaller than 20
    if (scoreMap.size < 20) {
        return true
    }

    // Check if the score is higher than any of the scores in the map
    for ((_, value) in scoreMap) {
        val storedScore = value[0].toIntOrNull()
        if (storedScore != null && score > storedScore) {
            return true
        }
    }

    // If neither condition is met, return false
    return false
}

//menu que mostra score
fun scoremenu(score:Int){
    TUI.write("Score:$score", "")
    val highscores = Scores.read()
    val timeinit = Time.getTimeInMillis()
    var time:Long = Time.getTimeInMillis()
    var blinkscore = true

    val updateInterval = 250L // Update interval in milliseconds
    var lastUpdateTime = timeinit

    while (time - timeinit <= 3000) {
        time = System.currentTimeMillis()

        if (time - lastUpdateTime >= updateInterval) {
            if (blinkscore) {
                ScoreDisplay.off(true)
            } else {
                ScoreDisplay.off(false)
                ScoreDisplay.setScore(score)
            }
            blinkscore = !blinkscore
            lastUpdateTime = time
        }
    }
    if (isHighscore(score, highscores)){
        TUI.clear()
        highscoremenu(score)
    }
}

//menu que permite escrever um nome de 4 letras
fun highscoremenu(score: Int){
    LCD.cursor(0,0)
    val alfabeto = ('A'..'Z').toList()
    var idx = 0
    var col = 5
    val name = "        ".toMutableList()
    LCD.write("Name:")
    LCD.cursor(0, col)
    while(true){
        val c = KBD.waitKey(10)
        if (c == '5') break
        if (c=='6' && col < 12){
            col++
            LCD.cursor(0, col)
            LCD.write(alfabeto[idx])
            LCD.cursor(0, col)
            name[col-5] = alfabeto[idx]
        }
        if (c=='4' && col > 5){
            col--
            LCD.cursor(0, col)
            LCD.write(alfabeto[idx])
            LCD.cursor(0, col)
            name[col-5] = alfabeto[idx]
        }
        if (c == '2'){
            idx = if (idx == alfabeto.size - 1) 0 else idx+1
            LCD.write(alfabeto[idx])
            LCD.cursor(0, col)
            name[col-5] = alfabeto[idx]

        }
        if (c == '8'){
            idx = if (idx == 0) alfabeto.size - 1 else idx-1
            LCD.write(alfabeto[idx])
            LCD.cursor(0, col)
            name[col-5] = alfabeto[idx]

        }
    }
    Scores.write(score, name.joinToString(""))
}

//retirar enimigo atingido do ecra
fun kill(list:MutableList<String>, aim:Char): String {
    val idx = TUI.firstElementBeforeEmptyFromRight(list)
    val enemy = list[idx]
    if(aim.toString() == enemy) list[idx] = ""
    return enemy
}

//mudar linha
fun changeLine(){
    if (linha==1){
        linha = 0
        writeright(']')
        writeright('>')
        LCD1[0]=""
        LCD1[1]=""
        update=true}
    else if (linha==0){
        linha = 1
        writeright(']')
        writeright('>')
        LCD0[0]=""
        LCD0[1]=""
        update=true}
}



fun formathighscore(number: Int, highscores: MutableMap<Int, List<String>>): String {
    return "${number}-${highscores[number]?.get(1)}"+"               ".drop(number.toString().length+ (highscores[number]?.get(1)?.length
        ?: 0) + (highscores[number]?.get(0).toString().length)) + (highscores[number]?.get(0) ?: 0)
}


//iniciar o jogo
fun initMenu(){
    val highscores = Scores.read()

    val displayTime = 3000 // 5000 milliseconds = 5 seconds
    var startTime = System.currentTimeMillis()
    var showMessage1 = true
    val manutMask = 128
    var key = '~'
    TUI.write_main(creds)
    var number =1
    while (!(key == '*' && creds != 0)) {
        key = KBD.waitKey(10)
        if (CoinAcceptor.coininserted()){
            TUI.write_main(creds)
            showMessage1 = true
        }
        if (HAL.isBit(manutMask)){
            manut()
        }
        val currentTime = System.currentTimeMillis()

        if (currentTime - startTime >= displayTime) {
            if (showMessage1) {
                TUI.write(" Space Invaders", formathighscore(number, highscores))
                number ++
                if (number>highscores.size) number =1
            } else {
                TUI.write_main(creds)
            }
            // Reset the timer and switch the message
            startTime = currentTime
            showMessage1 = !showMessage1
        }
    }
    creds-=1
}
val statisticsSET = statistics.read()
var games = statisticsSET.first()
var coins = statisticsSET.last()
var creds = 0



fun manut(){

    TUI.write(" On Maintenance", "*-Count #-shutD")

    while (M.ismaintenancebit()) {
        var clear = false

        var key = TUI.pressed_key()
        if(key == '*'){
            val statisticsSET = statistics.read()
            games = statisticsSET.first()

            TUI.write("Games:$games", "Coins:$coins")
            val timeinit = Time.getTimeInMillis()
            var time:Long = 0

            while (time-timeinit<=5000){
                time = Time.getTimeInMillis()
                key = TUI.pressed_key()
                if(key == '#'){
                    TUI.write_question(" Clear Counters", "5-Yes", "Other-No")
                    clear = true
                }
                else if(key == '5' && clear){
                    statistics.write(0, 0)
                    break
                }
                else if(key in listOf('0', '1', '2', '3', '4', '6', '7', '8', '9', '*')){
                    break
                }
            }
            TUI.write(" On Maintenance", "*-Count #-shutD")
        }
        else if(key == '#'){
            TUI.write_question("    Shutdown", "5-Yes", "other-No")
            val timeinit = Time.getTimeInMillis()
            var time:Long = 0

            while (time-timeinit<=5000){
                time = Time.getTimeInMillis()
                key = TUI.pressed_key()
                if (key == '5'){
                    statistics.write(games, coins)
                    exitProcess(0)
                }
                else if (key in listOf('0', '1', '2', '3', '4', '6', '7', '8', '9', '*', '#')){
                    break
                }

            }
            TUI.write(" On Maintenance", "*-Count #-shutD")
    }
        else if(key in listOf('0', '1', '2', '3', '4', '5', '6', '7', '8', '9')){
            gameloop()
            TUI.write(" On Maintenance", "*-Count #-shutD")
        }
}
}

var linha = 0
var LCD0 = mutableListOf("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
var LCD1 = mutableListOf("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
var gameover = false
//flag para saber se houve alteraçao para dar update ao LCD
var update = false
var score = 0


fun gameloop(){

    var aim = ']'
    var timeinit = Time.getTimeInMillis()
    var key: Char
    if (!M.ismaintenancebit()) {
        initMenu()
    }
    writeright(']')
    writeright('>')

    TUI.update()

    while (!gameover) {
        key = KBD.waitKey(10)

        //guardar numero da aim
        if (key.digitToIntOrNull() != null){
            aim = key
            TUI.updatePlayer(aim)
            update = true
        }

        //update display
        if (update) TUI.update()

        //disparar
        if (key == '*' && aim != ']' ) {
            var enemy = "0"
            if (linha ==0){
                enemy = kill(LCD0, aim)
            }
            else if (linha ==1){
                enemy = kill(LCD1, aim)
            }
            aim = ']'
            TUI.updatePlayer(aim)
            score += enemy.toInt()+1
            ScoreDisplay.setScore(score)
            update=true
        }

        if (key == '#') changeLine()

        val time = Time.getTimeInMillis()
        //criar enimigo
        if (time-timeinit > 1000.toLong()){
            spawnEnemy()
            timeinit=time
            update = true
        }

    }
    TUI.clear()
    if (!M.ismaintenancebit()){
        scoremenu(score)
    }
}

fun main(){
    HAL.init()
    KBD.init()
    LCD.init()
    SerialEmitter.init()
    ScoreDisplay.init()
    while (true){
        gameloop()

        //reiniciar as variaveis
        games += 1
        TUI.clear()
        gameover = false
        score = 0
        ScoreDisplay.setScore(score)
        LCD0 = mutableListOf("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")
        LCD1 = mutableListOf("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")

    }
}
