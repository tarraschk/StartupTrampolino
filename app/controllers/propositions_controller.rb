class PropositionsController < ApplicationController

  def show
    # We don't want any database at the moment
    # TODO : refactor when a databse is added to the website
    propositions_set = Hash.new
    propositions_set['politiques-publiques'] = {
        :index => 'politiques-publiques',
        :title => "Politiques publiques",
        :resume => "Rendre les startups francaises competitives a l'international",
        :constat => "Dans une économie mondialisée, les startups françaises créent de la richesse et des emplois, et contribuent au rayonnement de notre pays. Pour autant, notre environnement législatif, fiscal et social n’est pas adapté à ces jeunes entreprises, souvent innovantes, promises à une croissance importante et rapide. Celles-ci rencontrent des difficultés quotidiennes pour pivoter, recruter et créer de l’activité en France.",
        :solution => "Afin d’être compétitives, les startups françaises doivent pouvoir disposer d’un statut spécifique leur permettant de bénéficier de démarches et contraintes allégées, simplifiées et progressives.",
        :impact => "Durant une période transitoire, les entreprises bénéficiant de ce statut pourraient prétendre à un droit du travail plus adapté, une fiscalité incitative et un accès préférencié aux investisseurs pour mieux atteindre le chemin de la croissance et de l’emploi pérenne.",
        :acteurs => "La French Tech, collège d’experts."
      }
    propositions_set['financement'] = {
        :index => 'financement',
        :title => "Financement",
        :resume => "Creer la plateforme de financement des startups",
        :constat => "Il existe de nombreuses aides financières, fragmentées chez de nombreux acteurs. Trouver les financements adaptés et au bon moment, est complexe et chronophage.",
        :solution => "Créer une plate-forme unique rassemblant les aides financières de tous les acteurs (publics, privés, locaux, nationaux et européens), re-dirigeant une startup vers le bon mécanisme de financement, en fonction de son stade d’avancement. Elle lui permettra de soumettre sa demande et d’en suivre l’avancée. Un échange d’information entre financeurs publics et privés sera possible.",
        :impact => "Meilleure synergie entre les financeurs. Gain de temps pour la startup.",
        :acteurs => "MEDEF, développeurs, startups."
      }
    propositions_set['acces-aux-marches'] = {
        :index => 'acces-marches',
        :title => "Acces aux marches",
        :resume => "Faciliter la collaboration entre grandes entreprises et startups",
        :constat => "Les cycles de ventes sont longs et il n’est pas facile de rencontrer les bons intermédiaires dans un marché BtoB.",
        :solution => "Créer des lieux de rencontres privilégiées par métier entre les startups et les grands groupes : Demo Days, salons. Avoir un référent startup unique dans chaque grande entreprise. Facilité l’accès aux services achats des grands entreprises et aux appels d’offres. Proposer à des startups de faire des premières parties de conférences et évènements.",
        :impact => "Renforcer la collaboration entre grandes et jeunes entreprises pour dynamiser notre économie.",
        :acteurs => "MEDEF, Cap Digital, Systematic, Pacte PME."
      }
    propositions_set['culture-entrepreneuriale'] = {
        :index => 'culture-entrepreneuriale',
        :title => "Culture entrepreneuriale",
        :resume => "LANCER UNE CAMPAGNE DE COMMUNICATION SUR “UN MONDE SANS ENTREPRENEURS”",
        :constat => "Un entrepreneur qui se lance est souvent perçu comme un super-héros, mais un entrepreneur qui réussit peut souffrir d’une mauvaise image.",
        :solution => "Créer une campagne de communication officielle sur “un monde sans patron”. Sensibiliser le grand public avec des programmes TV en format court sur une chaîne nationale présentant le quotidien d’entrepreneurs et la vie de leur entreprise.",
        :impact => "Valorisation des entrepreneurs à travers leur contribution quotidienne à l’intérêt général de notre société.",
        :acteurs => "France Télévisions, entrepreneurs."
      }
    propositions_set['education-et-formation'] = {
        :index => 'education-formation',
        :title => "Education et formation",
        :resume => "GENERALISER L’APPRENTISSAGE DE L’ENTREPRENEURIAT DANS LE SECONDAIRE ET L’ENSEIGNEMENT SUPERIEUR",
        :constat => "Si de nombreux programmes éducatifs du secondaire et de l’enseignement supérieur, valorisent les entreprises, ils proposent souvent une approche salariale au détriment d’une approche entrepreneuriale.",
        :solution => "Donner plus de moyens aux associations oeuvrant pour le rapprochement entre le monde de l’entreprise et celui de l’éducation à travers notamment, des témoignages d’entrepreneurs devant des élèves.",
        :impact => "Sensibiliser les jeunes à l’entrepreneuriat en multipliant les liens entre les entreprises et le monde éducatif afin de fertiliser notre écosystème entrepreneurial.",
        :acteurs => "Entrepreneurs, MEDEF, associations, rectorats, professeurs, chefs d’établissement."
      }
    propositions_set['accompagnement'] = {
        :index => 'accompagnement',
        :title => "Accompagnement",
        :resume => "Accompagner les startups en difficulte lors de leurs pivots",
        :constat => "Si les startups créent de nouvelles richesses, elles sont aussi soumises à un risque plus élevé de dépôt de bilan qui entraîne une perte sèche de leurs créations en cas de liquidation judiciaire.",
        :solution => "Mettre en place un dispositif d'accompagnement activé dès la demande d'ouverture d'une procédure de sauvegarde pour aider les startups à mieux pivoter, mieux exploiter leurs richesses, et éviter la liquidation.",
        :impact => "5% seulement des entreprises qui déposent le bilan parviennent à échapper à la liquidation judiciaire. Un accompagnement individuel de l’entrepreneur permettrait de doubler ce taux.",
        :acteurs => "CCI, Associations (60.000 Rebonds, ReCréer), Incubateurs, Greffes des Tribunaux de Commerce dans le cadre de leur suivi prévention."
      }
    @proposition = propositions_set[params[:uri]]
  end

end
