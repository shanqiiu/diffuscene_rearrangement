cd ./scripts


# exp_dir="your experiment directory"
exp_dir="/home/shanhai/outputs/diffuscene/rearrangement_traoned_model"

#### bedrooms
# config="../config/uncond/diffusion_bedrooms_instancond_lat32_v.yaml"
config="../rearrange/diffusion_bedrooms_instancond_lat32_v_rearrange.yaml"   # rearrangement
exp_name="diffusion_bedrooms_instancond_lat32_v_rearrange"
python train_diffusion.py $config $exp_dir --experiment_tag $exp_name  --with_wandb_logger

#### diningrooms
# config="../config/uncond/diffusion_diningrooms_instancond_lat32_v.yaml"
# exp_name="diffusion_diningrooms_instancond_lat32_v"
# python train_diffusion.py $config $exp_dir --experiment_tag $exp_name  --with_wandb_logger

#### livingrooms
# config="../config/uncond/diffusion_livingrooms_instancond_lat32_v.yaml"
# exp_name="diffusion_livingrooms_instancond_lat32_v"
# python train_diffusion.py $config $exp_dir --experiment_tag $exp_name  --with_wandb_logger