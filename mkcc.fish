# 競技プログラミングのコンテスト用のディレクトリを生成するシェルスクリプト
# 引数で受け取った名前のディレクトリを生成してテンプレートファイルを生成する

begin
  set argCount (count $argv)
  if test $argCount = 1
    mkdir $argv
    cd $argv
    set fileName $argv.cpp
    touch $fileName
    echo "#include <iostream>" >> $fileName
    echo "#include <algorithm>" >> $fileName
    echo "#include <vector>" >> $fileName
    echo "#include <string>" >> $fileName
    echo "#include <map>" >> $fileName
    echo "#include <math.h>" >> $fileName
    echo "" >> $fileName
    echo "using namespace std;" >> $fileName
    echo "using ll = long long int;" >> $fileName
    echo "" >> $fileName
    echo "int main()" >> $fileName
    echo "{" >> $fileName
    echo "}" >> $fileName
  else
    echo "引数の数が不正です"
  end
end

