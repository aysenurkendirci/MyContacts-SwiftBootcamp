//
//  KisiKayitViewModel.swift
//  My Contacts
//
//  Created by Kübra Kendirci on 17.07.2025.
//

import Foundation

class KisiKayitViewModel{
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }


}
