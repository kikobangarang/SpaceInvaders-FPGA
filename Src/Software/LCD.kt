import isel.leic.utils.Time

object LCD {
    private const val LINES = 2
    private const val COLS = 16
    private const val rs_bit = 16
    private const val E_bit = 32
    private const val clk_reg_bit = 64

    fun init() {
        Time.sleep(150)

        writeCMD(48)
        Time.sleep(50)

        writeCMD(48)
        Time.sleep(10)

        writeCMD(48)
        writeCMD(56)
        writeCMD(8)
        writeCMD(1)
        writeCMD(6)
        writeCMD(15)

    }


    private fun writeByteParallel(rs: Boolean, data: Int){
        if(rs){
            HAL.setBits(rs_bit)
        }
        else{
            HAL.clrBits(rs_bit)
        }

        val shift_right = data.shr(4)

        HAL.writeBits(15, shift_right)
        HAL.setBits(clk_reg_bit)
        HAL.clrBits(clk_reg_bit)



        HAL.writeBits(15, data)
        HAL.setBits(clk_reg_bit)
        HAL.clrBits(clk_reg_bit)

        HAL.setBits(E_bit)
        HAL.clrBits(E_bit)

    }

    private fun writeByteSerial(rs: Boolean, data: Int) {
        val temp_data:Int
        if(rs){
            temp_data = data.shl(1)+1
        }
        else{
            temp_data = data.shl(1)
        }
        SerialEmitter.send(SerialEmitter.Destination.LCD, temp_data, 10)
        Time.sleep(1)
    }

    private fun writeByte(rs: Boolean, data: Int){
        writeByteSerial(rs, data)
    }

    private fun writeCMD(data: Int){
        writeByte(false, data)
    }

    private fun writeDATA(data: Int){
        writeByte(true, data)
    }

    fun write(c: Char){
        writeDATA(c.code)
    }

    fun write(text: String){
        for (char in text){
            write(char)
        }
    }


    fun cursor(line: Int, column: Int){
        val write_data = 128
       writeCMD((line*0x40)+column+write_data)
    }

    fun clear(){
        writeCMD(1)
    }

    val spaceship = byteArrayOf(0b11110, 0b11000, 0b11100, 0b11111, 0b11100, 0b11000, 0b11110, 0b00000)

    val invader = byteArrayOf(0b11111, 0b11111, 0b10101, 0b11111, 0b11111, 0b10001, 0b10001, 0b00000)


    fun createCustomChar(location: Int, charmap: ByteArray) {
        // Set CGRAM address
        writeCMD(0x40 or (location shl 3))
        for (i in charmap.indices) {
            writeDATA(charmap[i].toInt())
        }
    }

    // Display the custom character (spaceship) on the LCD
    fun Ship(line: Int, column: Int) {
        // Create the custom character at location 0
        createCustomChar(0, spaceship)
        cursor(line, column)
        writeDATA(0) // Display the custom character stored at location 0
    }
    fun Invader(line:Int,column: Int){

        createCustomChar(2, invader)

        cursor(line, column)
        writeDATA(2) // Display the custom character stored at location 0
    }

}
fun main(){
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    LCD.write("hello world")
}


