#!/bin/bash

# generate rpc
function rpcgen() {
    python -m grpc_tools.protoc -I../../protos --python_out=. --grpc_python_out=. $1
}
