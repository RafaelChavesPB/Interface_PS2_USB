<h1> Terminal Remoto </h1>
<p>


Esse projeto consiste na contrução de um terminal remoto utilizando um teclado com porta PS2, um FPGA com saida serial RS232 e um conversor RS232:USB para conexão com um computador. A ideia é que a partir do circuito descrito no FPGA seja possivel identificar o texto digitado, converte-lo para ASCII e então mostra-lo em um terminal serial (Putty) no computador.

<h2> Equipamanetos, Softwares e linguagens utilizadas </h2>

Equipamentos:

- Teclado com saída PS2;
- Placa de desenvolvimento altera DE1;
- Conversor RS232:USB.

Softwares:

- Altera Quartus II;
- Putty.

Linguagens:

- VHDL.

<h2> Fluxo de dados </h2>

Teclado PS2 -> FPGA [PS2 Receiver - ASCII Converter - RS232 sender] -> Computador [Putty]

<h2> Blocos construidos em VHDL </h2>

PS2 Receiver:

As teclas pressionadas em um teclado do tipo PS2 respeitam um padrão e podem ser identificicadas a partir dos chamados Scan codes (<a href="https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes">PS2 keyboard scan codes</a>). Resumindo o padrão: sempre que uma tecla é pressionada são enviados bytes que a identificam e enquanto o usuário não a libera os bytes cotinuam a ser enviados, no momento em que a tecla é liberada um byte de finalização padrão é enviado (x"F0"). Para identificar esse processo é necessário que uma maquina de estados que monitore a chegada de scan codes de tecla pressionada e os de finalização.

ASCII converter:

Dado o Scan code da tecla é necessário transforma-lo para um padrão de texto e esse trabalho é feito por um conversor PS2-Codes:ASCII;

RS232 sender:

Para enviar os dados via serial foi necessário contruir um circuito que simule o padrão UART (Universal Asynchronous Receiver/Transmitter). Os dados de saida desse bloco são enviados pelo porta RS232 disponivel na placa, que em seguida são convertidos para o padrão USB e então são capturados pela porta serial do computador e mostrados através do putty.
