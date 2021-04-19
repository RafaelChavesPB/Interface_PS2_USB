<h1> PS2REC-ASCON-RSENDER</h1>
<p>
PS2 Receiver - ASCII Converter - RS232 sender é um projeto implementado para a disciplina de Sistemas Digitais do curso de Engenharia Elétrica no IFPB. O objetivo do projeto foi o de desenvolver em um FPGA uma interface de dados entre um PS2 Keyboard e uma porta serial RS32.
O sistema monitora uma entrada a porta PS2 a espera de Scan codes (<a href="https://techdocs.altium.com/display/FPGA/PS2+Keyboard+Scan+Codes">PS2 keyboard scan codes</a>) que indicam interações com o teclado, o sistema identifica essas interações, converte os dados de entrada para o Formato ASCII e em seguida os serializa para serem enviados via porta RS232.   
</p>
<p>Para a implementação do projeto foram utilizados o software Altera Quartus II e a placa de desenvolviment <a href="https://www.intel.com/content/www/us/en/programmable/solutions/partners/partner-profile/terasic-inc-/board/altera-de1-board.html"> Altera DE1</a>.</p>
