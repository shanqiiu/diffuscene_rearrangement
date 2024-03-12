cd ./scripts

exp_dir="../pretrained"

####'bedrooms'
config="../config/rearrange/diffusion_bedrooms_instancond_lat32_v_rearrange.yaml"
exp_name="bedrooms_uncond"
weight_file="$exp_dir/$exp_name/$exp_name.pt"
threed_future='/home/shanhai/outputs/diffuscene/newest_verson/threed_future_model_bedroom.pkl'
output_dir="/home/shanhai/outputs/diffuscene/newest_verson/bedrooms"

python  completion_rearrange.py $config  $output_dir $threed_future  --weight_file $weight_file \
    --without_screen  --n_sequences 1 


# ####'diningrooms'
# config="../config/uncond/diffusion_diningrooms_instancond_lat32_v.yaml"
# exp_name="diningrooms_uncond"
# weight_file="$exp_dir/$exp_name/$exp_name.pt"
# threed_future='/cluster/balrog/jtang/3d_front_processed/diningrooms/threed_future_model_diningroom.pkl'

# python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor $threed_future  --weight_file $weight_file \
#     --without_screen  --n_sequences 1000 --render_top2down --save_mesh --no_texture --without_floor  --clip_denoised --retrive_objfeats


# ####'livingrooms'
# config="../config/uncond/diffusion_livingrooms_instancond_lat32_v.yaml"
# exp_name="livingrooms_uncond"
# weight_file="$exp_dir/$exp_name/$exp_name.pt"
# threed_future='/cluster/balrog/jtang/3d_front_processed/livingrooms/threed_future_model_livingroom.pkl'

# python  generate_diffusion.py $config  $exp_dir/$exp_name/gen_top2down_notexture_nofloor $threed_future  --weight_file $weight_file \
#     --without_screen  --n_sequences 1000 --render_top2down --save_mesh --no_texture --without_floor  --clip_denoised --retrive_objfeats