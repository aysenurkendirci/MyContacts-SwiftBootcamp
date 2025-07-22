//
//  KisilerDaoRepository.swift
//  My Contacts
//
//  Created by Kübra Kendirci on 17.07.2025.
//

import Foundation
import RxSwift

class KisilerDaoRepository{
    var kisilerListesi=BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        print("Kişi kaydet: \(kisi_ad) - \(kisi_tel)")
    }
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        print("Kişi Güncelle: \(kisi_id) -\(kisi_ad) - \(kisi_tel)")
    }
    
    func sil(kisi_id:Int)
    {
        print("Kisi Sil: \(kisi_id)")
        kisileriYukle()
    }
    
    func ara(aramaKelimesi:String){
        print("Kişi ara: \(aramaKelimesi)")
        
    }
    
    func kisileriYukle(){
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Aslı", kisi_tel: "2222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Asya", kisi_tel: "55555")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        kisilerListesi.onNext(liste)
        
    }
    
   
}
