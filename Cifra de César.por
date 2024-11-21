programa {
  inclua biblioteca Texto --> t
  inclua biblioteca Tipos 

   inteiro chave, posicao
   cadeia palavra, letra, criptografado = "" , descriptografado = ""

   cadeia alfabeto [26] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}

  funcao inicio() {
    
      criptografar()

      

      escreva("A palavra criptografada ficaria: ", criptografado)

      descriptografar()

      escreva("A palavra descriptografada ficaria: ", descriptografado )

      }
    
  funcao criptografar(){

    escreva("Informe o que você deseja criptografar: ")
    leia(palavra)

    escreva("Informe uma chave: ")
    leia(chave)
  
    para(inteiro j = 0; j < t.numero_caracteres(palavra); j++){
    posicao = chave + achar_posicao(Tipos.caracter_para_cadeia(t.obter_caracter(palavra, j)))
    posicao = posicao % 26

    criptografado += alfabeto[posicao]
      
    }

    
    
    

   
  
  }

  funcao inteiro achar_posicao (cadeia letras){
       para(inteiro i = 0; i < 26; i++){
      se(alfabeto[i] == letras){

        retorne i

    }
      }
}

  funcao descriptografar(){

    escreva("\n Informe o que você deseja descriptografar: ")
    leia(palavra)

    escreva("Informe uma chave: ")
    leia(chave)

     para(inteiro j = 0; j < t.numero_caracteres(palavra); j++){
    posicao =  achar_posicao(Tipos.caracter_para_cadeia(t.obter_caracter(palavra, j))) - chave
    posicao = posicao % 26
    se(posicao < 0){
      posicao += 26
     
    }
    
     descriptografado += alfabeto[posicao]

  }

}
  
}


  



  

