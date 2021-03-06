package fr.uniamu.ibdm.gsa_server.models;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Team implements Serializable {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long teamId;

  @Column(unique = true, nullable = false)
  private String teamName;

  @OneToMany(mappedBy = "team", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
  private Collection<Member> members;

  @OneToMany(mappedBy = "team", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
  private Collection<TeamTrimestrialReport> reports;

  public Team() {
  }

  /**
   * Constructor.
   *
   * @param teamName Name of the team.
   * @param members Collection of members.
   * @param reports Collection of reports for this team.
   */
  public Team(String teamName, Collection<Member> members, Collection<TeamTrimestrialReport> reports) {
    this.teamName = teamName;
    this.members = members;
    this.reports = reports;
  }

  public long getTeamId() {
    return teamId;
  }

  public void setTeamId(long teamId) {
    this.teamId = teamId;
  }

  public String getTeamName() {
    return teamName;
  }

  public void setTeamName(String teamName) {
    this.teamName = teamName;
  }

  public Collection<TeamTrimestrialReport> getReports() {
    return reports;
  }

  public void setReports(Collection<TeamTrimestrialReport> reports) {
    this.reports = reports;
  }

  public Collection<Member> getMembers() {
    return members;
  }

  public void setMembers(Collection<Member> members) {
    this.members = members;
  }

}
