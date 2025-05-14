import java.io.BufferedReader
import java.io.File
import java.io.FileReader
import kotlin.math.ceil

object statistics {
    fun read(filePath:String = "statistics.txt"): Set<Int> {
        val br = BufferedReader(FileReader(filePath))
        var line = br.readLine()
        val numbers = mutableListOf<String>()
        while (line != null) {
            numbers += line.split("\n")
            line = br.readLine()
        }
        br.close()
        if (numbers.size >= 2) {
            return setOf(numbers[0].toInt(),numbers[1].toInt())
        } else {
            return setOf(0,0)
        }

    }

    fun write(games:Int, coins:Int, filePath:String = "statistics.txt"){
        val file = File(filePath)
        file.writeText("$games\n${coins}")
    }

}