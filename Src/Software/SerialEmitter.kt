object SerialEmitter { // Envia tramas para os diferentes módulos Serial Receiver.
    enum class Destination {LCD, SCORE}

    // Inicia a classe
    fun init(){
        val mask_clr = 6
        HAL.setBits(mask_clr)
    }


// Envia uma trama para o SerialReceiver identificado o destino em addr,os bits de dados em ‘data’ e em size o número de bits a enviar.
    fun send(addr: Destination, data: Int, size : Int){
        val mask_data = 1
        var counter = 0
        val mask_LCD = 2
        val mask_SCORE = 4
        val mask_clock = 8
        var data_temp = data

        if(addr == Destination.LCD)
            HAL.clrBits(mask_LCD)
        else if(addr == Destination.SCORE)
            HAL.clrBits(mask_SCORE)

        for(i in 0 until size-1){
            HAL.clrBits(mask_clock)
            if (data_temp%2 ==0){
                HAL.writeBits(mask_data, 0)
                data_temp = data_temp.shr(1)
            }
            else {
                HAL.writeBits(mask_data, 1)
                data_temp = data_temp.shr(1)
                counter++
            }
            HAL.setBits(mask_clock)
        }

        HAL.clrBits(mask_clock)
        if (counter%2==0){
            HAL.writeBits(mask_data, 0)
        }else{
            HAL.writeBits(mask_data, 1)
        }
        HAL.setBits(mask_clock)
        HAL.setBits(mask_LCD)
        HAL.setBits(mask_SCORE)
    }
}
