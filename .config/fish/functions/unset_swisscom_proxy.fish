function unset_swisscom_proxy
	set -Ue http_proxy
	set -Ue https_proxy
	set -Ue HTTP_PROXY
	set -Ue HTTPS_PROXY
end
