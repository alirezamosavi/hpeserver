i=1
while IFS= read -r line; do
     
cp post1.html post$i.html
while IFS='' read -r a; do
    echo "${a//###qq###/$line}"
done < post$i.html > post$i.html.t
mv post$i.html{.t,}



  ((i=i+1))






done < h2.txt
