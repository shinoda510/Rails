----Rails新規作成----
    gem install rails で最新gemを入れる
    rails new XXX　でnewAppを作成
    git で push する前に rake assets:precompile　を入力


----基本操作----
・git操作
    git add -A
    git commit -m "コメント"
    git remote add 名前 アドレス
    git push 名前 master

・ページの作り方
    rails g controller フォルダ名 ページ名(action)
・２ページ目
    手作り
・新機能追加
    rails g controller posts(複数形?) index
    ↑機能ごとにコントローラーを分ける

----DB関連----

・DB作成
    rails g model Post(単数形) content:text(保存するデータ型)
    ↑DBのmodelを作った
    rails db:migrate
    ↑migrateに従ってテーブル作成

・DBへデータ登録
    rails console
    post = Post.new(content:"Hello world")
    post.save
    
・DBデータ取り出し
    Post.first.(id or content or created_at or updated_at)
    Post.all[0]
    
----Herokuのエラー対策----
    Gemfileのgem 'sqlite3'を
    gem 'sqlite3', group: :development
    gem 'pg', group: :production
    に書き換える(HerokuでSQliteが使えないため)