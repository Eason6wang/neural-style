## Style Transfer
Fork from https://github.com/jcjohnson/neural-style
- Build Docker container 
```
sudo nvidia-docker run --rm -it -v MOUNT_PATH:MOUNT_PATH -p PORT:PORT --name NAME --shm-size=5g --entrypoint=/bin/bash bethgelab/jupyter-torch:cuda8.0-cudnn5
```
- Prepare a style image and a content image
- Modify and run style_transfer.sh
```
bash style_transfer.sh
```

## Mask RCNN
Fork from https://github.com/matterport/Mask_RCNN.git
- Run mask_demo.ipynb
- Check it out https://nbviewer.jupyter.org/github/Eason6wang/style-the-mask/blob/master/mask_demo.ipynb
