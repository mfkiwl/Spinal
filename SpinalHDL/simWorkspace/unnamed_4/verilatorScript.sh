 set -e ; verilator -CFLAGS -fPIC -CFLAGS -m64 -CFLAGS -shared -CFLAGS -Wno-attributes -LDFLAGS -fPIC -LDFLAGS -m64 -LDFLAGS -shared -LDFLAGS -Wno-attributes -CFLAGS -I/opt/jdk1.8.0_281/include -CFLAGS -I/opt/jdk1.8.0_281/include/linux -CFLAGS -fvisibility=hidden -LDFLAGS -fvisibility=hidden -CFLAGS -std=c++11 -LDFLAGS -std=c++11 --output-split 5000 --output-split-cfuncs 500 --output-split-ctrace 500 -Wno-WIDTH -Wno-UNOPTFLAT -Wno-CMPCONST -Wno-UNSIGNED --x-assign unique --trace-depth 0 -O3 -CFLAGS -O0   --Mdir verilator --top-module unnamed  -cc "/home/victor/work_dxs/SpinalHDL/tmp/job_7/unnamed.v" --exe verilator/Vunnamed__spinalWrapper.cpp 