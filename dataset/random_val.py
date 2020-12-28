import os
import shutil
from os.path import join
import random

images = os.listdir("images/train2017")
labels = os.listdir("labels/train2017")

images.sort()
labels.sort()

in_list = [i for i in range(70224)]
out_list = random.sample(in_list, 5000)

for i in out_list:
    shutil.move(join("images","train2017", images[i]), join("images","val2017", images[i]))
    shutil.move(join("labels","train2017", labels[i]), join("labels","val2017", labels[i]))

# count = 0
#
# for i in range(len(images)):
#     if labels[i].find(images[i].split('.')[0]) == 0:
#         count += 1
# print(count)
