function logJSON(r) {
    const v = r.variables
    return JSON.stringify({
        time: v.time_iso8601,
        id: v.request_id,
        latency: Number(v.request_time),
        remote: r.remoteAddress,
        request: {
            http_version: r.httpVersion,
            protocol: v.scheme,
            method: r.method,
            hostname: v.host,
            port: v.server_port,
            pathname: r.uri,
            query: r.args,
            header: r.headersIn,
            size: Number(v.request_length),
        },
        response: {
            status: r.status,
            header: r.headersOut,
            size: Number(v.bytes_sent),
        },
    })
}

export default { logJSON }
