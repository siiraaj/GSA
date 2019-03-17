package fr.uniamu.ibdm.gsa_server.dao;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import fr.uniamu.ibdm.gsa_server.models.Transaction;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction, Long> {
  @Query(value = "SELECT aliquot_price, transaction_date, transaction_quantity, user_name, source, target\n"
      + "FROM transaction\n" + "JOIN member ON (member_id = member.id)\n"
      + "JOIN user ON (member.user_id = user.user_id)\n"
      + "JOIN team ON (member.team_id = team.team_id)\n"
      + "JOIN aliquot ON (aliquot_id = aliquot.aliquotNLot)\n"
      + "WHERE (team.team_name LIKE :teamName\n"
      + "AND transaction.transaction_date >= :firstDayOfQuarter AND transaction_date <= :lastDayOfQuarter\n"
      + "AND transaction.transaction_motif LIKE 'TEAM_WITHDRAW')\n"
      + "ORDER BY transaction_date", nativeQuery = true)
  List<Object[]> getWithdrawnTransactionsByTeamNameAndQuarter(@Param("teamName") String teamName,
      @Param("firstDayOfQuarter") String firstDayOfQuarter,
      @Param("lastDayOfQuarter") String lastDayOfQuarter);

  @Query(value = "SELECT SUM(aliquot_price * transaction_quantity) as sum, source, target\n"
      + "FROM transaction\n" + "JOIN aliquot ON (aliquot_id = aliquot.aliquotNLot)\n"
      + "WHERE (transaction.transaction_date >= :firstDayOfQuarter AND transaction_date <= :lastDayOfQuarter\n"
      + "AND transaction.member_id IS NULL\n"
      + "AND (transaction.transaction_motif LIKE 'OUTDATED' OR transaction.transaction_motif LIKE 'INVENTORY'))"
      + "GROUP BY source, target\n" + "HAVING sum > 0", nativeQuery = true)
  List<Object[]> getSumAndProductsOfOutdatedAndLostProductOfQuarter(
      @Param("firstDayOfQuarter") String firstDayOfQuarter,
      @Param("lastDayOfQuarter") String lastDayOfQuarter);
  
  @Query(value = "SELECT SUM(aliquot_price * transaction_quantity) as sum\n"
      + "FROM transaction\n" + "JOIN aliquot ON (aliquot_id = aliquot.aliquotNLot)\n"
      + "WHERE (transaction.transaction_date >= :firstDayOfQuarter AND transaction_date <= :lastDayOfQuarter\n"
      + "AND transaction.member_id IS NULL\n"
      + "AND (transaction.transaction_motif LIKE 'OUTDATED' OR transaction.transaction_motif LIKE 'INVENTORY'))", nativeQuery = true)
  BigDecimal getSumOfOutdatedAndLostProductOfQuarter(
      @Param("firstDayOfQuarter") String firstDayOfQuarter,
      @Param("lastDayOfQuarter") String lastDayOfQuarter);

}
