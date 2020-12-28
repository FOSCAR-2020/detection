# 학습 재현 (프리트레인 yolov5l.pt에서 65000개 데이터로 10 에포크)
`python3 train.py --img 1536 --batch 4 --epochs 10 --data contest.yaml --weights yolov5l.pt --cfg yolov5_contest.yaml`

# 결과 재현
`python3.8 test.py --img 1536 --conf 0.001 --batch 8 --device 0 --data contest.yaml --weights best.pt`
