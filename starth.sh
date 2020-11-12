cmake ../aom -DCMAKE_C_COMPILER=icc -DCMAKE_CXX_COMPILER=icpc -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_C_FLAGS='-march=native' -DCMAKE_CXX_FLAGS='-march=native' -DCONFIG_INTERNAL_STATS=1 -DENABLE_EXAMPLES=1 -DAOM_TARGET_CPU=generic -DCONFIG_AV1_DECODER=0 -DCONFIG_MULTITHREAD=0 -DENABLE_DOCS=0

../aom-build/aomenc rush_hour_cut_444.y4m -o rush_hour_cut_444.webm -p 2 --pass=2 --fpf=rush_hour_cut_444.y4m.fpf --good --cpu-used=0 --target-bitrate=200 --auto-alt-ref=1 -v --minsection-pct=0 --maxsection-pct=800 --lag-in-frames=25 --kf-min-dist=0 --kf-max-dist=99999 --static-thresh=0 --min-q=0 --max-q=63 --drop-frame=0 --bias-pct=50 --minsection-pct=0 --maxsection-pct=800 --psnr --arnr-maxframes=7 --arnr-strength=3

ml VTune/2019_update4 intel/2020a CMake/3.16.4-GCCcore-9.3.0
