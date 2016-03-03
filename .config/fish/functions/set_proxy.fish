function set_proxy
    if test -f /etc/resolv.conf; and grep -q '^domain.*corproot.net' /etc/resolv.conf
        set_swisscom_proxy
    else
        unset_swisscom_proxy
    end
end
