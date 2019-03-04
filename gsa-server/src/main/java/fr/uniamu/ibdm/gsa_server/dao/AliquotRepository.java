package fr.uniamu.ibdm.gsa_server.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import fr.uniamu.ibdm.gsa_server.models.Aliquot;

@Repository
public interface AliquotRepository extends JpaRepository<Aliquot, Long> {
	/*
	 * private long aliquotNLot;
	 * 
	 * 
	 * private LocalDate aliquotExpirationDate; private long
	 * aliquotQuantityVisibleStock; private long aliquotQuantityHiddenStock; private
	 * float aliquotPrice; private String provider;
	 */

	@Query("select new fr.uniamu.ibdm.gsa_server.models.Aliquot(a.aliquotNLot, a.aliquotExpirationDate,"
			+ " a.aliquotQuantityVisibleStock, a.aliquotQuantityHiddenStock) from Aliquot a")
	List<Aliquot> getAliquots();
	
//	@Modifying
//	@Query("update fr.uniamu.ibdm.gsa_server.models.Aliquot a set a.aliquotQuantityVisibleStock =:zero where a.aliquotNLot =:aliquotNLot")
//	void makeQuantityZero(@Param("aliquotNLot") Long aliquotNLot, @Param("zero") Long zero);
//	
//	@Modifying
//	@Query(value="update fr.uniamu.ibdm.gsa_server.models.Aliquot a set a.aliquotQuantityVisibleStock = ? where a.aliquotNLot = ?", nativeQuery = true)
//	void makeQuantityZeroNative(Long aliquotNLot, Long aliquotQuantityVisibleStock);
	
//	@Modifying(clearAutomatically = true)
//    @Query("UPDATE fr.uniamu.ibdm.gsa_server.models.Aliquot a SET a.aliquotQuantityVisibleStock = :aliquotQuantityVisibleStock WHERE a.aliquotNLot = :aliquotNLot")
//	void makeQuantityZeroNative(@Param("aliquotNLot") Long aliquotNLot, @Param("aliquotQuantityVisibleStock") Long aliquotQuantityVisibleStock);

//	@Modifying(clearAutomatically = true)// save au lieu d update ( mettre la val 0 )
//    @Query("UPDATE fr.uniamu.ibdm.gsa_server.models.Aliquot a SET a.aliquotQuantityVisibleStock = :aliquotQuantityVisibleStock WHERE a.aliquotNLot = :aliquotNLot")
//	void makeQuantityZeroNative(@Param("aliquotNLot") Long aliquotNLot, @Param("aliquotQuantityVisibleStock") Long aliquotQuantityVisibleStock);
	// envoyer le nom du produit getProductName();
	// rajouter le filrage sur la date dans la query
	
	//utiliser save de repo au lieu de query, findbyid( nlot) -> apres set qt visible et hidden apres save aliquots
	//inserer des transactions pour la gestion des pertes ( ennum OUDATED pour les qts visibles et hidden )
}
