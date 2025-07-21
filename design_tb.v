// PWM Generator Module
module pwm_generator (
    input clk,
    output reg pwm_out
);

reg [3:0] counter = 0;

always @(posedge clk) begin
    counter <= counter + 1;

    if (counter < 8)
        pwm_out <= 1;  // ON for 8 counts
    else
        pwm_out <= 0;  // OFF for 8 counts
end

endmodule

// Testbench
module tb_pwm_generator;

reg clk;
wire pwm_out;

// Instantiate the PWM module
pwm_generator uut (
    .clk(clk),
    .pwm_out(pwm_out)
);

// Clock generation: 10ns period
always #5 clk = ~clk;

initial begin
    $display("Time\tclk\tpwm_out");
    $monitor("%0t\t%b\t%b", $time, clk, pwm_out);

    clk = 0;
    #160;  // Run for 160 ns (16 cycles × 10 ns)
    $finish;
end

endmodule
