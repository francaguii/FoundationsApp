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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var storyTableView: UITableView!
    
    let story1 = Story(imageReceived: #imageLiteral(resourceName: "Nuri-2"), headlineReceived: "Um projeto para potencializar estrelas", briefReceived: "Como Nuricel Aguilera criou o Alpha Lumen, um negócio para para descobrir e estimular jovens talentos na comunidade.", textReceived: "Em 1995, Nuricel criou uma ONG chamada Escola Aberta, em que trabalhava com escolas de periferia no Vale do Ribeira. Para tentar fomentar a autoestima dos alunos e seu interesse pela universidade, ela começou a investir mais na “garotada que se sobressaía, com altas habilidades”. Foi nessa época que Nuri iniciou sua atuação também como team leader em olimpíadas internacionais, nas quais conquistou diversos campeonatos com os alunos que preparava, em diferentes áreas e em diversos países como Rússia, China, Índia, Suécia, etc.\n\nFoi aí que Nuri começou a formar sua rede e fazer o que a Alpha faz hoje: juntar a garotada dos campeonatos com os alunos de escola pública para que estes também tivessem suas habilidades desenvolvidas.\n\nNuri conta que ela mesma, quando criança, era vista como a estranha devido a sua precocidade de pensamento. Para ela, as pessoas não entendem a noção de “altas habilidades” e minimizam o conhecimento e inteligência precoce das crianças. Mas Nuri seguiu remando no contra fluxo da sociedade para defender que as pessoas não eram iguais e que as altas habilidades deveriam ser percebidas e trabalhadas para o bem.\n\n“É um processo muito solitário ser diferente, porque você tem preocupações e anseios que as outras pessoas não têm. Você reflete sobre coisas que a outra criança ainda não está nem aí. Se você não tiver pais que te entendam e uma estrutura que te acompanhe, fica muito complicado. E eu queria dar solução, eu queria dar suporte para essa garotada. Se você consegue captar essas pessoas, elas vão trabalhar em prol da sociedade e com ética e valores.”\n\nFinalmente, entre 2013 e 2014, Nuri conseguiu iniciar seu projeto do Alpha (já falamos sobre ele aqui no blog antes, relembre aqui): com 18 estudantes.\n\n“O objetivo era o mesmo do da Escola Aberta: descobrir a garotada com altas habilidades e instrumentalizá-la para que ela pudesse realmente fazer a diferença no mundo; como uma grande rede de pessoas que [pudesse], com ética, atitude, postura e protagonismo, fazer a mudança em todas as áreas.”\n\nNo começo, a instituição sofreu dificuldades para continuar, mas a Nuri não desistiu: ela e sua família juntaram todas as economias para investir no Alpha. Nesta época, seu filho parou a faculdade e seu marido foi tocar uma empresa no interior para segurar as contas da família.\n\nEla brinca ao lembrar da reação de seus conhecidos ao ir na instituição, que ainda contava com uma estrutura precária. Sem ligar para as críticas ou deboches, eles seguiram com o projeto e abriram de fato as portas em três meses, na mesma sede que têm até hoje. Para ela, o mais legal foi ver a garotada, e suas famílias, ajudando a pintar e a fazer todo o rejunte no colégio.\n\nA partir daí, o crescimento do Alpha foi exponencial, engajando pessoas que encontravam sentido no projeto, entre alunos, professores e parceiros. No segundo ano, eles foram para oitenta alunos e depois para 270. Nuri defende que poderiam ter crescido até mais, mas preferiram prezar pela qualidade. No Alpha, eles não têm a preocupação de preencher todas as vagas a qualquer custo, acima disto, é preciso que o jovem tenha o perfil requisitado. Hoje, o Alpha conta com 450 alunos e projetos em diversas áreas.")
    let story2 = Story(imageReceived: #imageLiteral(resourceName: "gilze-francisco-outubro-rosa"), headlineReceived: "Apoio a vítimas do câncer de mama", briefReceived: "Gilze começou como artesã e hoje é enfermeira e dirige o Instituto Neo Mama, em Santos", textReceived: "Aos 38 anos, descobrir que tinha câncer de mama após sentir um nódulo no seio. Depois de um mês, fiz mastectomia [retirada cirúrgica das mamas] e iniciei a quimioterapia. Foram sete meses horríveis, com efeitos colaterais muito fortes. Naquela época, há 14 anos, não havia remédios para tratar ou amenizar esses efeitos, como já existem hoje. Engordei muito depois da quimio, chegando a pesar 122 quilos, e desenvolvi hipertensão e diabetes. Fiz a cirurgia de redução de estômago há três anos e, em seguida, reconstruí a mama. Aprendi a cuidar da minha alimentação, deixar de ser sedentária e controlar o estresse. Participei de um programa de auditório em que contei minha história e, em dois dias, recebi 48 mil emails com perguntas e relatos sobre a doença. Para mim, aquilo foi um sinal. Percebi que as mulheres tinham muitas dúvidas e receios sobre o câncer e que não tinham nem mesmo com quem conversar sobre isso. Então, em 2002, resolvi criar um instituto sem fins lucrativos para atender mulheres acometidas pela doença e seus familiares, o Instituto Neo Mama, onde oferecemos gratuitamente atendimento psicológico, fisioterapia, banco de próteses e de perucas, assessoria jurídica e atendimento nutricional, entre outros serviços. Também apresento um programa de TV sobre saúde e bem-estar chamado Um Toque Pela Vida, transmitido pela internet e pela Santa Cecília TV, na Baixada Santista. Todo o dinheiro do patrocínio vai para o Instituto. Saber que essas mulheres têm o apoio e a assistência que eu não tive dá mais sentido à minha vida.")
    
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
        
            return cell
}
    
    // Tamanho da TableViewCell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
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
        


