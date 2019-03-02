package fr.uniamu.ibdm.gsa_server.controllers;

import fr.uniamu.ibdm.gsa_server.dao.QueryObjects.StatsWithdrawQuery;
import fr.uniamu.ibdm.gsa_server.requests.JsonData.TransactionData;
import fr.uniamu.ibdm.gsa_server.requests.JsonResponse;
import fr.uniamu.ibdm.gsa_server.requests.RequestStatus;
import fr.uniamu.ibdm.gsa_server.requests.forms.AddProductForm;
import fr.uniamu.ibdm.gsa_server.requests.forms.PeriodForm;
import fr.uniamu.ibdm.gsa_server.requests.forms.WithdrawStatsForm;
import fr.uniamu.ibdm.gsa_server.services.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/admin")
@CrossOrigin(allowCredentials = "true", origins = {"http://localhost:4200"})
public class AdminController {

    @Autowired
    HttpSession session;

    @Autowired
    AdminService adminService;

    /**
     * REST endpoint for /stats call, return stats needed for building admin chart.
     *
     * @param form The information needed to compute data.
     * @return a JSON formatted response.
     */
    @PostMapping("/stats")
    public JsonResponse<List<StatsWithdrawQuery>> getWithdrawStats(@RequestBody WithdrawStatsForm form) {

        System.out.println(form.getProductName());
        return new JsonResponse<>(RequestStatus.SUCCESS, adminService.getWithdrawStats(form));
    }

    /**
     * /Endpoint returning all of species names.
     *
     * @return JSON response containing all of species name.
     */
    @GetMapping("/allspeciesnames")
    public JsonResponse<List<String>> getAllSpeciesNames() {
        List<String> names = adminService.getAllSpeciesNames();
        if (names != null) {
            return new JsonResponse<>(RequestStatus.SUCCESS, names);
        } else {
            return new JsonResponse<>("Could not retrieve all of species names", RequestStatus.FAIL);
        }
    }

    /**
     * Endpoint enabling well-formatted POST requests to add a product.
     *
     * @param form contains "targetName" and "sourceName" keys.
     * @return if successful, a JSON response with a success status, otherwise a
     * JSON response with a fail status and the sent form as data.
     */
    @PostMapping("/addproduct")
    public JsonResponse<AddProductForm> addProduct(@RequestBody AddProductForm form) {
        JsonResponse<AddProductForm> failedRequestResponse = new JsonResponse<>(RequestStatus.FAIL);
        failedRequestResponse.setData(form);

        String sourceName = form.getSourceName();
        String targetName = form.getTargetName();

        if (sourceName == null || targetName == null) {
            failedRequestResponse.setError("Missing attributes within request body");
            return failedRequestResponse;
        }

        boolean success = adminService.addProduct(sourceName, targetName);
        if (success) {
            return new JsonResponse<>(RequestStatus.SUCCESS);
        } else {
            failedRequestResponse.setError("Could not add the product");
            return failedRequestResponse;
        }
    }

    /**
     * Endpoint for /history. Return a list of withdrawals depending of the period given in argument.
     *
     * @param form the form containing the date of begin and the date of end of the period.
     * @return if successful, a JSON response with a success status, otherwise a
     * JSON response with a fail status and an error message.
     */
    @PostMapping("/history")
    public JsonResponse<List<TransactionData>> getWithdrawalsHistory(@RequestBody PeriodForm form) {
        List<TransactionData> withdrawalsHistory;
        
        if(form.getBegin() != null && form.getEnd() != null) {
            withdrawalsHistory = adminService.getWithdrawalsHistoryBetween(form.getBegin(), form.getEnd());
        }
        else if(form.getBegin() != null && form.getEnd() == null) {
            withdrawalsHistory = adminService.getWithdrawalsHistorySince(form.getBegin());
        }
        else if(form.getBegin() == null && form.getEnd() != null) {
            withdrawalsHistory = adminService.getWithdrawalsHistoryUpTo(form.getEnd());
        }
        else {
            withdrawalsHistory = adminService.getWithdrawalsHistory();
        }

        if (withdrawalsHistory != null) {
            return new JsonResponse<>(RequestStatus.SUCCESS, withdrawalsHistory);
        }
        else {
            return new JsonResponse<>("Could not find all withdrawals", RequestStatus.FAIL);
        }
    }

}
