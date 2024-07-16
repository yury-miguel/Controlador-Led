# Controlador Led
  Visualização: https://wokwi.com/projects/403523350585203713

### Explicação

Construção de um controlador de led usando um temporizador com microcontrolador arduino. Temporizador indica um tempo no display, definido inicialmente em 50 segundos
e decrescendo a cada segundo, os leds são acionados um a um a cada 10 segundos passados. O temporizador reinicia automaticamente ao chegar em 0. 

## Componentes

- Microcontrolador Arduino Uno
- Display 7 segmentos cátodo
- Leds (cores de preferência inidividual)
- Jumper
- Resistores (220 ohms)
- Protoboard (opcional)

##  Instalando 

 - Baixe e instale a biblioteca SevSeg.h para controlar o display de 7 segmentos.


## Configurando

 Conecte o display de 7 segmentos cátodo ao arduino de acordo com a definição de "pinosSegmentos" ou com datasheet se preferir.
 Conecte os leds: átodo (perna maior) aos pinos do arduino, cátodo (perna menor) aos resistores 220 ohms.
 Conecte os resistores ao GND terra do Arduino.
 Conecte os DIG1 e DIG2 do display ao pino 7, 8 do arduino de acordo com o "pinosDigitos".

# Recursos

  Código fonte em main.c


## 📫 Contribuindo para Controlador Led

Para contribuir com projeto, siga estas etapas:

1. Bifurque este repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`
5. Crie a solicitação de pull.

Como alternativa, consulte a documentação do GitHub em [como criar uma solicitação pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).
