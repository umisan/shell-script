# 競技プログラミング用のbuildシェルスクリプト
# ディレクトリ名と同じ名前のcppファイルをclang++でビルドする
# 出力ファイルはa.out
# -gでデバックオプションを受け付ける
begin
  set currentDir (pwd)
  set base (basename $currentDir)
  set base "$base.cpp"
  if test "$argv" = "debug"
    set build_cmd "clang++ -g" $base
  else
    set build_cmd "clang++" $base
  end
  eval $build_cmd
end
