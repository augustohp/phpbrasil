# PHPBrail: Não tem Biscoito

Scripts relacionados ao [grupo que modero][1] no Facebook.

[1]: https://www.facebook.com/groups/nao.tem.biscoito/insights

## HOWTO

Receitas de coisas disponíveis por esse repositório.

### Baixar estatísticas

1. Baixar CSVs, a cada 28 dias:
    1. No grupo, em _Insights_, clicar em `Download Details`
    1. Modificar formato para **CSV**
    1. Escolher um único **detalhe** de cada vez
    1. Executar `./bin/insights-data-sanitization.sh`
    1. Executar `./bin/git-push.sh`
