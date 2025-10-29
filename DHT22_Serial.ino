#include <DHT.h>

#define DHTPIN 2
#define DHTTYPE DHT22

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  Serial.println("DHT22 Sensor Reading...");
  dht.begin();
}

void loop() {
  float humidity = dht.readHumidity();
  float tempC = dht.readTemperature();
  float tempF = dht.readTemperature(true);

  if (isnan(humidity) || isnan(tempC)) {
    Serial.println("Failed to read from DHT22 sensor!");
    return;
  }

  // Send as comma-separated values (for MATLAB)
  Serial.print(tempC);
  Serial.print(",");
  Serial.println(humidity);

  delay(2000);
}
