function todo
    set cur_date (date "+%A, %B %-d")
    clear
    awk -v d="$cur_date" '
        BEGIN { printing=0 }
        $0 == d { printing=1; print; next }
        printing {
            if ($0 ~ /^[A-Za-z]+, [A-Za-z]+ [0-9]+$/ && $0 != d)
                exit
            print
        }
    ' ~/path/to/your/TODO.md # set path to where your `TODO.md` file lives
end
