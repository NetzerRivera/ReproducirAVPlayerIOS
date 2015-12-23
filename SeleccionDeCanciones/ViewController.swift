//
//  ViewController.swift
//  SeleccionDeCanciones
//
//  Created by Netzer Rivera on 22/12/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    // Declaramos una variable para decirle que sera de audio
    
    private var reproductor: AVAudioPlayer!
    
    @IBOutlet weak var lblGrupo: UILabel!
    @IBOutlet weak var imgPortada: UIImageView!

    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var boton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    // inicializamos para encontrar el path
    
   /*
    let sonidoUnoURL = NSBundle.mainBundle().URLForResource("Grasshopper", withExtension: "mp3")
    
    // conexión
        
    do{
        try reproductor = AVAudioPlayer(contentsOfURL: sonidoUnoURL!)
        
      }catch
       {
        print("error al cargar el audio")
        }
      }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play() {
        
        if !reproductor.playing{
            reproductor.play()
        }
    }
    
    @IBAction func pause() {
        if reproductor.playing{
        reproductor.pause()
        
        }
        
    }

    @IBAction func stop() {
        if reproductor.playing{
        reproductor.stop()
            reproductor.currentTime = 0.0
        
        }
        
        
        //boton 2
        
        
        
      */
    }
    @IBAction func GrupoUno(sender: UIButton) {
        
        self.lblGrupo.text = "Mi grupo Jazz"
        self.imgPortada.image = UIImage(named: "g11.jpg")
        //play()
        // inicializamos para encontrar el path
        
        
        let sonidoUnoURL = NSBundle.mainBundle().URLForResource("Grasshopper", withExtension: "mp3")
        
        // conexión
        
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoUnoURL!)
            
        }catch
        {
            print("error al cargar el audio")
        }
        if !reproductor.playing{
            reproductor.play()
        }
    }

   
    

    
    // boton 2
    
    
    
    @IBAction func Grupo2(sender: UIButton) {
        self.lblGrupo.text = "Sinsajo"
        self.imgPortada.image = UIImage(named: "sinsajo.jpg")
      
        let sonidoUnoURL = NSBundle.mainBundle().URLForResource("diagnostic", withExtension: "mp3")
        
        // conexión
        
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoUnoURL!)
            
        }catch
        {
            print("error al cargar el audio")
        }
        if !reproductor.playing{
            reproductor.play()
           }


        
    }
    @IBAction func grupo3(sender: UIButton) {
        
        
        self.lblGrupo.text = "Gangs"
        self.imgPortada.image = UIImage(named: "gangsFrente")
        
        let sonidoUnoURL = NSBundle.mainBundle().URLForResource("begin", withExtension: "mp3")
        
        // conexión
        
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: sonidoUnoURL!)
            
        }catch
        {
            print("error al cargar el audio")
        }
        if !reproductor.playing{
            reproductor.play()
        }
        
    }
    
    @IBAction func stop() {
        if reproductor.playing{
            reproductor.stop()
            reproductor.currentTime = 0.0
            
        }
   }
    
    
    @IBAction func pause() {
        if reproductor.playing{
            reproductor.pause()
            
        }
        
    }
    @IBAction func play() {
        
        if !reproductor.playing{
            reproductor.play()
        }
    }
    
    @IBAction func Volumen(sender: UISlider) {
        
      let volumenSlider = sender.value
        reproductor.volume = volumenSlider
        
    }
    
    
    @IBAction func Aleatorio(sender: UIButton) {
        
        
    }
   

    
    
    
 }

