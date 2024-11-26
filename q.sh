for q in {1..6000};do
	wget -O q.html  --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36"  https://www.tasnimnews.com/fa/service/3/%D9%88%D8%B1%D8%B2%D8%B4%DB%8C?page=$q
	perl q.pl;
	rm q.html;
done
