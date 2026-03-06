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
- `http://74.163.240.107/`
- `http://74.163.240.107:8080/`
- `https://74.163.240.107/` (certificado self-signed)
- `http://74.163.240.107/phpmyadmin/`

## Banco criado (aplicação)
- Database: `openclaw_app`
- User: `openclaw_user`
- Host: `localhost`
- Password: `qMgC1eTx6S2AGCCzS6Ph`

## SSL
- Certificado configurado para IP `74.163.240.107`
- Tipo: **self-signed** (navegador exibirá aviso até você confiar manualmente)

## Firewall
- Regras UFW adicionadas para `80/tcp`, `8080/tcp`, `443/tcp`
- Estado atual do UFW: `inactive`

## Próximo passo recomendado (segurança)
Remover `info.php` após validação:

```bash
sudo rm /var/www/openclaw-site/info.php
sudo systemctl reload nginx
```
