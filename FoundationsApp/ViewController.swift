//
//  ViewController.swift
//  FoundationsApp
//
//  Created by GUILHERME BARRETO FRANCA on 10/1/18.
//  Copyright © 2018 Elza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var storyTableView: UITableView!
    
    let story1 = Story(imageReceived: #imageLiteral(resourceName: "Nuri-2"), headlineReceived: "Um projeto para potencializar estrelas", briefReceived: "Foi do sonho, desejo e determinação da educadora Nuricel Aguilera que nasceu o Alpha Lumen, exemplo de empreendedorismo social para jovens talentos.", textReceived: "Em 1995, Nuricel criou uma ONG chamada Escola Aberta, em que trabalhava com escolas de periferia no Vale do Ribeira. Para tentar fomentar a autoestima dos alunos e seu interesse pela universidade, ela começou a investir mais na “garotada que se sobressaía, com altas habilidades”. Foi nessa época que Nuri iniciou sua atuação também como team leader em olimpíadas internacionais, nas quais conquistou diversos campeonatos com os alunos que preparava, em diferentes áreas e em diversos países como Rússia, China, Índia, Suécia, etc.\n\nFoi aí que Nuri começou a formar sua rede e fazer o que a Alpha faz hoje: juntar a garotada dos campeonatos com os alunos de escola pública para que estes também tivessem suas habilidades desenvolvidas.\n\nNuri conta que ela mesma, quando criança, era vista como a estranha devido a sua precocidade de pensamento. Para ela, as pessoas não entendem a noção de “altas habilidades” e minimizam o conhecimento e inteligência precoce das crianças. Mas Nuri seguiu remando no contra fluxo da sociedade para defender que as pessoas não eram iguais e que as altas habilidades deveriam ser percebidas e trabalhadas para o bem.\n\n“É um processo muito solitário ser diferente, porque você tem preocupações e anseios que as outras pessoas não têm. Você reflete sobre coisas que a outra criança ainda não está nem aí. Se você não tiver pais que te entendam e uma estrutura que te acompanhe, fica muito complicado. E eu queria dar solução, eu queria dar suporte para essa garotada. Se você consegue captar essas pessoas, elas vão trabalhar em prol da sociedade e com ética e valores.”\n\nFinalmente, entre 2013 e 2014, Nuri conseguiu iniciar seu projeto do Alpha (já falamos sobre ele aqui no blog antes, relembre aqui): com 18 estudantes.\n\n“O objetivo era o mesmo do da Escola Aberta: descobrir a garotada com altas habilidades e instrumentalizá-la para que ela pudesse realmente fazer a diferença no mundo; como uma grande rede de pessoas que [pudesse], com ética, atitude, postura e protagonismo, fazer a mudança em todas as áreas.”\n\nNo começo, a instituição sofreu dificuldades para continuar, mas a Nuri não desistiu: ela e sua família juntaram todas as economias para investir no Alpha. Nesta época, seu filho parou a faculdade e seu marido foi tocar uma empresa no interior para segurar as contas da família.\n\nEla brinca ao lembrar da reação de seus conhecidos ao ir na instituição, que ainda contava com uma estrutura precária. Sem ligar para as críticas ou deboches, eles seguiram com o projeto e abriram de fato as portas em três meses, na mesma sede que têm até hoje. Para ela, o mais legal foi ver a garotada, e suas famílias, ajudando a pintar e a fazer todo o rejunte no colégio.\n\nA partir daí, o crescimento do Alpha foi exponencial, engajando pessoas que encontravam sentido no projeto, entre alunos, professores e parceiros. No segundo ano, eles foram para oitenta alunos e depois para 270. Nuri defende que poderiam ter crescido até mais, mas preferiram prezar pela qualidade. No Alpha, eles não têm a preocupação de preencher todas as vagas a qualquer custo, acima disto, é preciso que o jovem tenha o perfil requisitado. Hoje, o Alpha conta com 450 alunos e projetos em diversas áreas.")
    let story2 = Story(imageReceived: #imageLiteral(resourceName: "example"), headlineReceived: "Lorem Ipsum", briefReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    let story3 = Story(imageReceived: #imageLiteral(resourceName: "tullawine"), headlineReceived: "Lorem Ipsum", briefReceived: "Lorem Ipsum", textReceived: "Lorem Ipsum")
    
    var stories: [Story] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stories.append(story1)
        stories.append(story2)
        stories.append(story3)
        
        storyTableView.delegate = self
        storyTableView.dataSource = self
    }
    
    // Quantidade de cells

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stories.count
    }
    
    // Populando a UITableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = storyTableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
        
        let index = indexPath.row
        
        cell.storyImage.image = stories[index].image
        cell.storyHeadline.text = stories[index].headline
        cell.storyBrief.text = stories[index].brief
        
        return cell
    }
    
    // Tamanho da TableViewCell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
    
    // Controle da Segue showDetailsSegue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailsSegue" {
            let index = storyTableView.indexPathForSelectedRow!
            let storySelected = stories[index.row]
            let showDetailStoryViewController = segue.destination as! DetailStoryViewController
            
            showDetailStoryViewController.detailStory = storySelected
        }
            
    }

        }
        

