function f --wraps "fff" --description "fff and cd to directory"
    fff "$argv"
    cd (cat ~/.cache/fff/.fff_d)
end
