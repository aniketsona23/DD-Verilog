module decoder_threeEight (input [2:0] inp,output[7:0] out);

    and (out[0],!inp[0],!inp[1],!inp[2]);
    and (out[1],!inp[0],!inp[1],inp[2]);
    and (out[2],!inp[0],inp[1],!inp[2]);
    and (out[3],!inp[0],inp[1],inp[2]);
    and (out[4],inp[0],!inp[1],!inp[2]);
    and (out[5],inp[0],!inp[1],inp[2]);
    and (out[6],inp[0],inp[1],!inp[2]);
    and (out[7],inp[0],inp[1],inp[2]);

endmodule