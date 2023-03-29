public class Funcionario {
public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    public Decimal comissao;
    public Decimal bonus;
    
    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        System.debug('Veículo de placa ' + veiculo.placa + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        veiculo.desvalorizacao();
        System.debug('Valor da venda: ' + veiculo.valorVenda);
    }
    
    public Funcionario(){}
    
    public Funcionario(String nome, Integer matricula){
        this.nome= nome;
        this.matricula=matricula;
        System.debug('O funcionário'+nome+'possui a matrícula:'+matricula);
    }
    public Funcionario(String email,String telefone){
        this.email=email;
        this.telefone=telefone;
    }
    public void venderVeiculo(Veiculo veiculo ,Veiculo novo){
        if( veiculo.tipo == 'carro'){
            comissao=(veiculo.valorVenda*0.15);
        }Else{
            comissao=(veiculo.valorVenda*0.10);
        }
        if(novo.novo=true){
            bonus=300;
        }Else{
            bonus=200;
        }
        System.debug('O funcionário'+nome+'teve um adicional de '+(comissao+bonus)+'ao salário');
    }
}