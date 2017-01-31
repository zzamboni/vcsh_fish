function unset_swisscom_proxy
        if set -q http_proxy
		set_color green; echo "Unsetting Swisscom proxy"; set_color normal
	        set -Ue http_proxy
	        set -Ue https_proxy
	        set -Ue HTTP_PROXY
	        set -Ue HTTPS_PROXY
	        set -Ue BOOT_JVM_OPTIONS
        end
end
