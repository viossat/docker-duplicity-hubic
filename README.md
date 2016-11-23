# viossat/duplicity-hubic

Backup files periodically to hubiC with duplicity.

- Alpine-based, 103.1 MB
- Duplicity: deduplication, encryption, compression
- Run via crontab

## Usage

```
# /config/hubic_credentials
[hubic]
email = xxxxxxxxxxxxxxx
password = xxxxxxxxxxxxxxx
client_id = api_hubic_xxxxxxxxxxxxxxxxxxxx
client_secret = xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
redirect_uri = http://localhost/

# /config/crontab
0 3 * * 6 duplicity full /data cf+hubic://bucket_name
0 3 * * 0-5 duplicity /data cf+hubic://bucket_name
```

```bash
docker run -d -e PASSPHRASE=secret -v /config:/config -v /data:/data viossat/duplicity-hubic
```
