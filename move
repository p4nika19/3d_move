#include <iostream>
#include <map>
#include <conio.h>

struct Position {
    float x, y, z;
};

int main() {
    Position position = {0.0f, 0.0f, 0.0f};
    float speed = 1.0f;

    std::map<char, Position> directions = {
        {'w', {0.0f, 0.0f, 1.0f}},
        {'a', {-1.0f, 0.0f, 0.0f}},
        {'s', {0.0f, 0.0f, -1.0f}},
        {'d', {1.0f, 0.0f, 0.0f}},
    };

    std::cout << "Press 'q' to quit.\n";

    while (true) {
        char key = _getch();
        if (key == 'q') {
            break;
        }

        if (directions.find(key) != directions.end()) {
            position.x += directions[key].x * speed;
            position.y += directions[key].y * speed;
            position.z += directions[key].z * speed;

            std::cout << "Position: (" << position.x << ", " << position.y << ", " << position.z << ")\n";
        }
    }

    return 0;
}
