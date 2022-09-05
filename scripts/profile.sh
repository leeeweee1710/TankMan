export FILE=profile.pstats

python -m cProfile -s cumtime -o $FILE \
-m mlgame \
-i ../ml/ml_play_template_1P.py \
-i ../ml/ml_play_template_2P.py \
-f 120 -1 \
../ \
--is_manual="" --map_no=2 --frame_limit=300 --sound="off"

python -m gprof2dot -f pstats $FILE | dot -T png -o ${FILE}.png