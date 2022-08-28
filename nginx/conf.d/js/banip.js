const qs = require("querystring")

const BAN_TIME = 10 // seconds

function blockRemote(r, detached) {
	return r.subrequest("/internal/redis/setex", {
		args: qs.stringify({
			key: r.remoteAddress,
			seconds: BAN_TIME,
			value: "",
		}),
		// a detached subrequest can be created inside a variable handler
		detached: detached,
	})
}

async function checkRequest(r) {
	const blocked = await r.subrequest("/internal/redis/exists", {
		args: qs.stringify({ key: r.remoteAddress }),
	})
	if (blocked.status === 200 && blocked.responseText === ":0\r\n") {
		r.return(200)
	} else {
		await blockRemote(r, false)
		r.return(403)
	}
}

function checkResponse(r) {
	// https://github.com/nginx/njs/issues/389#issuecomment-851530499
	// it is not possible to change the status code depending on the response body content using filters
	if (r.status === 403) {
		blockRemote(r, true)
	}
}

export default { checkRequest, checkResponse }
