import isel.leic.UsbPort





object HAL { // Virtualiza o acesso ao sistema UsbPort
    // Inicia a classe
    var Lastoutput = 0

    fun init() {
        Lastoutput = 0
        UsbPort.write(Lastoutput)

    }

    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean = UsbPort.read().and(mask) != 0


    // Retorna os valores dos bits representados por mask presentes no UsbPort
    fun readBits(mask: Int): Int = UsbPort.read() and mask

    // Escreve nos bits representados por mask os valores dos bits correspondentes em value
    fun writeBits(mask: Int, value: Int){

        Lastoutput = (Lastoutput and mask.inv()) or (value and mask)

        UsbPort.write(Lastoutput)
    }

    // Coloca os bits representados por mask no valor lógico ‘1’
    fun setBits(mask: Int){
        Lastoutput = Lastoutput or mask
        UsbPort.write(Lastoutput )
    }

    fun clrBits(mask: Int){
        Lastoutput = Lastoutput and mask.inv()
        UsbPort.write(Lastoutput )
    }



}
