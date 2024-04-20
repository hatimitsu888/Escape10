#レシピを入れるストレージ
data remove storage 10sec: tmp.craft
    #フェーズ1 鉄装備
    data modify storage 10sec: tmp.craft.0 set value []
        #鉄のヘルメット
        data modify storage 10sec: tmp.craft.0 append value {id:{name:"iron_helmet"},recipe:{0:{id:"minecraft:iron_ingot"},1:{id:"minecraft:iron_ingot"},2:{id:"minecraft:iron_ingot"},3:{id:"minecraft:iron_ingot"},5:{id:"minecraft:iron_ingot"}}}
        #鉄のチェストプレート
        data modify storage 10sec: tmp.craft.0 append value {id:{name:"iron_chestplate"},recipe:{0:{id:"minecraft:iron_ingot"},2:{id:"minecraft:iron_ingot"},3:{id:"minecraft:iron_ingot"},4:{id:"minecraft:iron_ingot"},5:{id:"minecraft:iron_ingot"},6:{id:"minecraft:iron_ingot"},7:{id:"minecraft:iron_ingot"},8:{id:"minecraft:iron_ingot"}}}
        #鉄のレギンス
        data modify storage 10sec: tmp.craft.0 append value {id:{name:"iron_leggings"},recipe:{0:{id:"minecraft:iron_ingot"},1:{id:"minecraft:iron_ingot"},2:{id:"minecraft:iron_ingot"},3:{id:"minecraft:iron_ingot"},5:{id:"minecraft:iron_ingot"},6:{id:"minecraft:iron_ingot"},8:{id:"minecraft:iron_ingot"}}}
        #鉄のブーツ
        data modify storage 10sec: tmp.craft.0 append value {id:{name:"iron_boots"},recipe:{3:{id:"minecraft:iron_ingot"},5:{id:"minecraft:iron_ingot"},6:{id:"minecraft:iron_ingot"},8:{id:"minecraft:iron_ingot"}}}
    #フェーズ2 ダイヤツール
    data modify storage 10sec: tmp.craft.1 set value []
        #ダイヤの剣
        data modify storage 10sec: tmp.craft.1 append value {id:{name:"diamond_sword"},recipe:{1:{id:"minecraft:diamond"},4:{id:"minecraft:diamond"},7:{id:"minecraft:stick"}}}
        #ダイヤのシャベル
        data modify storage 10sec: tmp.craft.1 append value {id:{name:"diamond_shovel"},recipe:{1:{id:"minecraft:diamond"},4:{id:"minecraft:stick"},7:{id:"minecraft:stick"}}}
        #ダイヤのつるはし
        data modify storage 10sec: tmp.craft.1 append value {id:{name:"diamond_pickaxe"},recipe:{0:{id:"minecraft:diamond"},1:{id:"minecraft:diamond"},2:{id:"minecraft:diamond"},4:{id:"minecraft:stick"},7:{id:"minecraft:stick"}}}
        #ダイヤの斧
        data modify storage 10sec: tmp.craft.1 append value {id:{name:"diamond_axe"},recipe:{0:{id:"minecraft:diamond"},1:{id:"minecraft:diamond"},3:{id:"minecraft:diamond"},4:{id:"minecraft:stick"},7:{id:"minecraft:stick"}}}
        #ダイヤのクワ
        data modify storage 10sec: tmp.craft.1 append value {id:{name:"diamond_hoe"},recipe:{0:{id:"minecraft:diamond"},1:{id:"minecraft:diamond"},4:{id:"minecraft:stick"},7:{id:"minecraft:stick"}}}
