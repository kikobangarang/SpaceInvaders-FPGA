object ScoreDisplay { // Controla o mostrador de pontuação.
    val updatemask = 96
    // Inicia a classe, estabelecendo os valores iniciais.
    fun init() {
        off(false)
        for (command in 5 downTo 0)
            sendScoreBit(0b1111 + command.shl(4))
            sendScoreBit(updatemask)

    }
    private fun sendScoreBit(value:Int){
        SerialEmitter.send(SerialEmitter.Destination.SCORE, value, 8)
    }


    // Envia comando para atualizar o valor do mostrador de pontuação
    fun setScore(value: Int){
        var temp_value = value
        var divider = 100_000
        var encounteredNonZero = false

        for(command in 5 downTo 0){
            val sub = (temp_value/divider)*divider
            if (temp_value/divider != 0 || encounteredNonZero){
                encounteredNonZero = true
                sendScoreBit((temp_value/divider)+command.shl(4))}
            else
                sendScoreBit((0b1111)+command.shl(4))
            temp_value -= sub
            divider /= 10
        }
        sendScoreBit(updatemask)
    }

    // Envia comando para desativar/ativar a visualização do mostrador de pontuação
    fun off(value: Boolean){
        val maskon = 112
        val maskoff = 113
        if(value){
            sendScoreBit(maskoff)}
        else{
            sendScoreBit(maskon)
        }
    }
}
fun main(){
    SerialEmitter.init()
    ScoreDisplay.init()
    ScoreDisplay.setScore(123)
}