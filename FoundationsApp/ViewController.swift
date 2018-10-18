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
   
    
    let story1 = Story(imageReceived: #imageLiteral(resourceName: "Nuri-2"), headlineReceived: "Um projeto para potencializar estrelas", briefReceived: "Como Nuricel Aguilera criou o Alpha Lumen, um negócio para para descobrir e estimular jovens talentos na comunidade.", textReceived: "Em 1995, Nuricel criou uma ONG chamada Escola Aberta, em que trabalhava com escolas de periferia no Vale do Ribeira. Para tentar fomentar a autoestima dos alunos e seu interesse pela universidade, ela começou a investir mais na “garotada que se sobressaía, com altas habilidades”. Foi nessa época que Nuri iniciou sua atuação também como team leader em olimpíadas internacionais, nas quais conquistou diversos campeonatos com os alunos que preparava, em diferentes áreas e em diversos países como Rússia, China, Índia, Suécia, etc.\n\nFoi aí que Nuri começou a formar sua rede e fazer o que a Alpha faz hoje: juntar a garotada dos campeonatos com os alunos de escola pública para que estes também tivessem suas habilidades desenvolvidas.\n\nNuri conta que ela mesma, quando criança, era vista como a estranha devido a sua precocidade de pensamento. Para ela, as pessoas não entendem a noção de “altas habilidades” e minimizam o conhecimento e inteligência precoce das crianças. Mas Nuri seguiu remando no contra fluxo da sociedade para defender que as pessoas não eram iguais e que as altas habilidades deveriam ser percebidas e trabalhadas para o bem.\n\n“É um processo muito solitário ser diferente, porque você tem preocupações e anseios que as outras pessoas não têm. Você reflete sobre coisas que a outra criança ainda não está nem aí. Se você não tiver pais que te entendam e uma estrutura que te acompanhe, fica muito complicado. E eu queria dar solução, eu queria dar suporte para essa garotada. Se você consegue captar essas pessoas, elas vão trabalhar em prol da sociedade e com ética e valores.”\n\nFinalmente, entre 2013 e 2014, Nuri conseguiu iniciar seu projeto do Alpha (já falamos sobre ele aqui no blog antes, relembre aqui): com 18 estudantes.\n\n“O objetivo era o mesmo do da Escola Aberta: descobrir a garotada com altas habilidades e instrumentalizá-la para que ela pudesse realmente fazer a diferença no mundo; como uma grande rede de pessoas que [pudesse], com ética, atitude, postura e protagonismo, fazer a mudança em todas as áreas.”\n\nNo começo, a instituição sofreu dificuldades para continuar, mas a Nuri não desistiu: ela e sua família juntaram todas as economias para investir no Alpha. Nesta época, seu filho parou a faculdade e seu marido foi tocar uma empresa no interior para segurar as contas da família.\n\nEla brinca ao lembrar da reação de seus conhecidos ao ir na instituição, que ainda contava com uma estrutura precária. Sem ligar para as críticas ou deboches, eles seguiram com o projeto e abriram de fato as portas em três meses, na mesma sede que têm até hoje. Para ela, o mais legal foi ver a garotada, e suas famílias, ajudando a pintar e a fazer todo o rejunte no colégio.\n\nA partir daí, o crescimento do Alpha foi exponencial, engajando pessoas que encontravam sentido no projeto, entre alunos, professores e parceiros. No segundo ano, eles foram para oitenta alunos e depois para 270. Nuri defende que poderiam ter crescido até mais, mas preferiram prezar pela qualidade. No Alpha, eles não têm a preocupação de preencher todas as vagas a qualquer custo, acima disto, é preciso que o jovem tenha o perfil requisitado. Hoje, o Alpha conta com 450 alunos e projetos em diversas áreas.")
    let story2 = Story(imageReceived: #imageLiteral(resourceName: "WhatsApp Image 2018-10-15 at 18.05.01"), headlineReceived: "Meu crochê, minha vida", briefReceived: "Como Daiane usou os ensinamentos da avó para ajudar nas finanças", textReceived: "Daiane, 30 anos, desempregada, casada, tem 3 filhos e é moradora da Ocupação Vila Sul, localizada em Recife.\n\nDaiane aprendeu os primeiros pontos de crochê ainda criança, observando a sua avó fazer as barras dos panos de prato da própria casa e dos parentes mais próximos. Diante da situação financeira da família, Daiane enxergou no crochê a possibilidade pra gerar renda e resolveu resgatar tudo o que aprendeu, já que, segundo ela, começou a ver que as peças produzidas em crochê estavam em alta no mercado da moda e de decoração.\n\nHoje, Daiane faz peças de vestuário e para casa com esse bordado. Ela produz colchas para cama, peças para cobrir utensílios domésticos e eletrodomésticos, e também croppeds, biquinis e saias.\n\n“Eu procuro sempre aprender pontos novos, porque dependendo do que eu vá fazer é preciso usar um ponto que eu ainda não sei. Aí eu sempre pesquiso vídeos na internet pra aprender coisas novas. Pra modelar as peças de roupa, eu utilizo alguma outra peça da pessoa que seja parecida com o que eu vou fazer. Eu não tenho nenhum conhecimento de modelagem, vou fazendo tudo no olho mesmo.”\n\n Apesar de utilizar o crochê pra ajudar na renda familiar, Daiane conta que não consegue se dedicar tanto ao trabalho, porque tem que cuidar dos 3 filhos pequenos e das tarefas domésticas, portanto, não tem um horário fixo de trabalho diário. “Eu faço na hora que dá! Geralmente é à noite, depois dos meus filhos dormirem. Aí eu ligo a televisão e vou bordando enquanto assisto a novela. Isso dá em torno de 3h de trabalho por dia, aí eu demoro bastante pra terminar o que eu tô fazendo. Eu sei que é pouco e que eu preciso me dedicar mais pra poder conseguir vender melhor, mas vou levando do jeito que dá.”\n\nAlém de não priorizar o seu trabalho e não encará-lo como um negócio potencialmente bom e que pode trazer bons lucros, Daiane conta que tem dificuldade de precificar o seu produto, já que, normalmente vende para as vizinhas da ocupação e familiares, como também não tem a noção do valor de seu tempo de trabalho que precisa ser considerado na hora de colocar o preço final. ”Eu faço o cálculo do que eu gastei com a linha e coloco um valor em cima disso. Se eu gastei uns R$6-8 de linha, vendo o produto por R$20. Eu queria ter esse conhecimento, queria que alguém me ajudasse a conseguir fazer desse meu dom um negócio que me ajude financeiramente, porque eu amo fazer crochê e ganhar um bom dinheiro fazendo o que a pessoa ama deve muito bom. Espero que alguém veja a minha história e se proponha a me ajudar e eu vou ser eternamente grata.”")
    
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


