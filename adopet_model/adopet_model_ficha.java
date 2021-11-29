package adopet_model;

import java.io.Serializable;
import java.util.Date;

public class adopet_model_ficha implements Serializable {

	private static final long serialVersionUID = 1L;
	private int renda;
	private String resultado_adocao;
	private String data_pedido_adocao;
	private String id;
	private String nome;
	private String especie;
	private String cor;
	private String raca;
	private String deficiencia;
	private String data;

	
	
	public String getEspecie() {
		return especie;
	}
	public void setEspecie(String especie) {
		this.especie = especie;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	public String getRaca() {
		return raca;
	}
	public void setRaca(String raca) {
		this.raca = raca;
	}
	public String getDeficiencia() {
		return deficiencia;
	}
	public void setDeficiencia(String deficiencia) {
		this.deficiencia = deficiencia;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public void setData_pedido_adocao(String data_pedido_adocao) {
		this.data_pedido_adocao = data_pedido_adocao;
	}
	public int getRenda() {
		return renda;
	}
	public void setRenda(int renda) {
		this.renda = renda;
	}
	public String getResultado_adocao() {
		return resultado_adocao;
	}
	public void setResultado_adocao(String resultado_adocao) {
		this.resultado_adocao = resultado_adocao;
	}
	public String getData_pedido_adocao() {
		return data_pedido_adocao;
	}
	public void setDataFicha(String data_pedido_adocao) {
		this.data_pedido_adocao = data_pedido_adocao;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
