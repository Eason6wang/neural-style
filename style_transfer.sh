STYLE_IMAGE=ill7.jpg
CONTENT_IMAGE=examples/inputs/dog1.png

STYLE_WEIGHT=2e1
STYLE_SCALE=0.9

th neural_style.lua \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -style_scale $STYLE_SCALE \
  -print_iter 50 \
  -style_weight $STYLE_WEIGHT \
  -image_size 256 \
  -output_image out1.png \
  -tv_weight 0 \
  -original_colors 1 \
  -backend cudnn -cudnn_autotune

th neural_style.lua \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image out1.png \
  -style_scale $STYLE_SCALE \
  -print_iter 50 \
  -style_weight $STYLE_WEIGHT \
  -image_size 512 \
  -num_iterations 500 \
  -output_image out2.png \
  -tv_weight 0 \
  -original_colors 1 \
  -backend cudnn -cudnn_autotune


th neural_style.lua \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image out2.png \
  -style_scale $STYLE_SCALE \
  -print_iter 50 \
  -style_weight $STYLE_WEIGHT \
  -image_size 1024 \
  -num_iterations 300 \
  -output_image out3.png \
  -tv_weight 5e-10 \
  -original_colors 1 \
  -backend cudnn -cudnn_autotune

'''
#super high res
th neural_style.lua \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image out3.png \
  -style_scale $STYLE_SCALE \
  -print_iter 1 \
  -style_weight $STYLE_WEIGHT \
  -image_size 2048 \
  -num_iterations 100 \
  -output_image out4.png \
  -tv_weight 0 \
  -gpu 8,9 \
  -backend cudnn

th neural_style.lua \
  -content_image $CONTENT_IMAGE \
  -style_image $STYLE_IMAGE \
  -init image -init_image out4.png \
  -style_scale $STYLE_SCALE \
  -print_iter 1 \
  -style_weight $STYLE_WEIGHT \
  -image_size 3620 \
  -num_iterations 50 \
  -save_iter 25 \
  -output_image out5.png \
  -tv_weight 0 \
  -lbfgs_num_correction 5 \
  -gpu 0,1,2,3 \
  -multigpu_strategy 3,6,12 \
  -backend cudnn
'''
