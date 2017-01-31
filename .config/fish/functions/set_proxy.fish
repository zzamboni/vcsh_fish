function set_proxy
    if test -f /etc/resolv.conf; and egrep -q '^(search|domain).*corproot.net' /etc/resolv.conf
        set_swisscom_proxy
    else
        unset_swisscom_proxy
    end
end
