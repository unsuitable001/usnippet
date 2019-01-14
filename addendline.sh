for i in $(find . -type f ! -path "*/*.egg-info/*"\
    ! -path "./.*"\
    ! -path "*.min.*"\
    ! -path "*.svg" -exec grep -Iq . {} \; -and -print); do
    if [ "$(tail -c 1 $i)" != "" ]; then
        echo "$i needs endline... adding it"
        echo "" >> $i
    fi
done
