object InMotion {
    
    // Constants
    const val MAX_SPEED = 60
    const val MIN_SPEED = 0
    const val ACCELERATION = 10
    
    // Variables
    var currentSpeed = 0
    
    // Accelerate
    fun accelerate() {
        if (currentSpeed + ACCELERATION <= MAX_SPEED) {
            currentSpeed += ACCELERATION
        }
    }
    
    // Brake
    fun brake() {
        if (currentSpeed - ACCELERATION >= MIN_SPEED) {
            currentSpeed -= ACCELERATION
        }
    }
    
    // Stop
    fun stop() {
        currentSpeed = 0
    }
    
    // Get Speed
    fun getSpeed(): Int {
        return currentSpeed
    }
    
    // Change Direction
    fun changeDirection(direction: Direction) {
        // logic to change direction
    }
    
    // Get Direction
    fun getDirection(): Direction {
        // logic to get current direction
        return Direction.FORWARD
    }
    
    // enum for direction
    enum class Direction {
        FORWARD,
        BACKWARD
    }
}