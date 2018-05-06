//
//  ViewController.swift
//  testeCollection
//
//  Created by Humberto Puccinelli on 06/05/2018.
//  Copyright © 2018 Crosoften. All rights reserved.
//

import UIKit


class CelulaCustomizada: UICollectionViewCell {
    
    var idPassado = Int()
    @IBOutlet weak var campoTexto: UILabel!
    @IBOutlet weak var botaoCelula: UIButton!
    
    @IBAction func clicouBotao(_ sender: UIButton) {
        print(idPassado)
    }
}



class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var minhaCollection: UICollectionView!
    let arrayDados = ["1","2","3","4","5","6","7","8","9","10","11"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaCollection.delegate = self
        minhaCollection.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayDados.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = minhaCollection.dequeueReusableCell(withReuseIdentifier: "celulaCustomizada", for: indexPath) as! CelulaCustomizada
        cell.backgroundColor = UIColor.red
        cell.campoTexto.text = arrayDados[indexPath.row]
        cell.idPassado = 28
        cell.botaoCelula.setTitle("Botao", for: .normal)
        
        return cell
        
  
    }
    
}



















