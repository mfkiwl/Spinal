 set -e ; verilator -CFLAGS -fPIC -CFLAGS -m64 -CFLAGS -shared -CFLAGS -Wno-attributes -LDFLAGS -fPIC -LDFLAGS -m64 -LDFLAGS -shared -LDFLAGS -Wno-attributes -CFLAGS -I/opt/jdk1.8.0_281/include -CFLAGS -I/opt/jdk1.8.0_281/include/linux -CFLAGS -fvisibility=hidden -LDFLAGS -fvisibility=hidden -CFLAGS -std=c++11 -LDFLAGS -std=c++11 --output-split 5000 --output-split-cfuncs 500 --output-split-ctrace 500 -Wno-WIDTH -Wno-UNOPTFLAT -Wno-CMPCONST -Wno-UNSIGNED --x-assign unique --trace-depth 0 -O3 -CFLAGS -O3   --Mdir verilator --top-module WishboneSimpleBusAdapted  -cc "/home/victor/work_dxs/SpinalHDL/tmp/job_90/WishboneSimpleBusAdapted.v" --exe verilator/VWishboneSimpleBusAdapted__spinalWrapper.cpp 