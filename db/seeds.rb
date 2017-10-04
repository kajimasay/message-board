# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Message.create(title: '海水の性質', content: 'いろいろなものを溶かす')
# Message.create(title: '氷が水に浮く', content: '常温で液体である')
# Message.create(title: '大きな比熱', content: '海水によって生じる圧力')
# Message.create(title: '大きな潜熱', content: '海水の温度')
# Message.create(title: '大きな表面張力', content: '海水の塩分')
# Message.create(title: '光は通しにくいが音波は通す', content: 'かいすのその他のパラメータ')

(1..100).each do |number|
  Message.create(title: 'test title ' + number.to_s, content: 'test contest ' + number.to_s)
end