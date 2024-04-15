using SQLite

clear() = run(`cmd /c cls`)


function memo(db)
    while true
        println("What is in yuor mind?  - blank to exit -")
        input = readline()
        if input == ""
            break
        end
        SQLite.execute(db,"INSERT INTO user_entry (memo) VALUES ('$input')" )
        println("Very interesting, Thanks for sharing!")
        println("press any key to continue!")
        readline()
        clear()
        
    end
end