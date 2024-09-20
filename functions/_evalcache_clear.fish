function _evalcache_clear
    if test -z "$FISH_EVALCACHE_DIR"
        set -gx FISH_EVALCACHE_DIR "$HOME/.fish-evalcache"
    end

    if test (count $argv) -eq 0
        /bin/rm -v "$FISH_EVALCACHE_DIR"/init-*.fish
    else
        set -f cmd (basename $argv[1])
        /bin/rm -v "$FISH_EVALCACHE_DIR/init-$cmd"-*.fish
    end
end
