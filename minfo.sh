# Verifica se foi passado um argumento
if [ -z "$1" ]; then
    echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
    exit 1
fi

# Ação com base no argumento
case "$1" in
    hostname)
        # Mostra o nome da máquina
        hostname
        ;;
    uptime)
        # Mostra o tempo de atividade do sistema
        uptime -p
        ;;
    disk)
        # Mostra o uso da partição "/"
        df -h /
        ;;
    all)
        # Mostra todas as informações
        hostname
        uptime -p
        df -h /
        ;;
    *)
        # Argumento inválido
        echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
        exit 1
        ;;
esac




