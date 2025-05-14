import java.io.BufferedReader
import java.io.File
import java.io.FileReader

object Scores {

    fun read(filePath:String = "SIG_scores.txt"): MutableMap<Int, List<String>> {
        val br = BufferedReader(FileReader(filePath))
        var line = br.readLine()
        val highscores = mutableMapOf<Int, List<String>>()
        var key = 1
        while (line != null) {
            val formap = line.split(";","\n")
            highscores[key] = formap
            key ++
            line = br.readLine()
        }
        br.close()
        return highscores

    }

    fun generateScoreNameString(data: Map<Int, List<Any>>, score: Int, name: String): String {
        // Initialize a mutable list to collect the entries as pairs of (score, name)
        val entries = mutableListOf<Pair<Int, String>>()

        // Add existing entries from the map to the list
        for ((_, value) in data) {
            // value is expected to be a list with [score, name]
            val entryScore = value[0].toString().toInt()
            val entryName = value[1].toString()

            entries.add(Pair(entryScore, entryName))
        }

        // Add the new score and name to the list
        entries.add(Pair(score, name))

        // Sort the list by score in descending order
        entries.sortByDescending { it.first }

        // Ensure the list does not exceed 20 entries by removing the lowest scores
        if (entries.size > 20) {
            entries.subList(20, entries.size).clear()
        }

        // Convert the list of pairs into the desired string format
        val resultStrings = entries.map { "${it.first};${it.second}" }

        // Join all strings with a newline character and return the result
        return resultStrings.joinToString("\n")
    }


    fun write(score:Int,name:String, filePath:String = "SIG_scores.txt"){
        val highscores = read()
        val output = generateScoreNameString(highscores, score, name)
        val file = File(filePath)
        file.writeText(output)
    }
}

