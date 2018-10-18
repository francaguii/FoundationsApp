//
//  ViewController.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/1/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import UIKit

extension ViewController: UISearchResultsUpdating{
    func  updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}

extension UIView {
    func round(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var storyTableView: UITableView!
   
    
    let story2 = Story(imageReceived: #imageLiteral(resourceName: "WhatsApp Image 2018-10-15 at 18.05.01"), headlineReceived: "Meu crochê, minha vida", briefReceived: "Como Daiane usou os ensinamentos da avó para produzir produtos e ajudar nas finanças da sua casa", textReceived: "Daiane, 30 anos, desempregada, casada, tem 3 filhos e é moradora da Ocupação Vila Sul, localizada em Recife. Daiane aprendeu os primeiros pontos de crochê ainda criança, observando a sua avó fazer as barras dos panos de prato da própria casa e dos parentes mais próximos.\n\nDiante da situação financeira da família, Daiane enxergou no crochê a possibilidade pra gerar renda e resolveu resgatar tudo o que aprendeu, já que, segundo ela, começou a ver que as peças produzidas em crochê estavam em alta no mercado da moda e de decoração.\n\nHoje, Daiane faz peças de vestuário e para casa com esse bordado. Ela produz colchas para cama, peças para cobrir utensílios domésticos e eletrodomésticos, e também croppeds, biquinis e saias.\n\n“Eu procuro sempre aprender pontos novos, porque dependendo do que eu vá fazer é preciso usar um ponto que eu ainda não sei. Aí eu sempre pesquiso vídeos na internet pra aprender coisas novas. Pra modelar as peças de roupa, eu utilizo alguma outra peça da pessoa que seja parecida com o que eu vou fazer. Eu não tenho nenhum conhecimento de modelagem, vou fazendo tudo no olho mesmo.”\n\n Apesar de utilizar o crochê pra ajudar na renda familiar, Daiane conta que não consegue se dedicar tanto ao trabalho, porque tem que cuidar dos 3 filhos pequenos e das tarefas domésticas, portanto, não tem um horário fixo de trabalho diário. “Eu faço na hora que dá! Geralmente é à noite, depois dos meus filhos dormirem. Aí eu ligo a televisão e vou bordando enquanto assisto a novela. Isso dá em torno de 3h de trabalho por dia, aí eu demoro bastante pra terminar o que eu tô fazendo. Eu sei que é pouco e que eu preciso me dedicar mais pra poder conseguir vender melhor, mas vou levando do jeito que dá.”\n\nAlém de não priorizar o seu trabalho e não encará-lo como um negócio potencialmente bom e que pode trazer bons lucros, Daiane conta que tem dificuldade de precificar o seu produto, já que, normalmente vende para as vizinhas da ocupação e familiares, como também não tem a noção do valor de seu tempo de trabalho que precisa ser considerado na hora de colocar o preço final. ”Eu faço o cálculo do que eu gastei com a linha e coloco um valor em cima disso. Se eu gastei uns R$6-8 de linha, vendo o produto por R$20. Eu queria ter esse conhecimento, queria que alguém me ajudasse a conseguir fazer desse meu dom um negócio que me ajude financeiramente, porque eu amo fazer crochê e ganhar um bom dinheiro fazendo o que a pessoa ama deve muito bom. Espero que alguém veja a minha história e se proponha a me ajudar e eu vou ser eternamente grata.”", phoneReceived: "+5581997327762")
    let story1 = Story(imageReceived: #imageLiteral(resourceName: "Nuri-2"), headlineReceived: "Personalização de Garrafas", briefReceived: "Usando a criatividade, Mery aprendeu a customizar garrafas de bebida e contribuir coma renda da família.", textReceived: "Moradora de uma pequena cidade no interior da Bahia, Mery aprendeu a lucrar personalizando garrafas de bebida para decoração, um trabalho que ajuda o meio ambiente e deixa os lares mais bonitos. \n\nO marido de Mery, Rubens, trabalha em um bar na cidade. Todos os dias, ele leva para casa várias garrafas e latinhas deixadas pelos clientes, para vender a recicladoras. Foi olhando o quintal cheio de garrafas que Mery viu uma oportunidade: Personalizá-las e vender por um preço maior para contribuir com a renda familiar. \n\nAs garrafas são customizadas artesanalmente usando materiais comuns, encontrados em armarinhos de confecção. Linhas, barbantes e fitas são os mais utilizados, mas muitas são feitas com tecidos e EVA. \n\nMery foi perguntada como tudo começou: “No início eu não pensava em vender, decorava as garrafas apenas para decorar minha própria casa, até que resolvi mostrar as vizinhas o que eu fazia. Elas adoraram, e encomendaram várias.” Hoje ela vende suas garrafas para várias pessoas da cidade, que ficaram sabendo dos artigos de decoração no boca-a-boca. \n\n“Sempre procuro garrafas que outras pessoas decoram na internet para me inspirar, e quando preciso aprender a fazer algo novo vejo tutoriais no YouTube.”, diz a artesã. Hoje ela vende as garrafas decoradas por 10 reais cada, e cobra 15 pelas encomendadas, conseguindo assim autonomia financeira e contribuindo com a casa.", phoneReceived: "+55749988363342")

    let story3 = Story(imageReceived:#imageLiteral(resourceName: "rodrigo.jpg"), headlineReceived: "Ex-presidiário encontra no empreendedorismo a transformação para sua vida", briefReceived: "Rodrigo dos Santos Ramos tem uma usina de reciclagem na Zona Leste de Porto Alegre", textReceived: "Criados apenas pela mãe, Sabiah e o irmão, Felipe Ramos, 31 anos, faziam suas próprias escolhas enquanto ela saía para trabalhar. Entre 2006 e 2011, Sabiah ficou preso devido a um assalto. Em 2009, enquanto cumpria a pena na Penitenciária Estadual do Jacuí, conheceu o projeto MCs Para a Paz - Multiplicadores de Cidadania Para a Paz. A assistência recebida no grupo foi determinante para a mudança que necessitava - e ansiava. \"Eu sempre digo: tu quer mudar de vida? Tem que mudar de vida lá, no momento que tu está, no momento presente - não adianta dizer que vai mudar quando sair\", ressalta. \n\nNuma ocasião, assistindo ao futebol entre detentos, recebeu um exemplar de Somos todos inocentes, da autora Zibia Gasparetto, com o pedido para que cuidasse por um instante. Cuidou por um período maior. \"Em uma semana, li o livro. E para quem nunca leu um livro, aquilo foi uma vitória.\" Dali em diante, buscou mais e mais livros, com diferentes temas e histórias. Terminou o Ensino Médio, buscou ajuda psicológica e se conectou com a leitura e a escrita.\n\nDentro da prisão, reencontrou o irmão, também encarcerado. Quando saiu, tudo que havia planejado precisava ser posto em prática. Arrumar um emprego era primordial, e a primeira oferta foi em uma usina de reciclagem. \"Por dois dias, fiquei pensando, matutando (sobre aceitar ou não). Tudo o que eu queria era uma oportunidade. E por que não?\", lembra Sabiah, contando que o preconceito dos outros e dele próprio com a profissão o deixou ressabiado - mas aceitou o trabalho.\n\nAgora, ele e o irmão são donos de uma usina de reciclagem na Zona Leste de Porto Alegre. \"Tomei gosto pela coisa\", sintetiza. O início, claro, não foi fácil. \"Quando a gente ia vender nosso material, íamos e voltávamos de ônibus, com sacolas pesadas para o depósito, porque não tínhamos meio de transporte próprio\", descreve. Pagavam R$ 500,00 por semana de aluguel num galpão de 20 metros de comprimento por 15 metros de largura. \"Hoje, nós compramos o galpão (por R$ 50 mil), reformamos e compramos mais um terreno na frente para depósito (por R$ 100 mil, ainda não quitados). E ainda compramos uma casa para nossa mãe\", orgulha-se. \"Tudo fruto desse trabalho. Suamos muito para conseguir tudo isso.\"\n\nAtravés do empreendedorismo, Sabiah tenta transformar outras pessoas. \"Eu trago para trabalhar comigo ex-detentos, com tornozeleiras, garotos de abrigo, da Fase, ex-morador de rua\", comenta. Prova viva de uma mudança possível, ele dá inclusive palestras. Já conversou com alunos de Direito do IPA e, em 2016, falou no TEDxLaçador.", phoneReceived: "+55749988882341")
    

    
    // Search
    
    let searchController = UISearchController(searchResultsController: nil)

    var stories: [Story] = []
    var filteredStories = [Story]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Search
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar"
        searchController.searchBar.tintColor = #colorLiteral(red: 0.7960784314, green: 0.3098039216, blue: 0.5490196078, alpha: 1)
        searchController.searchBar.setValue("Cancelar", forKey: "_cancelButtonText")
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        // Stories
        
        stories.append(story1)
        stories.append(story2)
        stories.append(story3)
        
        storyTableView.delegate = self
        storyTableView.dataSource = self
        
    }
    
    
//CÓDIGO PARA TEXT FIELD DE SUBMISSÃO DE HISTÓRIAS
    
   // var i = 1
   // var y = 136
    
   // override func viewDidLoad() {
     //   super.viewDidLoad()
       // managedtextfield()
       // managelabel()
       // managebutton()
        
   // }
   // func managedtextfield(){
     //   for i in 1...4{
       // let myfield:UITextField = UITextField(frame:CGRect(x: 23, y: y, width: 340, height: 30))
       // myfield.borderStyle = .roundedRect
            
       // self.view.addSubview(myfield)
       // y = y + 52
            
         //   if i == 1{//Primeira textfield
           //     myfield.placeholder = "Nome"
           //     myfield.tag = 1
           // }
           // else if i == 2{//Segunda textfield
           //     myfield.placeholder = "Idade"
           //     myfield.tag = 2
           // }
           // else if i == 3{//Terceira textfield
           //     myfield.placeholder = "Telefone para contato"
           //     myfield.tag = 3
           // }
           // else if i == 4{//Quarta textfield
           //     myfield.placeholder = "O que você faz e/ou sua história de empreendedorismo"
           //     myfield.tag = 4
           // }
       // }
            
            
   // }
    
    //TENTEI CONECTAR O BOTÃO DE ENVIAR HISTÓRIA E NÃO CONSEGUI!!!!
    
   // func managelabel(){
     //   let mylbl:UILabel = UILabel(frame: CGRect(x: 16, y: 80, width: 343, height: 21))
     //   mylbl.text = "Enviar História"
     //   mylbl.textAlignment = .center
     //   mylbl.textColor = #colorLiteral(red: 0.7960784314, green: 0.3098039216, blue: 0.5490196078, alpha: 1)
    //   self.view.addSubview(mylbl)
   // }
    
  //  func managebutton(){
    //    let mybtn:UIButton = UIButton(frame: CGRect(x:141, y: 430, width: 93, height: 30))
    //    mybtn.setTitle("Enviar", for: .normal)
    //    mybtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    //    mybtn.backgroundColor = #colorLiteral(red: 0.7960784314, green: 0.3098039216, blue: 0.5490196078, alpha: 1)
    //    mybtn.addTarget(self, action:
    //        #selector(valuechange), for: .touchUpInside)
    //    self.view.addSubview(mybtn)
  //  }
    
  //  @objc func valuechange(){
    //    print("Botão é Apertado")
  //  }
    
    
    
    
    
    
    // Search
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String = "All") {
        filteredStories = stories.filter({(story: Story) -> Bool in
            return story.headline.lowercased().contains(searchText.lowercased())
        })
        
        storyTableView.reloadData()
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    // Quantidade de cells

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering(){
            return filteredStories.count
        }
        
        return stories.count
    }
    
    // Populando a UITableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = storyTableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
        
            let story: Story
        
            if isFiltering(){
                story = filteredStories[indexPath.row]
            } else {
                story = stories[indexPath.row]
            }
        

            cell.storyImage.image = story.image
            cell.storyHeadline.text = story.headline
            cell.storyBrief.text = story.brief
        
        // customizacao da cell
        
            cell.storyCell.layer.shadowColor = UIColor.lightGray.cgColor
            cell.storyCell.layer.shadowOpacity = 1.0
            cell.storyCell.layer.shadowRadius = 20
            cell.storyCell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            cell.storyCell.layer.masksToBounds = false
            cell.storyCell.layer.cornerRadius = 10.0
        
            cell.storyImage.round(corners: [.topLeft , .topRight], radius: 10)
            cell.storyImage.clipsToBounds = true
        
            return cell
}

 
    
    // Tamanho da TableViewCell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
  //  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    
    
    
    // Controle da Segue showDetailsSegue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsSegue" {
            let backItem = UIBarButtonItem()
            backItem.title = "Voltar"
            navigationItem.backBarButtonItem = backItem
            
            let index = storyTableView.indexPathForSelectedRow!
            //let storySelected = stories[index.row]
            
            let storySelected: Story
            if isFiltering() {
                storySelected = filteredStories[index.row]
            } else {
                storySelected = stories[index.row]
            }

            let showDetailStoryViewController = segue.destination as! DetailStoryViewController
            
            showDetailStoryViewController.detailStory = storySelected
        }
            
    }
}


