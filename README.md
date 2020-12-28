![precision_recall_curve](https://user-images.githubusercontent.com/45509381/103248020-58537880-49ac-11eb-864a-2631e3e8d605.png)

![test_batch0_labels](https://user-images.githubusercontent.com/45509381/103248034-61444a00-49ac-11eb-9d83-74a99bbff126.jpg)

![test_batch0_pred](https://user-images.githubusercontent.com/45509381/103248036-63a6a400-49ac-11eb-970a-516bcb0dc1e4.jpg)



# 학습 재현 (프리트레인 yolov5l.pt에서 65000개 데이터로 10 에포크)
`cd yolov5`

`python3 train.py --img 1536 --batch 4 --epochs 10 --data contest.yaml --weights yolov5l.pt --cfg yolov5_contest.yaml`

# 결과 재현
`cd yolov5`

`python3.8 test.py --img 1536 --conf 0.001 --batch 8 --device 0 --data contest.yaml --weights best.pt`
