module instruction_register(input [23:0] instrn,input clk,output reg [3:0] opcode,rx,ry,rz,output reg [15:0]immediate,output reg [15:0] address,output reg [5:0] jmp_addrs);

  always@(posedge clk)begin
    case(instrn[23:20])
    4'b0000:begin  // WRTD
    opcode<=instrn[23:20];
    rz<=instrn[19:16];
    immediate<=instrn[15:8];
    end
    4'b0001:begin  // ADD
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b0010:begin  // SUB
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b0011:begin  // MUL
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b0100:begin  // AND
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b0101:begin  // OR
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b0110:begin  // XOR
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b0111:begin  // NOT
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    rx <= instrn[15:12];
    ry <= instrn[11:8];
    end
    4'b1000:begin  // SHL
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    end
    4'b1001:begin  // SHR
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    end
    4'b1010:begin // INC
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    end
    4'b1011:begin  // DEC
    opcode <= instrn[23:20];
    rz <= instrn[19:16];
    end
    4'b1100:begin  // MOV
    opcode<=instrn[23:20];
    rz<=instrn[19:16];
    immediate<=instrn[15:0];
    end
    4'b1101:begin  // RED
    opcode<=instrn[23:20];
    rz<=instrn[19:16];
    address<=instrn[15:0];
    end
    4'b1110:begin  // WRT
    opcode<=instrn[23:20];
    rz<=instrn[19:16];
    address<=instrn[15:0];
    end
    4'b1111:begin  // JUMP
    opcode<=instrn[23:20];
    jmp_addrs<=instrn[19:14];
    end
    endcase
  end

endmodule
