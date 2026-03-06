# WEB-SERVER.md

## Stack instalado
- Nginx
- PHP 8.3 (FPM + extensões: mysql, xml, curl, mbstring, zip, gd)
- MariaDB 10.11
- phpMyAdmin

## Portas ativas
- HTTP: 80
- HTTP alternativo: 8080
- Banco local: 3306 (bind em 127.0.0.1)

## Raiz do site
`/var/www/openclaw-site`

Arquivos publicados:
- `index.html`
- `info.php` (teste de PHP)

## Configuração Nginx
Arquivo ativo:
`/etc/nginx/sites-available/openclaw-site.conf`

Link ativo:
`/etc/nginx/sites-enabled/openclaw-site.conf`

## Serviços
- `nginx`
- `php8.3-fpm`
- `mariadb`

Todos habilitados no boot e em estado `active`.

## Testes executados
- `http://127.0.0.1/` → 200 OK
- `http://127.0.0.1:8080/` → 200 OK
- `https://127.0.0.1/` → 200 OK (SSL self-signed)
- `http://127.0.0.1/phpmyadmin/` → 200 OK
- `https://127.0.0.1/phpmyadmin/` → 200 OK
- `http://127.0.0.1/info.php` → PHP 8.3.6

## Acesso externo
- `http://74.163.240.107/` → redireciona para HTTPS
- `http://74.163.240.107:8080/` → redireciona para HTTPS
- `https://74.163.240.107/` (certificado self-signed)
- `https://74.163.240.107/phpmyadmin/` (restrito por allowlist)

## Banco criado (aplicação)
- Database: `openclaw_app`
- User: `openclaw_user`
- Host: `localhost`
- Password: `qMgC1eTx6S2AGCCzS6Ph`

## SSL
- Certificado configurado para IP `74.163.240.107`
- Tipo: **self-signed** (navegador exibirá aviso até você confiar manualmente)
- HTTP (80/8080) forçado para HTTPS (443)
- Headers de hardening habilitados: HSTS, X-Frame-Options, X-Content-Type-Options, Referrer-Policy, Permissions-Policy

## Restrição do phpMyAdmin
- Corrigido o problema de exposição de código-fonte PHP no endpoint `/phpmyadmin`
- `/phpmyadmin` executa via PHP-FPM corretamente
- Acesso permitido apenas para: `127.0.0.1`, `::1`, `74.163.240.107`
- Demais origens recebem `403 Forbidden`

## Firewall
- UFW habilitado (`active`) com política padrão: `deny incoming`, `allow outgoing`
- Portas liberadas: `22/tcp (OpenSSH)`, `80/tcp`, `8080/tcp`, `443/tcp`

## Próximo passo recomendado (segurança)
Remover `info.php` após validação:

```bash
sudo rm /var/www/openclaw-site/info.php
sudo systemctl reload nginx
```
