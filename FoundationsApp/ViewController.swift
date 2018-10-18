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

    let story3 = Story(imageReceived:#imageLiteral(resourceName: "rodrigo.jpg"), headlineReceived: "Ex-presidiário transforma sua vida", briefReceived: "Rodrigo dos Santos Ramos tem uma usina de reciclagem na Zona Leste de Porto Alegre", textReceived: "Criados apenas pela mãe, Sabiah e o irmão, Felipe Ramos, 31 anos, faziam suas próprias escolhas enquanto ela saía para trabalhar. Entre 2006 e 2011, Sabiah ficou preso devido a um assalto. Em 2009, enquanto cumpria a pena na Penitenciária Estadual do Jacuí, conheceu o projeto MCs Para a Paz - Multiplicadores de Cidadania Para a Paz. A assistência recebida no grupo foi determinante para a mudança que necessitava - e ansiava. \"Eu sempre digo: tu quer mudar de vida? Tem que mudar de vida lá, no momento que tu está, no momento presente - não adianta dizer que vai mudar quando sair\", ressalta. \n\nNuma ocasião, assistindo ao futebol entre detentos, recebeu um exemplar de Somos todos inocentes, da autora Zibia Gasparetto, com o pedido para que cuidasse por um instante. Cuidou por um período maior. \"Em uma semana, li o livro. E para quem nunca leu um livro, aquilo foi uma vitória.\" Dali em diante, buscou mais e mais livros, com diferentes temas e histórias. Terminou o Ensino Médio, buscou ajuda psicológica e se conectou com a leitura e a escrita.\n\nDentro da prisão, reencontrou o irmão, também encarcerado. Quando saiu, tudo que havia planejado precisava ser posto em prática. Arrumar um emprego era primordial, e a primeira oferta foi em uma usina de reciclagem. \"Por dois dias, fiquei pensando, matutando (sobre aceitar ou não). Tudo o que eu queria era uma oportunidade. E por que não?\", lembra Sabiah, contando que o preconceito dos outros e dele próprio com a profissão o deixou ressabiado - mas aceitou o trabalho.\n\nAgora, ele e o irmão são donos de uma usina de reciclagem na Zona Leste de Porto Alegre. \"Tomei gosto pela coisa\", sintetiza. O início, claro, não foi fácil. \"Quando a gente ia vender nosso material, íamos e voltávamos de ônibus, com sacolas pesadas para o depósito, porque não tínhamos meio de transporte próprio\", descreve. Pagavam R$ 500,00 por semana de aluguel num galpão de 20 metros de comprimento por 15 metros de largura. \"Hoje, nós compramos o galpão (por R$ 50 mil), reformamos e compramos mais um terreno na frente para depósito (por R$ 100 mil, ainda não quitados). E ainda compramos uma casa para nossa mãe\", orgulha-se. \"Tudo fruto desse trabalho. Suamos muito para conseguir tudo isso.\"\n\nAtravés do empreendedorismo, Sabiah tenta transformar outras pessoas. \"Eu trago para trabalhar comigo ex-detentos, com tornozeleiras, garotos de abrigo, da Fase, ex-morador de rua\", comenta. Prova viva de uma mudança possível, ele dá inclusive palestras. Já conversou com alunos de Direito do IPA e, em 2016, falou no TEDxLaçador.", phoneReceived: "+55749988882341")
    
    let story4 = Story(imageReceived:#imageLiteral(resourceName: "mulheres-de-renda.jpg") , headlineReceived: "Mulheres de Renda", briefReceived: "Artesãs unidas na perpetuação da renda Renascença", textReceived: "Fundada em 2008, com 50 sócios/as, da Associação Cáritas Paroquial Cruzeiro de Poção surgiu o Grupo de Mulheres de Renda no município de Poção, no Agreste de Pernambuco. O coletivo de artesãs originou-se com a ideia de preservar e perpetuar o ofício da renda Renascença na região.\n\nO Grupo Mulheres de Renda expõe sua produção em diversas feiras, dentre elas a Feira Nacional de Negócios do Artesanato (Fenearte), que acontece em Olinda-PE. Seus produtos também são comercializados no Centro de Artesanato do Recife, onde estão reunidos os diversos tipos de artesanatos produzidos no Estado. Todos os anos, as mulheres também levam suas produções para a Exposição de Animais da capital pernambucana. São esses tipos de espaços que potencializam a comercialização das rendeiras de Poção.\n\nDe forma mais permanente, o Grupo Mulheres de Renda mantém uma loja no centro da cidade. Para otimizar as vendas, já conseguiram uma maquineta de cartão de crédito. Para manter o espaço aberto, as rendeiras se revezam no atendimento da loja.\n\nAs rendeiras de Poção cultivam um grande sonho: construir a própria sede da Associação. O terreno já foi adquirido em 2013, com recursos próprios, estando agora as rendeiras batalhando para erguer prédio.\n\nA construção da sede própria tem um objetivo fundar uma escola de ofício para ensinar adolescentes e jovens a arte e ofício da renda Renascença. A intenção é perpetuar essa arte entre as próximas gerações do município. “Precisamos valorizar cada vez mais o ofício da Renda Renascença. É preciso incentivar as nossas jovens do município a perpetuarem essa arte secular para o Nordeste e para Poção. A renda pode ser uma fonte de renda e inclusão da juventude”, acredita a rendeira Socorro Germino, presidenta da Associação.\n\nNo âmbito da formação, entre 2013 e 2015 as rendeiras participaram de intercâmbio na Paraíba para conhecerem o trabalho de outras associações de rendeiras. Também se empoderaram em relação ao Fundo Rotativo Solidário e compartilharam experiências com grupos de Sergipe e Paraíba com o apoio do Programa Semear e Procasur.", phoneReceived: "+55749988882256")
    
    let story5 = Story(imageReceived:#imageLiteral(resourceName: "WhatsApp Image 2018-10-15 at 18.06.05") , headlineReceived: "Eu quero o que não te serve", briefReceived: "Usando novas técnicas e fazendo reuso, ela traz à comunidade diferentes vasos para cultivo de plantas.", textReceived: "Cláudia, 58 anos, é amante da natureza e está sempre em busca de aprender coisas novas fazendo reuso de materiais descartados ou que estão sem utilização.“Eu não consigo parar quieta, tô sempre procurando alguma coisa pra fazer, cato as coisas que as pessoas jogam ou que não querem mais usar e invento coisas com elas. E também fico pesquisando na internet, porque minha filha me ensinou como faz pra mexer nessas coisas e assistir os vídeos.“\n\nClaudia é mais conhecida na comunidade por Irmã Claudinha e é amada por todos, porque está sempre disposta a ajudar as pessoas que moram na ocupação. Ela tem, no quintal da sua casa, uma horta na qual cultiva plantas frutíferas e medicinais, as quais ela faz questão de compartilhar com todos da comunidade.\n\nApós anos fazendo reuso de materiais como garrafas pet e caixas de leite, ela finalmente encontrou algo pelo qual tomou gosto e orgulho de fazer. Um produto que uniu sua criatividade com o reuso que ela tanto defende e a paixão pelas plantas. Ela passou a produzir vasos com tecidos, toalhas, roupas usadas e cimento.\n\n“É bem simples de fazer e o resultado é muito bonito, fica até parecendo uma obra de um artista plástico. Eu pego uma toalha velha ou qualquer outro tecido, mergulho na mistura de cimento com água, penduro num balde, vou moldando do jeito que eu quero e deixo lá secando. Depois de um dia, mais ou menos, eu tiro do balde e começo a dar o acabamento com lixa. Aí às vezes eu pinto, mas eu prefiro mesmo ele no cru.“ Claudia se orgulha muito dos vasos que cria, enxerga isso como uma provável fonte de renda e tem muito desejo de tornar esse trabalho num negócio que ajude na renda familiar, porém precisa de ajuda para se desenvolver e se tornar uma empreendedora.\n\n“É meu maior sonho conseguir vender esses vasos que eu crio e conseguir ganhar dinheiro com isso“" , phoneReceived: "+5581988524251")
    

    
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
        stories.append(story4)
        stories.append(story5)
    
        
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


