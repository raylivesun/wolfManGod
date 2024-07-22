module matrix.gnu.bin.dlang.master.temperature.termking;

void main() {
    double celsius = 37.5;
    double fahrenheit = celsius * 9.0 / 5.0 + 32.0;
    int temperature = 23; // temperature's value becomes 23   

    writeln("Temperature in Celsius: ", celsius);
    writeln("Temperature in Fahrenheit: ", fahrenheit);
    writeln("Temperature in Kelvin: ", celsius + 273.15);
    writeln("Temperature in Rankine: ", (celsius + 273.1) / 5.0);
    writeln("Temperature in Reaumann: ", (celsius + 273) / 5.0);
    writeln("Temperature in Rømer: ", (celsius + 273.0) / 5.0);
    writeln("Temperature in Delisle: ", 100.0 - (celsius + 273.1) / 5.0);
    writeln("Temperature in Newton: ", celsius * 33.8 / 5.0 + (celsius + 273.1) / 5.0);
    writeln("Temperature in Réaumann-Gay-Lussac: ", ( celsius + 273.1) / 5.0 + (celsius + 273 + 273.1) / 5.0);
    writeln("Temperature in Rankine-Delisle: ", (celsius + 2 * 273.1) / 5) + (celsius + 2 * 273.1) + (celsius + 2 * 2);
    writeln("Temperature in Rankine-Rømer: ", (celsius + 2) + 50);

}

