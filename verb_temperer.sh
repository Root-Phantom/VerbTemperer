temper() {
    echo "Testing URL: $1"
	for method in GET POST HEAD PUT DELETE OPTIONS; do        
		echo "$method: $(curl -s -k $1 -X $method -o /dev/null -w '%{size_download} - %{http_code}')"
    done
}