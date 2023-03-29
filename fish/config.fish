if status is-interactive
    # Commands to run in interactive sessions can go here
    source ~/.bash_aliases

    # Some git utility functions for the prompt
    source $__fish_config_dir/git-util.fish

    # Disable fish greeting
    set fish_greeting
end

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status --background=red white

    # Color the prompt differently when we're root
    set -l color_cwd blue -o
    set -l suffix '$'
    set -l color_suffix brmagenta
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    if test $__fish_last_status != 0
        set color_suffix red
    end


    set -l vsc_prompt_color white
    set -l repo_info
    if _git_is_repo
        if _git_is_dirty
            set vsc_prompt_color red
        end
        set repo_info (set_color $vsc_prompt_color -o) (fish_git_prompt)
    end

    # Write pipestatus
    # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    echo -n -s (set_color cyan -o)$USER' ' $normal (set_color $color_cwd) (prompt_pwd) $normal $repo_info $normal " "(set_color $color_suffix -o)$suffix " "
end

export PATH="$HOME/.config/emacs/bin/:$HOME/bin:$HOME/.cargo/bin:/home/rein/.gem/ruby/3.0.0/bin:$HOME/scripts:$PATH"

