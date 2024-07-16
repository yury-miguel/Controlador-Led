#include <SevSeg.h>

// Configuração do diplay 7 segmentos
SevSeg sevseg; 

int tempo = 50;
const int ledAzul = 2;
const int ledVermelho = 3;
const int ledVerde = 4;
const int ledAmarelo = 5;
const int ledRoxo = 6;
unsigned long milisegundos = 0;
const long intervalo = 1000;

void setup() {
  byte numDigitos = 2;
  byte pinosDigitos[] = {7, 8};
  byte pinosSegmentos[] = {9, 10, 11, 12, 13, A0, A1, A2};
  bool resistoresNosSegmentos = true; // 'false' significa que os resistores estão nos pinos dos dígitos
  byte configuracaoHardware = COMMON_CATHODE; // Modelo do display
  bool atualizarComDelays = false; // 'false' é o padrão recomendado
  bool zerosAEsquerda = false; // Use 'true' se quiser manter os zeros à esquerda
  bool desabilitarPontoDecimal = true; // Use 'true' se o ponto decimal não existir ou não estiver conectado

  sevseg.begin(configuracaoHardware, numDigitos, pinosDigitos, pinosSegmentos, resistoresNosSegmentos, atualizarComDelays, zerosAEsquerda, desabilitarPontoDecimal);
  sevseg.setBrightness(90);

  pinMode(ledAzul, OUTPUT);
  pinMode(ledVermelho, OUTPUT);
  pinMode(ledVerde, OUTPUT);
  pinMode(ledAmarelo, OUTPUT);
  pinMode(ledRoxo, OUTPUT);

  digitalWrite(ledAzul, LOW);
  digitalWrite(ledVermelho, LOW);
  digitalWrite(ledVerde, LOW);
  digitalWrite(ledAmarelo, LOW);
  digitalWrite(ledRoxo, LOW);
}

void loop() {
  sevseg.refreshDisplay(); // Atualiza o display constantemente

  unsigned long atualMilisegundo = millis();
  if (atualMilisegundo - milisegundos >= intervalo) {
    milisegundos = atualMilisegundo;

    if (tempo >= 0) {
      sevseg.setNumber(tempo, 2);

      if (tempo > 40) {
        digitalWrite(ledVermelho, HIGH);
        digitalWrite(ledAzul, LOW);
        digitalWrite(ledAmarelo, LOW);
        digitalWrite(ledVerde, LOW);
        digitalWrite(ledRoxo, LOW);
      } else if (tempo > 30) {
        digitalWrite(ledVermelho, LOW);
        digitalWrite(ledAzul, HIGH);
        digitalWrite(ledAmarelo, LOW);
        digitalWrite(ledVerde, LOW);
        digitalWrite(ledRoxo, LOW);
      } else if (tempo > 20) {
        digitalWrite(ledAzul, LOW);
        digitalWrite(ledAmarelo, HIGH);
        digitalWrite(ledVerde, LOW);
        digitalWrite(ledRoxo, LOW);
      } else if (tempo > 10) {
        digitalWrite(ledAmarelo, LOW);
        digitalWrite(ledVerde, HIGH);
        digitalWrite(ledRoxo, LOW);
      } else {
        digitalWrite(ledVerde, LOW);
        digitalWrite(ledRoxo, HIGH);
      }

      tempo--;

      if (tempo < 0) {
        tempo = 50;
      }
    }
  }
}
