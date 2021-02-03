compile:
	@echo "Compiling protobufs"
	@protoc api/v1/*.proto \
		--gogoslick_out=plugins=grpc:. \
		--proto_path=$$(go list -f '{{ .Dir }}' -m github.com/gogo/protobuf) \
		--proto_path=.
	@echo "Complete!"
