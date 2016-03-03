function set_swisscom_proxy
	set -Ux http_proxy http://proxy.corproot.net:8079/
	set -Ux https_proxy http://proxy.corproot.net:8079/
	set -Ux HTTP_PROXY http://proxy.corproot.net:8079/
	set -Ux HTTPS_PROXY http://proxy.corproot.net:8079/
end
