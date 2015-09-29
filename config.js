{
  "datacenter": "east-aws",
  "data_dir": "/opt/consul",
  "log_level": "INFO",
  "node_name": "foobar",
  "server": true,
  "watches": [
    {
        "type": "checks",
        "handler": "/usr/bin/health-check-handler.sh"
    }
  ]
}

