function set_swisscom_proxy
        if not set -q http_proxy
		set_color yellow; echo "Setting Swisscom proxy"; set_color normal
	        set -Ux http_proxy http://proxy.corproot.net:8079/
	        set -Ux https_proxy http://proxy.corproot.net:8079/
	        set -Ux HTTP_PROXY http://proxy.corproot.net:8079/
	        set -Ux HTTPS_PROXY http://proxy.corproot.net:8079/
	        set -Ux BOOT_JVM_OPTIONS -Dhttp.proxyHost=proxy.corproot.net -Dhttp.proxyPort=8079 -Dhttps.proxyHost=proxy.corproot.net -Dhttps.proxyPort=8079
        end
end
