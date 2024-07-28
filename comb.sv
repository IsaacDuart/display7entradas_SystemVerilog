module comb(
 input logic[3:0] a ,
 output logic[6:0] b
 // Declaração das variáveis: Entrada e saída.
);
always_comb begin
    case (a)
        4'b0000: b = 7'b1000000; //0
        /* Caso o dígito de quatro bits seja "0000", que
        equivale a 0 em BCD, retorne um valor com 7 bits
        correspondente ao resultado para "0000" na tabela-verdade.
        Esse modelo é aplicável para os seguinte números de 0-9:
        */
        4'b0001: b = 7'b1111001; //1
        4'b0010: b = 7'b0100100; //2
        4'b0011: b = 7'b0110000; //3
        4'b0100: b = 7'b0110001; //4
        4'b0101: b = 7'b0010010; //5
        4'b0110: b = 7'b0000010; //6
        4'b0111: b = 7'b1111000; //7
        4'b1000: b = 7'b0000000; //8
        4'b1001: b = 7'b0010000; //9
        default: b = 7'b1111111; //Para qualquer resultado diferente.
    endcase
end
endmodule