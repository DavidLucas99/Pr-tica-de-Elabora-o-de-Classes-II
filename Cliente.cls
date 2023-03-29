public class Cliente {
    public String nome;
    public Decimal rg;
    public String cpf;
    public Decimal telefone;
    public String email;
    public String endereco;

    public Cliente(){}
    
    public Cliente(String nome,String cpf){
        this.nome=nome;
        this.cpf=cpf;
        System.debug('Nome do Cliente:'+nome);
        System.debug('Cpf do cliente:'+cpf);
    }
    public Cliente(Decimal telefone,string email){
        this.telefone=telefone;
        this.email=email;
        System.debug('Telefone para contato'+telefone);
        System.debug('Email para contato'+email);
    }
}