function k8scontext
	kubectl config get-contexts | grep asidata | cut -c 2- | awk '{print $1}' | fzy | xargs kubectl config use-context
end
