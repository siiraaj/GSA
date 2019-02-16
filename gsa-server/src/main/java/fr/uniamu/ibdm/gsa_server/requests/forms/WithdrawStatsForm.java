package fr.uniamu.ibdm.gsa_server.requests.forms;

public class WithdrawStatsForm {

  private String teamName;
  private String productName;
  private String monthLowerBound;
  private String monthUpperBound;
  private int yearUpperBound;
  private int yearLowerBound;


  public WithdrawStatsForm(String teamName, String productName, String monthLowerBound, String monthUpperBound, int yearUpperBound, int yearLowerBound) {
    this.teamName = teamName;
    this.productName = productName;
    this.monthLowerBound = monthLowerBound;
    this.monthUpperBound = monthUpperBound;
    this.yearUpperBound = yearUpperBound;
    this.yearLowerBound = yearLowerBound;
  }

  public WithdrawStatsForm() {
  }

  public int getYearUpperBound() {
    return yearUpperBound;
  }

  public void setYearUpperBound(int yearUpperBound) {
    this.yearUpperBound = yearUpperBound;
  }

  public int getYearLowerBound() {
    return yearLowerBound;
  }

  public void setYearLowerBound(int yearLowerBound) {
    this.yearLowerBound = yearLowerBound;
  }

  public String getTeamName() {
    return teamName;
  }

  public void setTeamName(String teamName) {
    this.teamName = teamName;
  }

  public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }

  public String getMonthLowerBound() {
    return monthLowerBound;
  }

  public void setMonthLowerBound(String monthLowerBound) {
    this.monthLowerBound = monthLowerBound;
  }

  public String getMonthUpperBound() {
    return monthUpperBound;
  }

  public void setMonthUpperBound(String monthUpperBound) {
    this.monthUpperBound = monthUpperBound;
  }

  @Override
  public String toString() {
    return "WithdrawStatsForm{" +
        "teamName='" + teamName + '\'' +
        ", productName='" + productName + '\'' +
        ", monthLowerBound='" + monthLowerBound + '\'' +
        ", monthUpperBound='" + monthUpperBound + '\'' +
        ", yearUpperBound=" + yearUpperBound +
        ", yearLowerBound=" + yearLowerBound +
        '}';
  }
}
