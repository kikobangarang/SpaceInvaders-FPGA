import isel.leic.utils.Time

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.
    const val NONE = 0
    const val KVAL_MASK = 16
    const val K_DATA_MASK = 15
    const val KACK_MASK = 128

    // Inicia a classe
    fun init() {
        HAL.clrBits(KACK_MASK)
    }

    //Retorna de imediato a tecla premida ou NONE se não há tecla premida.
    fun getKey(): Char {
        val Kval = HAL.isBit(KVAL_MASK)
        if (Kval) {
            val value = HAL.readBits(K_DATA_MASK)
            val button = when (value) {
                0 -> '1'
                1 -> '4'
                2 -> '7'
                3 -> '*'

                4 -> '2'
                5 -> '5'
                6 -> '8'
                7 -> '0'

                8 -> '3'
                9 -> '6'
                10 -> '9'
                11 -> '#'
                else -> NONE.toChar()
            }

            HAL.setBits(KACK_MASK) //Kack está a TRUE

            while (HAL.isBit(KVAL_MASK));


            HAL.clrBits(KACK_MASK) // Kack está a false

            return button

        }
        return NONE.toChar()
    }

    // Retorna a tecla premida, caso ocorra antes do ‘timeout’ (representado em milissegundos), ou NONE caso contrário.
    fun waitKey(timeout: Long): Char {
        val time = Time.getTimeInMillis() + timeout
        while(Time.getTimeInMillis() <= time) {
            val key = getKey()
            if (key != NONE.toChar())
                return key
        }
        return NONE.toChar()
    }
}


fun main(){
    HAL.init()
    KBD.init()
    while (true){
        val k = KBD.waitKey(10)
        if (k != KBD.NONE.toChar()){
            println(k)
        }
    }
}