package fr.uniamu.ibdm.gsa_server.requests.forms;

import java.util.List;

public class AddTeamTrimestrialReportForm implements Form {

  private List<TeamReportLossForm> teamReportLosses;
  private Boolean finalFlag;
  private Integer year;
  private String quarter;

  public AddTeamTrimestrialReportForm() {
  }

  /**
   * Constructor for AddTeamTrimestrialReportForm object.
   * 
   * @param losses bill
   * @param finalFlag is editable flag
   * @param year report year
   * @param quarter value of Quarter enumeration
   * @param teamName String
   */
  public AddTeamTrimestrialReportForm(List<TeamReportLossForm> teamReportLoss, Boolean finalFlag,
      Integer year, String quarter) {
    this.teamReportLosses = teamReportLoss;
    this.finalFlag = finalFlag;
    this.year = year;
    this.quarter = quarter;
  }

  public List<TeamReportLossForm> getTeamReportLosses() {
    return teamReportLosses;
  }

  public void setTeamReportLosses(List<TeamReportLossForm> teamReportLosses) {
    this.teamReportLosses = teamReportLosses;
  }

  public Boolean getFinalFlag() {
    return finalFlag;
  }

  public void setFinalFlag(Boolean finalFlag) {
    this.finalFlag = finalFlag;
  }

  public Integer getYear() {
    return year;
  }

  public void setYear(Integer year) {
    this.year = year;
  }

  public String getQuarter() {
    return quarter;
  }

  public void setQuarter(String quarter) {
    this.quarter = quarter;
  }

  @Override
  public boolean validate() {
    if (teamReportLosses == null || finalFlag == null || year == null || quarter == null) {
      return false;
    }

    for (TeamReportLossForm teamLoss : teamReportLosses) {
      if (!teamLoss.validate()) {
        return false;
      }
    }

    return true;
  }

}