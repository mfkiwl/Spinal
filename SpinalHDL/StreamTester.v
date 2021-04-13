// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : StreamTester
// Git hash  : adf552d8f500e7419fff395b7049228e4bc5de26



module StreamTester (
  input               io_slave0_valid,
  output              io_slave0_ready,
  input      [7:0]    io_slave0_payload_a,
  input               io_slave0_payload_b,
  output              io_master0_valid,
  input               io_master0_ready,
  output     [7:0]    io_master0_payload_a,
  output              io_master0_payload_b,
  output     [4:0]    io_fifo0_occupancy,
  input               forkInput_valid,
  output              forkInput_ready,
  input      [7:0]    forkInput_payload,
  output              forkOutputs_0_valid,
  input               forkOutputs_0_ready,
  output     [7:0]    forkOutputs_0_payload,
  output              forkOutputs_1_valid,
  input               forkOutputs_1_ready,
  output     [7:0]    forkOutputs_1_payload,
  output              forkOutputs_2_valid,
  input               forkOutputs_2_ready,
  output     [7:0]    forkOutputs_2_payload,
  input               dispatcherInOrderInput_valid,
  output              dispatcherInOrderInput_ready,
  input      [7:0]    dispatcherInOrderInput_payload,
  output              dispatcherInOrderOutputs_0_valid,
  input               dispatcherInOrderOutputs_0_ready,
  output     [7:0]    dispatcherInOrderOutputs_0_payload,
  output              dispatcherInOrderOutputs_1_valid,
  input               dispatcherInOrderOutputs_1_ready,
  output     [7:0]    dispatcherInOrderOutputs_1_payload,
  output              dispatcherInOrderOutputs_2_valid,
  input               dispatcherInOrderOutputs_2_ready,
  output     [7:0]    dispatcherInOrderOutputs_2_payload,
  input               streamFlowArbiterInputStream_valid,
  output              streamFlowArbiterInputStream_ready,
  input      [7:0]    streamFlowArbiterInputStream_payload,
  input               streamFlowArbiterInputFlow_valid,
  input      [7:0]    streamFlowArbiterInputFlow_payload,
  output              streamFlowArbiterOutput_valid,
  output     [7:0]    streamFlowArbiterOutput_payload,
  input               arbiterInOrderInputs_0_valid,
  output              arbiterInOrderInputs_0_ready,
  input      [7:0]    arbiterInOrderInputs_0_payload,
  input               arbiterInOrderInputs_1_valid,
  output              arbiterInOrderInputs_1_ready,
  input      [7:0]    arbiterInOrderInputs_1_payload,
  input               arbiterInOrderInputs_2_valid,
  output              arbiterInOrderInputs_2_ready,
  input      [7:0]    arbiterInOrderInputs_2_payload,
  output              arbiterInOrderOutput_valid,
  input               arbiterInOrderOutput_ready,
  output     [7:0]    arbiterInOrderOutput_payload,
  input               arbiterLowIdPortFirstInputs_0_valid,
  output              arbiterLowIdPortFirstInputs_0_ready,
  input      [7:0]    arbiterLowIdPortFirstInputs_0_payload,
  input               arbiterLowIdPortFirstInputs_1_valid,
  output              arbiterLowIdPortFirstInputs_1_ready,
  input      [7:0]    arbiterLowIdPortFirstInputs_1_payload,
  input               arbiterLowIdPortFirstInputs_2_valid,
  output              arbiterLowIdPortFirstInputs_2_ready,
  input      [7:0]    arbiterLowIdPortFirstInputs_2_payload,
  output              arbiterLowIdPortFirstOutput_valid,
  input               arbiterLowIdPortFirstOutput_ready,
  output     [7:0]    arbiterLowIdPortFirstOutput_payload,
  input               arbiterRoundRobinInputs_0_valid,
  output              arbiterRoundRobinInputs_0_ready,
  input      [7:0]    arbiterRoundRobinInputs_0_payload,
  input               arbiterRoundRobinInputs_1_valid,
  output              arbiterRoundRobinInputs_1_ready,
  input      [7:0]    arbiterRoundRobinInputs_1_payload,
  input               arbiterRoundRobinInputs_2_valid,
  output              arbiterRoundRobinInputs_2_ready,
  input      [7:0]    arbiterRoundRobinInputs_2_payload,
  output              arbiterRoundRobinOutput_valid,
  input               arbiterRoundRobinOutput_ready,
  output     [7:0]    arbiterRoundRobinOutput_payload,
  input               arbiterLowIdPortFirstNoLockInputs_0_valid,
  output              arbiterLowIdPortFirstNoLockInputs_0_ready,
  input      [7:0]    arbiterLowIdPortFirstNoLockInputs_0_payload,
  input               arbiterLowIdPortFirstNoLockInputs_1_valid,
  output              arbiterLowIdPortFirstNoLockInputs_1_ready,
  input      [7:0]    arbiterLowIdPortFirstNoLockInputs_1_payload,
  input               arbiterLowIdPortFirstNoLockInputs_2_valid,
  output              arbiterLowIdPortFirstNoLockInputs_2_ready,
  input      [7:0]    arbiterLowIdPortFirstNoLockInputs_2_payload,
  output              arbiterLowIdPortFirstNoLockOutput_valid,
  input               arbiterLowIdPortFirstNoLockOutput_ready,
  output     [7:0]    arbiterLowIdPortFirstNoLockOutput_payload,
  input               arbiterLowIdPortFirstFragmentLockInputs_0_valid,
  output              arbiterLowIdPortFirstFragmentLockInputs_0_ready,
  input               arbiterLowIdPortFirstFragmentLockInputs_0_payload_last,
  input      [7:0]    arbiterLowIdPortFirstFragmentLockInputs_0_payload_fragment,
  input               arbiterLowIdPortFirstFragmentLockInputs_1_valid,
  output              arbiterLowIdPortFirstFragmentLockInputs_1_ready,
  input               arbiterLowIdPortFirstFragmentLockInputs_1_payload_last,
  input      [7:0]    arbiterLowIdPortFirstFragmentLockInputs_1_payload_fragment,
  input               arbiterLowIdPortFirstFragmentLockInputs_2_valid,
  output              arbiterLowIdPortFirstFragmentLockInputs_2_ready,
  input               arbiterLowIdPortFirstFragmentLockInputs_2_payload_last,
  input      [7:0]    arbiterLowIdPortFirstFragmentLockInputs_2_payload_fragment,
  output              arbiterLowIdPortFirstFragmentLockOutput_valid,
  input               arbiterLowIdPortFirstFragmentLockOutput_ready,
  output              arbiterLowIdPortFirstFragmentLockOutput_payload_last,
  output     [7:0]    arbiterLowIdPortFirstFragmentLockOutput_payload_fragment,
  input               clk,
  input               reset
);
  wire                _zz_6;
  wire                _zz_7;
  wire                fifo0_io_push_ready;
  wire                fifo0_io_pop_valid;
  wire       [7:0]    fifo0_io_pop_payload_a;
  wire                fifo0_io_pop_payload_b;
  wire       [4:0]    fifo0_io_occupancy;
  wire       [4:0]    fifo0_io_availability;
  wire                forkInput_fork_io_input_ready;
  wire                forkInput_fork_io_outputs_0_valid;
  wire       [7:0]    forkInput_fork_io_outputs_0_payload;
  wire                forkInput_fork_io_outputs_1_valid;
  wire       [7:0]    forkInput_fork_io_outputs_1_payload;
  wire                forkInput_fork_io_outputs_2_valid;
  wire       [7:0]    forkInput_fork_io_outputs_2_payload;
  wire                streamDemux_1_io_input_ready;
  wire                streamDemux_1_io_outputs_0_valid;
  wire       [7:0]    streamDemux_1_io_outputs_0_payload;
  wire                streamDemux_1_io_outputs_1_valid;
  wire       [7:0]    streamDemux_1_io_outputs_1_payload;
  wire                streamDemux_1_io_outputs_2_valid;
  wire       [7:0]    streamDemux_1_io_outputs_2_payload;
  wire                streamArbiter_5_io_inputs_0_ready;
  wire                streamArbiter_5_io_inputs_1_ready;
  wire                streamArbiter_5_io_inputs_2_ready;
  wire                streamArbiter_5_io_output_valid;
  wire       [7:0]    streamArbiter_5_io_output_payload;
  wire       [1:0]    streamArbiter_5_io_chosen;
  wire       [2:0]    streamArbiter_5_io_chosenOH;
  wire                streamArbiter_6_io_inputs_0_ready;
  wire                streamArbiter_6_io_inputs_1_ready;
  wire                streamArbiter_6_io_inputs_2_ready;
  wire                streamArbiter_6_io_output_valid;
  wire       [7:0]    streamArbiter_6_io_output_payload;
  wire       [1:0]    streamArbiter_6_io_chosen;
  wire       [2:0]    streamArbiter_6_io_chosenOH;
  wire                streamArbiter_7_io_inputs_0_ready;
  wire                streamArbiter_7_io_inputs_1_ready;
  wire                streamArbiter_7_io_inputs_2_ready;
  wire                streamArbiter_7_io_output_valid;
  wire       [7:0]    streamArbiter_7_io_output_payload;
  wire       [1:0]    streamArbiter_7_io_chosen;
  wire       [2:0]    streamArbiter_7_io_chosenOH;
  wire                streamArbiter_8_io_inputs_0_ready;
  wire                streamArbiter_8_io_inputs_1_ready;
  wire                streamArbiter_8_io_inputs_2_ready;
  wire                streamArbiter_8_io_output_valid;
  wire       [7:0]    streamArbiter_8_io_output_payload;
  wire       [1:0]    streamArbiter_8_io_chosen;
  wire       [2:0]    streamArbiter_8_io_chosenOH;
  wire                streamArbiter_9_io_inputs_0_ready;
  wire                streamArbiter_9_io_inputs_1_ready;
  wire                streamArbiter_9_io_inputs_2_ready;
  wire                streamArbiter_9_io_output_valid;
  wire                streamArbiter_9_io_output_payload_last;
  wire       [7:0]    streamArbiter_9_io_output_payload_fragment;
  wire       [1:0]    streamArbiter_9_io_chosen;
  wire       [2:0]    streamArbiter_9_io_chosenOH;
  wire                _zz_8;
  wire       [0:0]    _zz_9;
  wire       [1:0]    _zz_10;
  wire                fifo0_io_pop_s2mPipe_valid;
  wire                fifo0_io_pop_s2mPipe_ready;
  wire       [7:0]    fifo0_io_pop_s2mPipe_payload_a;
  wire                fifo0_io_pop_s2mPipe_payload_b;
  reg                 fifo0_io_pop_s2mPipe_rValid;
  reg        [7:0]    fifo0_io_pop_s2mPipe_rData_a;
  reg                 fifo0_io_pop_s2mPipe_rData_b;
  wire                fifo0_io_pop_s2mPipe_m2sPipe_valid;
  wire                fifo0_io_pop_s2mPipe_m2sPipe_ready;
  wire       [7:0]    fifo0_io_pop_s2mPipe_m2sPipe_payload_a;
  wire                fifo0_io_pop_s2mPipe_m2sPipe_payload_b;
  reg                 fifo0_io_pop_s2mPipe_m2sPipe_rValid;
  reg        [7:0]    fifo0_io_pop_s2mPipe_m2sPipe_rData_a;
  reg                 fifo0_io_pop_s2mPipe_m2sPipe_rData_b;
  reg                 _zz_1;
  reg        [1:0]    _zz_2;
  reg        [1:0]    _zz_3;
  wire                _zz_4;
  wire                _zz_5;

  assign _zz_8 = (_zz_6 && (! fifo0_io_pop_s2mPipe_ready));
  assign _zz_9 = _zz_1;
  assign _zz_10 = {1'd0, _zz_9};
  StreamFifo fifo0 (
    .io_push_valid        (io_slave0_valid              ), //i
    .io_push_ready        (fifo0_io_push_ready          ), //o
    .io_push_payload_a    (io_slave0_payload_a[7:0]     ), //i
    .io_push_payload_b    (io_slave0_payload_b          ), //i
    .io_pop_valid         (fifo0_io_pop_valid           ), //o
    .io_pop_ready         (_zz_6                        ), //i
    .io_pop_payload_a     (fifo0_io_pop_payload_a[7:0]  ), //o
    .io_pop_payload_b     (fifo0_io_pop_payload_b       ), //o
    .io_flush             (_zz_7                        ), //i
    .io_occupancy         (fifo0_io_occupancy[4:0]      ), //o
    .io_availability      (fifo0_io_availability[4:0]   ), //o
    .clk                  (clk                          ), //i
    .reset                (reset                        )  //i
  );
  StreamFork forkInput_fork (
    .io_input_valid          (forkInput_valid                           ), //i
    .io_input_ready          (forkInput_fork_io_input_ready             ), //o
    .io_input_payload        (forkInput_payload[7:0]                    ), //i
    .io_outputs_0_valid      (forkInput_fork_io_outputs_0_valid         ), //o
    .io_outputs_0_ready      (forkOutputs_0_ready                       ), //i
    .io_outputs_0_payload    (forkInput_fork_io_outputs_0_payload[7:0]  ), //o
    .io_outputs_1_valid      (forkInput_fork_io_outputs_1_valid         ), //o
    .io_outputs_1_ready      (forkOutputs_1_ready                       ), //i
    .io_outputs_1_payload    (forkInput_fork_io_outputs_1_payload[7:0]  ), //o
    .io_outputs_2_valid      (forkInput_fork_io_outputs_2_valid         ), //o
    .io_outputs_2_ready      (forkOutputs_2_ready                       ), //i
    .io_outputs_2_payload    (forkInput_fork_io_outputs_2_payload[7:0]  ), //o
    .clk                     (clk                                       ), //i
    .reset                   (reset                                     )  //i
  );
  StreamDemux streamDemux_1 (
    .io_select               (_zz_3[1:0]                               ), //i
    .io_input_valid          (dispatcherInOrderInput_valid             ), //i
    .io_input_ready          (streamDemux_1_io_input_ready             ), //o
    .io_input_payload        (dispatcherInOrderInput_payload[7:0]      ), //i
    .io_outputs_0_valid      (streamDemux_1_io_outputs_0_valid         ), //o
    .io_outputs_0_ready      (dispatcherInOrderOutputs_0_ready         ), //i
    .io_outputs_0_payload    (streamDemux_1_io_outputs_0_payload[7:0]  ), //o
    .io_outputs_1_valid      (streamDemux_1_io_outputs_1_valid         ), //o
    .io_outputs_1_ready      (dispatcherInOrderOutputs_1_ready         ), //i
    .io_outputs_1_payload    (streamDemux_1_io_outputs_1_payload[7:0]  ), //o
    .io_outputs_2_valid      (streamDemux_1_io_outputs_2_valid         ), //o
    .io_outputs_2_ready      (dispatcherInOrderOutputs_2_ready         ), //i
    .io_outputs_2_payload    (streamDemux_1_io_outputs_2_payload[7:0]  )  //o
  );
  StreamArbiter streamArbiter_5 (
    .io_inputs_0_valid      (arbiterInOrderInputs_0_valid            ), //i
    .io_inputs_0_ready      (streamArbiter_5_io_inputs_0_ready       ), //o
    .io_inputs_0_payload    (arbiterInOrderInputs_0_payload[7:0]     ), //i
    .io_inputs_1_valid      (arbiterInOrderInputs_1_valid            ), //i
    .io_inputs_1_ready      (streamArbiter_5_io_inputs_1_ready       ), //o
    .io_inputs_1_payload    (arbiterInOrderInputs_1_payload[7:0]     ), //i
    .io_inputs_2_valid      (arbiterInOrderInputs_2_valid            ), //i
    .io_inputs_2_ready      (streamArbiter_5_io_inputs_2_ready       ), //o
    .io_inputs_2_payload    (arbiterInOrderInputs_2_payload[7:0]     ), //i
    .io_output_valid        (streamArbiter_5_io_output_valid         ), //o
    .io_output_ready        (arbiterInOrderOutput_ready              ), //i
    .io_output_payload      (streamArbiter_5_io_output_payload[7:0]  ), //o
    .io_chosen              (streamArbiter_5_io_chosen[1:0]          ), //o
    .io_chosenOH            (streamArbiter_5_io_chosenOH[2:0]        ), //o
    .clk                    (clk                                     ), //i
    .reset                  (reset                                   )  //i
  );
  StreamArbiter_1 streamArbiter_6 (
    .io_inputs_0_valid      (arbiterLowIdPortFirstInputs_0_valid         ), //i
    .io_inputs_0_ready      (streamArbiter_6_io_inputs_0_ready           ), //o
    .io_inputs_0_payload    (arbiterLowIdPortFirstInputs_0_payload[7:0]  ), //i
    .io_inputs_1_valid      (arbiterLowIdPortFirstInputs_1_valid         ), //i
    .io_inputs_1_ready      (streamArbiter_6_io_inputs_1_ready           ), //o
    .io_inputs_1_payload    (arbiterLowIdPortFirstInputs_1_payload[7:0]  ), //i
    .io_inputs_2_valid      (arbiterLowIdPortFirstInputs_2_valid         ), //i
    .io_inputs_2_ready      (streamArbiter_6_io_inputs_2_ready           ), //o
    .io_inputs_2_payload    (arbiterLowIdPortFirstInputs_2_payload[7:0]  ), //i
    .io_output_valid        (streamArbiter_6_io_output_valid             ), //o
    .io_output_ready        (arbiterLowIdPortFirstOutput_ready           ), //i
    .io_output_payload      (streamArbiter_6_io_output_payload[7:0]      ), //o
    .io_chosen              (streamArbiter_6_io_chosen[1:0]              ), //o
    .io_chosenOH            (streamArbiter_6_io_chosenOH[2:0]            ), //o
    .clk                    (clk                                         ), //i
    .reset                  (reset                                       )  //i
  );
  StreamArbiter_2 streamArbiter_7 (
    .io_inputs_0_valid      (arbiterRoundRobinInputs_0_valid         ), //i
    .io_inputs_0_ready      (streamArbiter_7_io_inputs_0_ready       ), //o
    .io_inputs_0_payload    (arbiterRoundRobinInputs_0_payload[7:0]  ), //i
    .io_inputs_1_valid      (arbiterRoundRobinInputs_1_valid         ), //i
    .io_inputs_1_ready      (streamArbiter_7_io_inputs_1_ready       ), //o
    .io_inputs_1_payload    (arbiterRoundRobinInputs_1_payload[7:0]  ), //i
    .io_inputs_2_valid      (arbiterRoundRobinInputs_2_valid         ), //i
    .io_inputs_2_ready      (streamArbiter_7_io_inputs_2_ready       ), //o
    .io_inputs_2_payload    (arbiterRoundRobinInputs_2_payload[7:0]  ), //i
    .io_output_valid        (streamArbiter_7_io_output_valid         ), //o
    .io_output_ready        (arbiterRoundRobinOutput_ready           ), //i
    .io_output_payload      (streamArbiter_7_io_output_payload[7:0]  ), //o
    .io_chosen              (streamArbiter_7_io_chosen[1:0]          ), //o
    .io_chosenOH            (streamArbiter_7_io_chosenOH[2:0]        ), //o
    .clk                    (clk                                     ), //i
    .reset                  (reset                                   )  //i
  );
  StreamArbiter_3 streamArbiter_8 (
    .io_inputs_0_valid      (arbiterLowIdPortFirstNoLockInputs_0_valid         ), //i
    .io_inputs_0_ready      (streamArbiter_8_io_inputs_0_ready                 ), //o
    .io_inputs_0_payload    (arbiterLowIdPortFirstNoLockInputs_0_payload[7:0]  ), //i
    .io_inputs_1_valid      (arbiterLowIdPortFirstNoLockInputs_1_valid         ), //i
    .io_inputs_1_ready      (streamArbiter_8_io_inputs_1_ready                 ), //o
    .io_inputs_1_payload    (arbiterLowIdPortFirstNoLockInputs_1_payload[7:0]  ), //i
    .io_inputs_2_valid      (arbiterLowIdPortFirstNoLockInputs_2_valid         ), //i
    .io_inputs_2_ready      (streamArbiter_8_io_inputs_2_ready                 ), //o
    .io_inputs_2_payload    (arbiterLowIdPortFirstNoLockInputs_2_payload[7:0]  ), //i
    .io_output_valid        (streamArbiter_8_io_output_valid                   ), //o
    .io_output_ready        (arbiterLowIdPortFirstNoLockOutput_ready           ), //i
    .io_output_payload      (streamArbiter_8_io_output_payload[7:0]            ), //o
    .io_chosen              (streamArbiter_8_io_chosen[1:0]                    ), //o
    .io_chosenOH            (streamArbiter_8_io_chosenOH[2:0]                  ), //o
    .clk                    (clk                                               ), //i
    .reset                  (reset                                             )  //i
  );
  StreamArbiter_4 streamArbiter_9 (
    .io_inputs_0_valid               (arbiterLowIdPortFirstFragmentLockInputs_0_valid                  ), //i
    .io_inputs_0_ready               (streamArbiter_9_io_inputs_0_ready                                ), //o
    .io_inputs_0_payload_last        (arbiterLowIdPortFirstFragmentLockInputs_0_payload_last           ), //i
    .io_inputs_0_payload_fragment    (arbiterLowIdPortFirstFragmentLockInputs_0_payload_fragment[7:0]  ), //i
    .io_inputs_1_valid               (arbiterLowIdPortFirstFragmentLockInputs_1_valid                  ), //i
    .io_inputs_1_ready               (streamArbiter_9_io_inputs_1_ready                                ), //o
    .io_inputs_1_payload_last        (arbiterLowIdPortFirstFragmentLockInputs_1_payload_last           ), //i
    .io_inputs_1_payload_fragment    (arbiterLowIdPortFirstFragmentLockInputs_1_payload_fragment[7:0]  ), //i
    .io_inputs_2_valid               (arbiterLowIdPortFirstFragmentLockInputs_2_valid                  ), //i
    .io_inputs_2_ready               (streamArbiter_9_io_inputs_2_ready                                ), //o
    .io_inputs_2_payload_last        (arbiterLowIdPortFirstFragmentLockInputs_2_payload_last           ), //i
    .io_inputs_2_payload_fragment    (arbiterLowIdPortFirstFragmentLockInputs_2_payload_fragment[7:0]  ), //i
    .io_output_valid                 (streamArbiter_9_io_output_valid                                  ), //o
    .io_output_ready                 (arbiterLowIdPortFirstFragmentLockOutput_ready                    ), //i
    .io_output_payload_last          (streamArbiter_9_io_output_payload_last                           ), //o
    .io_output_payload_fragment      (streamArbiter_9_io_output_payload_fragment[7:0]                  ), //o
    .io_chosen                       (streamArbiter_9_io_chosen[1:0]                                   ), //o
    .io_chosenOH                     (streamArbiter_9_io_chosenOH[2:0]                                 ), //o
    .clk                             (clk                                                              ), //i
    .reset                           (reset                                                            )  //i
  );
  assign io_slave0_ready = fifo0_io_push_ready;
  assign fifo0_io_pop_s2mPipe_valid = (fifo0_io_pop_valid || fifo0_io_pop_s2mPipe_rValid);
  assign _zz_6 = (! fifo0_io_pop_s2mPipe_rValid);
  assign fifo0_io_pop_s2mPipe_payload_a = (fifo0_io_pop_s2mPipe_rValid ? fifo0_io_pop_s2mPipe_rData_a : fifo0_io_pop_payload_a);
  assign fifo0_io_pop_s2mPipe_payload_b = (fifo0_io_pop_s2mPipe_rValid ? fifo0_io_pop_s2mPipe_rData_b : fifo0_io_pop_payload_b);
  assign fifo0_io_pop_s2mPipe_ready = ((1'b1 && (! fifo0_io_pop_s2mPipe_m2sPipe_valid)) || fifo0_io_pop_s2mPipe_m2sPipe_ready);
  assign fifo0_io_pop_s2mPipe_m2sPipe_valid = fifo0_io_pop_s2mPipe_m2sPipe_rValid;
  assign fifo0_io_pop_s2mPipe_m2sPipe_payload_a = fifo0_io_pop_s2mPipe_m2sPipe_rData_a;
  assign fifo0_io_pop_s2mPipe_m2sPipe_payload_b = fifo0_io_pop_s2mPipe_m2sPipe_rData_b;
  assign io_master0_valid = fifo0_io_pop_s2mPipe_m2sPipe_valid;
  assign fifo0_io_pop_s2mPipe_m2sPipe_ready = io_master0_ready;
  assign io_master0_payload_a = fifo0_io_pop_s2mPipe_m2sPipe_payload_a;
  assign io_master0_payload_b = fifo0_io_pop_s2mPipe_m2sPipe_payload_b;
  assign io_fifo0_occupancy = fifo0_io_occupancy;
  assign forkInput_ready = forkInput_fork_io_input_ready;
  assign forkOutputs_0_valid = forkInput_fork_io_outputs_0_valid;
  assign forkOutputs_0_payload = forkInput_fork_io_outputs_0_payload;
  assign forkOutputs_1_valid = forkInput_fork_io_outputs_1_valid;
  assign forkOutputs_1_payload = forkInput_fork_io_outputs_1_payload;
  assign forkOutputs_2_valid = forkInput_fork_io_outputs_2_valid;
  assign forkOutputs_2_payload = forkInput_fork_io_outputs_2_payload;
  always @ (*) begin
    _zz_1 = 1'b0;
    if((dispatcherInOrderInput_valid && dispatcherInOrderInput_ready))begin
      _zz_1 = 1'b1;
    end
  end

  assign _zz_4 = (_zz_3 == 2'b10);
  assign _zz_5 = (_zz_4 && _zz_1);
  always @ (*) begin
    if(_zz_5)begin
      _zz_2 = 2'b00;
    end else begin
      _zz_2 = (_zz_3 + _zz_10);
    end
    if(1'b0)begin
      _zz_2 = 2'b00;
    end
  end

  assign dispatcherInOrderInput_ready = streamDemux_1_io_input_ready;
  assign dispatcherInOrderOutputs_0_valid = streamDemux_1_io_outputs_0_valid;
  assign dispatcherInOrderOutputs_0_payload = streamDemux_1_io_outputs_0_payload;
  assign dispatcherInOrderOutputs_1_valid = streamDemux_1_io_outputs_1_valid;
  assign dispatcherInOrderOutputs_1_payload = streamDemux_1_io_outputs_1_payload;
  assign dispatcherInOrderOutputs_2_valid = streamDemux_1_io_outputs_2_valid;
  assign dispatcherInOrderOutputs_2_payload = streamDemux_1_io_outputs_2_payload;
  assign streamFlowArbiterInputStream_ready = (! streamFlowArbiterInputFlow_valid);
  assign streamFlowArbiterOutput_valid = (streamFlowArbiterInputFlow_valid || streamFlowArbiterInputStream_valid);
  assign streamFlowArbiterOutput_payload = (streamFlowArbiterInputFlow_valid ? streamFlowArbiterInputFlow_payload : streamFlowArbiterInputStream_payload);
  assign arbiterInOrderInputs_0_ready = streamArbiter_5_io_inputs_0_ready;
  assign arbiterInOrderInputs_1_ready = streamArbiter_5_io_inputs_1_ready;
  assign arbiterInOrderInputs_2_ready = streamArbiter_5_io_inputs_2_ready;
  assign arbiterInOrderOutput_valid = streamArbiter_5_io_output_valid;
  assign arbiterInOrderOutput_payload = streamArbiter_5_io_output_payload;
  assign arbiterLowIdPortFirstInputs_0_ready = streamArbiter_6_io_inputs_0_ready;
  assign arbiterLowIdPortFirstInputs_1_ready = streamArbiter_6_io_inputs_1_ready;
  assign arbiterLowIdPortFirstInputs_2_ready = streamArbiter_6_io_inputs_2_ready;
  assign arbiterLowIdPortFirstOutput_valid = streamArbiter_6_io_output_valid;
  assign arbiterLowIdPortFirstOutput_payload = streamArbiter_6_io_output_payload;
  assign arbiterRoundRobinInputs_0_ready = streamArbiter_7_io_inputs_0_ready;
  assign arbiterRoundRobinInputs_1_ready = streamArbiter_7_io_inputs_1_ready;
  assign arbiterRoundRobinInputs_2_ready = streamArbiter_7_io_inputs_2_ready;
  assign arbiterRoundRobinOutput_valid = streamArbiter_7_io_output_valid;
  assign arbiterRoundRobinOutput_payload = streamArbiter_7_io_output_payload;
  assign arbiterLowIdPortFirstNoLockInputs_0_ready = streamArbiter_8_io_inputs_0_ready;
  assign arbiterLowIdPortFirstNoLockInputs_1_ready = streamArbiter_8_io_inputs_1_ready;
  assign arbiterLowIdPortFirstNoLockInputs_2_ready = streamArbiter_8_io_inputs_2_ready;
  assign arbiterLowIdPortFirstNoLockOutput_valid = streamArbiter_8_io_output_valid;
  assign arbiterLowIdPortFirstNoLockOutput_payload = streamArbiter_8_io_output_payload;
  assign arbiterLowIdPortFirstFragmentLockInputs_0_ready = streamArbiter_9_io_inputs_0_ready;
  assign arbiterLowIdPortFirstFragmentLockInputs_1_ready = streamArbiter_9_io_inputs_1_ready;
  assign arbiterLowIdPortFirstFragmentLockInputs_2_ready = streamArbiter_9_io_inputs_2_ready;
  assign arbiterLowIdPortFirstFragmentLockOutput_valid = streamArbiter_9_io_output_valid;
  assign arbiterLowIdPortFirstFragmentLockOutput_payload_last = streamArbiter_9_io_output_payload_last;
  assign arbiterLowIdPortFirstFragmentLockOutput_payload_fragment = streamArbiter_9_io_output_payload_fragment;
  assign _zz_7 = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      fifo0_io_pop_s2mPipe_rValid <= 1'b0;
      fifo0_io_pop_s2mPipe_m2sPipe_rValid <= 1'b0;
      _zz_3 <= 2'b00;
    end else begin
      if(fifo0_io_pop_s2mPipe_ready)begin
        fifo0_io_pop_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_8)begin
        fifo0_io_pop_s2mPipe_rValid <= fifo0_io_pop_valid;
      end
      if(fifo0_io_pop_s2mPipe_ready)begin
        fifo0_io_pop_s2mPipe_m2sPipe_rValid <= fifo0_io_pop_s2mPipe_valid;
      end
      _zz_3 <= _zz_2;
    end
  end

  always @ (posedge clk) begin
    if(_zz_8)begin
      fifo0_io_pop_s2mPipe_rData_a <= fifo0_io_pop_payload_a;
      fifo0_io_pop_s2mPipe_rData_b <= fifo0_io_pop_payload_b;
    end
    if(fifo0_io_pop_s2mPipe_ready)begin
      fifo0_io_pop_s2mPipe_m2sPipe_rData_a <= fifo0_io_pop_s2mPipe_payload_a;
      fifo0_io_pop_s2mPipe_m2sPipe_rData_b <= fifo0_io_pop_s2mPipe_payload_b;
    end
  end


endmodule

module StreamArbiter_4 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input               io_inputs_0_payload_last,
  input      [7:0]    io_inputs_0_payload_fragment,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input               io_inputs_1_payload_last,
  input      [7:0]    io_inputs_1_payload_fragment,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input               io_inputs_2_payload_last,
  input      [7:0]    io_inputs_2_payload_fragment,
  output              io_output_valid,
  input               io_output_ready,
  output              io_output_payload_last,
  output     [7:0]    io_output_payload_fragment,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);
  reg                 _zz_6;
  reg        [7:0]    _zz_7;
  wire       [2:0]    _zz_8;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1;
  wire       [2:0]    _zz_2;
  wire       [1:0]    _zz_3;
  wire                _zz_4;
  wire                _zz_5;

  assign _zz_8 = (_zz_1 - 3'b001);
  always @(*) begin
    case(_zz_3)
      2'b00 : begin
        _zz_6 = io_inputs_0_payload_last;
        _zz_7 = io_inputs_0_payload_fragment;
      end
      2'b01 : begin
        _zz_6 = io_inputs_1_payload_last;
        _zz_7 = io_inputs_1_payload_fragment;
      end
      default : begin
        _zz_6 = io_inputs_2_payload_last;
        _zz_7 = io_inputs_2_payload_fragment;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2 = (_zz_1 & (~ _zz_8));
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_2[1];
  assign maskProposal_2 = _zz_2[2];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign _zz_3 = {maskRouted_2,maskRouted_1};
  assign io_output_payload_last = _zz_6;
  assign io_output_payload_fragment = _zz_7;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_4 = io_chosenOH[1];
  assign _zz_5 = io_chosenOH[2];
  assign io_chosen = {_zz_5,_zz_4};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
    end else begin
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if(((io_output_valid && io_output_ready) && io_output_payload_last))begin
        locked <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_output_valid)begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
      maskLocked_2 <= maskRouted_2;
    end
  end


endmodule

module StreamArbiter_3 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [7:0]    io_inputs_0_payload,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [7:0]    io_inputs_1_payload,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [7:0]    io_inputs_2_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [1:0]    _zz_7;
  wire                locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1;
  wire       [2:0]    _zz_2;
  wire                _zz_3;
  wire                _zz_4;

  assign _zz_6 = (_zz_1 - 3'b001);
  assign _zz_7 = {maskRouted_2,maskRouted_1};
  always @(*) begin
    case(_zz_7)
      2'b00 : begin
        _zz_5 = io_inputs_0_payload;
      end
      2'b01 : begin
        _zz_5 = io_inputs_1_payload;
      end
      default : begin
        _zz_5 = io_inputs_2_payload;
      end
    endcase
  end

  assign locked = 1'b0;
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2 = (_zz_1 & (~ _zz_6));
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_2[1];
  assign maskProposal_2 = _zz_2[2];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign io_output_payload = _zz_5;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_3 = io_chosenOH[1];
  assign _zz_4 = io_chosenOH[2];
  assign io_chosen = {_zz_4,_zz_3};
  always @ (posedge clk) begin
    if(io_output_valid)begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
      maskLocked_2 <= maskRouted_2;
    end
  end


endmodule

module StreamArbiter_2 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [7:0]    io_inputs_0_payload,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [7:0]    io_inputs_1_payload,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [7:0]    io_inputs_2_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_7;
  wire       [5:0]    _zz_8;
  wire       [2:0]    _zz_9;
  wire       [5:0]    _zz_10;
  wire       [0:0]    _zz_11;
  wire       [0:0]    _zz_12;
  wire       [0:0]    _zz_13;
  wire       [1:0]    _zz_14;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1;
  wire       [5:0]    _zz_2;
  wire       [5:0]    _zz_3;
  wire       [2:0]    _zz_4;
  wire                _zz_5;
  wire                _zz_6;

  assign _zz_8 = (_zz_2 - _zz_10);
  assign _zz_9 = {maskLocked_1,{maskLocked_0,maskLocked_2}};
  assign _zz_10 = {3'd0, _zz_9};
  assign _zz_11 = _zz_4[0 : 0];
  assign _zz_12 = _zz_4[1 : 1];
  assign _zz_13 = _zz_4[2 : 2];
  assign _zz_14 = {maskRouted_2,maskRouted_1};
  always @(*) begin
    case(_zz_14)
      2'b00 : begin
        _zz_7 = io_inputs_0_payload;
      end
      2'b01 : begin
        _zz_7 = io_inputs_1_payload;
      end
      default : begin
        _zz_7 = io_inputs_2_payload;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2 = {_zz_1,_zz_1};
  assign _zz_3 = (_zz_2 & (~ _zz_8));
  assign _zz_4 = (_zz_3[5 : 3] | _zz_3[2 : 0]);
  assign maskProposal_0 = _zz_11[0];
  assign maskProposal_1 = _zz_12[0];
  assign maskProposal_2 = _zz_13[0];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign io_output_payload = _zz_7;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_5 = io_chosenOH[1];
  assign _zz_6 = io_chosenOH[2];
  assign io_chosen = {_zz_6,_zz_5};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b0;
      maskLocked_2 <= 1'b1;
    end else begin
      if(io_output_valid)begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
        maskLocked_2 <= maskRouted_2;
      end
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module StreamArbiter_1 (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [7:0]    io_inputs_0_payload,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [7:0]    io_inputs_1_payload,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [7:0]    io_inputs_2_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_5;
  wire       [2:0]    _zz_6;
  wire       [1:0]    _zz_7;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  wire                maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  wire       [2:0]    _zz_1;
  wire       [2:0]    _zz_2;
  wire                _zz_3;
  wire                _zz_4;

  assign _zz_6 = (_zz_1 - 3'b001);
  assign _zz_7 = {maskRouted_2,maskRouted_1};
  always @(*) begin
    case(_zz_7)
      2'b00 : begin
        _zz_5 = io_inputs_0_payload;
      end
      2'b01 : begin
        _zz_5 = io_inputs_1_payload;
      end
      default : begin
        _zz_5 = io_inputs_2_payload;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  assign _zz_1 = {io_inputs_2_valid,{io_inputs_1_valid,io_inputs_0_valid}};
  assign _zz_2 = (_zz_1 & (~ _zz_6));
  assign maskProposal_0 = io_inputs_0_valid;
  assign maskProposal_1 = _zz_2[1];
  assign maskProposal_2 = _zz_2[2];
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign io_output_payload = _zz_5;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_3 = io_chosenOH[1];
  assign _zz_4 = io_chosenOH[2];
  assign io_chosen = {_zz_4,_zz_3};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
    end else begin
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_output_valid)begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
      maskLocked_2 <= maskRouted_2;
    end
  end


endmodule

module StreamArbiter (
  input               io_inputs_0_valid,
  output              io_inputs_0_ready,
  input      [7:0]    io_inputs_0_payload,
  input               io_inputs_1_valid,
  output              io_inputs_1_ready,
  input      [7:0]    io_inputs_1_payload,
  input               io_inputs_2_valid,
  output              io_inputs_2_ready,
  input      [7:0]    io_inputs_2_payload,
  output              io_output_valid,
  input               io_output_ready,
  output     [7:0]    io_output_payload,
  output     [1:0]    io_chosen,
  output     [2:0]    io_chosenOH,
  input               clk,
  input               reset
);
  reg        [7:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [1:0]    _zz_6;
  wire       [1:0]    _zz_7;
  reg                 locked;
  reg                 maskProposal_0;
  reg                 maskProposal_1;
  reg                 maskProposal_2;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  reg                 maskLocked_2;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire                maskRouted_2;
  reg                 arbitration_counter_willIncrement;
  wire                arbitration_counter_willClear;
  reg        [1:0]    arbitration_counter_valueNext;
  reg        [1:0]    arbitration_counter_value;
  wire                arbitration_counter_willOverflowIfInc;
  wire                arbitration_counter_willOverflow;
  wire       [3:0]    _zz_1;
  wire                _zz_2;
  wire                _zz_3;

  assign _zz_5 = arbitration_counter_willIncrement;
  assign _zz_6 = {1'd0, _zz_5};
  assign _zz_7 = {maskRouted_2,maskRouted_1};
  always @(*) begin
    case(_zz_7)
      2'b00 : begin
        _zz_4 = io_inputs_0_payload;
      end
      2'b01 : begin
        _zz_4 = io_inputs_1_payload;
      end
      default : begin
        _zz_4 = io_inputs_2_payload;
      end
    endcase
  end

  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign maskRouted_2 = (locked ? maskLocked_2 : maskProposal_2);
  always @ (*) begin
    arbitration_counter_willIncrement = 1'b0;
    if((io_output_valid && io_output_ready))begin
      arbitration_counter_willIncrement = 1'b1;
    end
  end

  assign arbitration_counter_willClear = 1'b0;
  assign arbitration_counter_willOverflowIfInc = (arbitration_counter_value == 2'b10);
  assign arbitration_counter_willOverflow = (arbitration_counter_willOverflowIfInc && arbitration_counter_willIncrement);
  always @ (*) begin
    if(arbitration_counter_willOverflow)begin
      arbitration_counter_valueNext = 2'b00;
    end else begin
      arbitration_counter_valueNext = (arbitration_counter_value + _zz_6);
    end
    if(arbitration_counter_willClear)begin
      arbitration_counter_valueNext = 2'b00;
    end
  end

  always @ (*) begin
    maskProposal_0 = 1'b0;
    if(_zz_1[0])begin
      maskProposal_0 = 1'b1;
    end
  end

  always @ (*) begin
    maskProposal_1 = 1'b0;
    if(_zz_1[1])begin
      maskProposal_1 = 1'b1;
    end
  end

  always @ (*) begin
    maskProposal_2 = 1'b0;
    if(_zz_1[2])begin
      maskProposal_2 = 1'b1;
    end
  end

  assign _zz_1 = ({3'd0,1'b1} <<< arbitration_counter_value);
  assign io_output_valid = (((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1)) || (io_inputs_2_valid && maskRouted_2));
  assign io_output_payload = _zz_4;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_inputs_2_ready = (maskRouted_2 && io_output_ready);
  assign io_chosenOH = {maskRouted_2,{maskRouted_1,maskRouted_0}};
  assign _zz_2 = io_chosenOH[1];
  assign _zz_3 = io_chosenOH[2];
  assign io_chosen = {_zz_3,_zz_2};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      locked <= 1'b0;
      arbitration_counter_value <= 2'b00;
    end else begin
      arbitration_counter_value <= arbitration_counter_valueNext;
      if(io_output_valid)begin
        locked <= 1'b1;
      end
      if((io_output_valid && io_output_ready))begin
        locked <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_output_valid)begin
      maskLocked_0 <= maskRouted_0;
      maskLocked_1 <= maskRouted_1;
      maskLocked_2 <= maskRouted_2;
    end
  end


endmodule

module StreamDemux (
  input      [1:0]    io_select,
  input               io_input_valid,
  output reg          io_input_ready,
  input      [7:0]    io_input_payload,
  output reg          io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [7:0]    io_outputs_0_payload,
  output reg          io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [7:0]    io_outputs_1_payload,
  output reg          io_outputs_2_valid,
  input               io_outputs_2_ready,
  output     [7:0]    io_outputs_2_payload
);
  wire                _zz_1;
  wire                _zz_2;
  wire                _zz_3;

  assign _zz_1 = (2'b00 != io_select);
  assign _zz_2 = (2'b01 != io_select);
  assign _zz_3 = (2'b10 != io_select);
  always @ (*) begin
    io_input_ready = 1'b0;
    if(! _zz_1) begin
      io_input_ready = io_outputs_0_ready;
    end
    if(! _zz_2) begin
      io_input_ready = io_outputs_1_ready;
    end
    if(! _zz_3) begin
      io_input_ready = io_outputs_2_ready;
    end
  end

  assign io_outputs_0_payload = io_input_payload;
  always @ (*) begin
    if(_zz_1)begin
      io_outputs_0_valid = 1'b0;
    end else begin
      io_outputs_0_valid = io_input_valid;
    end
  end

  assign io_outputs_1_payload = io_input_payload;
  always @ (*) begin
    if(_zz_2)begin
      io_outputs_1_valid = 1'b0;
    end else begin
      io_outputs_1_valid = io_input_valid;
    end
  end

  assign io_outputs_2_payload = io_input_payload;
  always @ (*) begin
    if(_zz_3)begin
      io_outputs_2_valid = 1'b0;
    end else begin
      io_outputs_2_valid = io_input_valid;
    end
  end


endmodule

module StreamFork (
  input               io_input_valid,
  output reg          io_input_ready,
  input      [7:0]    io_input_payload,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output     [7:0]    io_outputs_0_payload,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output     [7:0]    io_outputs_1_payload,
  output              io_outputs_2_valid,
  input               io_outputs_2_ready,
  output     [7:0]    io_outputs_2_payload,
  input               clk,
  input               reset
);
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 _zz_3;

  always @ (*) begin
    io_input_ready = 1'b1;
    if(((! io_outputs_0_ready) && _zz_1))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_1_ready) && _zz_2))begin
      io_input_ready = 1'b0;
    end
    if(((! io_outputs_2_ready) && _zz_3))begin
      io_input_ready = 1'b0;
    end
  end

  assign io_outputs_0_valid = (io_input_valid && _zz_1);
  assign io_outputs_0_payload = io_input_payload;
  assign io_outputs_1_valid = (io_input_valid && _zz_2);
  assign io_outputs_1_payload = io_input_payload;
  assign io_outputs_2_valid = (io_input_valid && _zz_3);
  assign io_outputs_2_payload = io_input_payload;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      _zz_1 <= 1'b1;
      _zz_2 <= 1'b1;
      _zz_3 <= 1'b1;
    end else begin
      if((io_outputs_0_valid && io_outputs_0_ready))begin
        _zz_1 <= 1'b0;
      end
      if((io_outputs_1_valid && io_outputs_1_ready))begin
        _zz_2 <= 1'b0;
      end
      if((io_outputs_2_valid && io_outputs_2_ready))begin
        _zz_3 <= 1'b0;
      end
      if(io_input_ready)begin
        _zz_1 <= 1'b1;
        _zz_2 <= 1'b1;
        _zz_3 <= 1'b1;
      end
    end
  end


endmodule

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [7:0]    io_push_payload_a,
  input               io_push_payload_b,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [7:0]    io_pop_payload_a,
  output              io_pop_payload_b,
  input               io_flush,
  output     [4:0]    io_occupancy,
  output     [4:0]    io_availability,
  input               clk,
  input               reset
);
  reg        [8:0]    _zz_4;
  wire       [0:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire       [0:0]    _zz_7;
  wire       [3:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [3:0]    _zz_10;
  wire                _zz_11;
  wire       [8:0]    _zz_12;
  reg                 _zz_1;
  reg                 logic_pushPtr_willIncrement;
  reg                 logic_pushPtr_willClear;
  reg        [3:0]    logic_pushPtr_valueNext;
  reg        [3:0]    logic_pushPtr_value;
  wire                logic_pushPtr_willOverflowIfInc;
  wire                logic_pushPtr_willOverflow;
  reg                 logic_popPtr_willIncrement;
  reg                 logic_popPtr_willClear;
  reg        [3:0]    logic_popPtr_valueNext;
  reg        [3:0]    logic_popPtr_value;
  wire                logic_popPtr_willOverflowIfInc;
  wire                logic_popPtr_willOverflow;
  wire                logic_ptrMatch;
  reg                 logic_risingOccupancy;
  wire                logic_pushing;
  wire                logic_popping;
  wire                logic_empty;
  wire                logic_full;
  reg                 _zz_2;
  wire       [8:0]    _zz_3;
  wire       [3:0]    logic_ptrDif;
  reg [8:0] logic_ram [0:15];

  assign _zz_5 = logic_pushPtr_willIncrement;
  assign _zz_6 = {3'd0, _zz_5};
  assign _zz_7 = logic_popPtr_willIncrement;
  assign _zz_8 = {3'd0, _zz_7};
  assign _zz_9 = _zz_3[8 : 8];
  assign _zz_10 = (logic_popPtr_value - logic_pushPtr_value);
  assign _zz_11 = 1'b1;
  assign _zz_12 = {io_push_payload_b,io_push_payload_a};
  always @ (posedge clk) begin
    if(_zz_11) begin
      _zz_4 <= logic_ram[logic_popPtr_valueNext];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_pushPtr_value] <= _zz_12;
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(logic_pushing)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willIncrement = 1'b0;
    if(logic_pushing)begin
      logic_pushPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_pushPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_pushPtr_willClear = 1'b1;
    end
  end

  assign logic_pushPtr_willOverflowIfInc = (logic_pushPtr_value == 4'b1111);
  assign logic_pushPtr_willOverflow = (logic_pushPtr_willOverflowIfInc && logic_pushPtr_willIncrement);
  always @ (*) begin
    logic_pushPtr_valueNext = (logic_pushPtr_value + _zz_6);
    if(logic_pushPtr_willClear)begin
      logic_pushPtr_valueNext = 4'b0000;
    end
  end

  always @ (*) begin
    logic_popPtr_willIncrement = 1'b0;
    if(logic_popping)begin
      logic_popPtr_willIncrement = 1'b1;
    end
  end

  always @ (*) begin
    logic_popPtr_willClear = 1'b0;
    if(io_flush)begin
      logic_popPtr_willClear = 1'b1;
    end
  end

  assign logic_popPtr_willOverflowIfInc = (logic_popPtr_value == 4'b1111);
  assign logic_popPtr_willOverflow = (logic_popPtr_willOverflowIfInc && logic_popPtr_willIncrement);
  always @ (*) begin
    logic_popPtr_valueNext = (logic_popPtr_value + _zz_8);
    if(logic_popPtr_willClear)begin
      logic_popPtr_valueNext = 4'b0000;
    end
  end

  assign logic_ptrMatch = (logic_pushPtr_value == logic_popPtr_value);
  assign logic_pushing = (io_push_valid && io_push_ready);
  assign logic_popping = (io_pop_valid && io_pop_ready);
  assign logic_empty = (logic_ptrMatch && (! logic_risingOccupancy));
  assign logic_full = (logic_ptrMatch && logic_risingOccupancy);
  assign io_push_ready = (! logic_full);
  assign io_pop_valid = ((! logic_empty) && (! (_zz_2 && (! logic_full))));
  assign _zz_3 = _zz_4;
  assign io_pop_payload_a = _zz_3[7 : 0];
  assign io_pop_payload_b = _zz_9[0];
  assign logic_ptrDif = (logic_pushPtr_value - logic_popPtr_value);
  assign io_occupancy = {(logic_risingOccupancy && logic_ptrMatch),logic_ptrDif};
  assign io_availability = {((! logic_risingOccupancy) && logic_ptrMatch),_zz_10};
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      logic_pushPtr_value <= 4'b0000;
      logic_popPtr_value <= 4'b0000;
      logic_risingOccupancy <= 1'b0;
      _zz_2 <= 1'b0;
    end else begin
      logic_pushPtr_value <= logic_pushPtr_valueNext;
      logic_popPtr_value <= logic_popPtr_valueNext;
      _zz_2 <= (logic_popPtr_valueNext == logic_pushPtr_value);
      if((logic_pushing != logic_popping))begin
        logic_risingOccupancy <= logic_pushing;
      end
      if(io_flush)begin
        logic_risingOccupancy <= 1'b0;
      end
    end
  end


endmodule
