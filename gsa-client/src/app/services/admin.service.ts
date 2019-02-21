import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { JsonResponse } from './request-interfaces/json-response';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class AdminService {

  constructor(private http: HttpClient) { }

  private BASE_URL: String = environment.API_URL+environment.API_ADMIN;

  getWithdrawStats(data: any): Observable<JsonResponse> {
    return this.http.post<JsonResponse>(this.BASE_URL+'/stats', data, {withCredentials: true})
  }

<<<<<<< HEAD
  getAllSpeciesName(): Observable<JsonResponse> {

    return this.http.get<JsonResponse>(this.BASE_URL+'/allspeciesnames', {withCredentials: true})
  }

  addProduct(data: any): Observable<JsonResponse> {

    return this.http.post<JsonResponse>(this.BASE_URL+'/addproduct', data, {withCredentials: true})
  }
=======
  getTriggeredAlerts(): Observable<JsonResponse> {
    return this.http.get<JsonResponse>(this.BASE_URL+"/triggeredAlerts")
  }

>>>>>>> begin alerts panel
}
