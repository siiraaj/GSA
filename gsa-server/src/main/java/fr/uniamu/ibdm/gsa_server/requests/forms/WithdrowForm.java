package fr.uniamu.ibdm.gsa_server.requests.forms;

public class WithdrowForm {

  private Long nlot;
  private int quantity;

  public WithdrowForm() {
  }

  public Long getNlot() {
    return nlot;
  }

  public void setNlot(Long nlot) {
    this.nlot = nlot;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

}
