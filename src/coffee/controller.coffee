angular.module 'app'
  .controller 'mainController', ($scope, $location, SearchService) ->
    $scope.selectedItem = null
    $scope.searchText = null
    $scope.querySearch = querySearch
    $scope.subjects = loadSubjects()
    $scope.selectedSubjects = []
    $scope.shortenChip = (chip) ->
      return chip.subjectShort

    $scope.submit = ->
      console.log('Button submitted!')
      SearchService.setSearchParams($scope.rmpRating, $scope.hoursWorked, $scope.selectedSubjects, $scope.allExcept)
      $location.path('results')

    $scope.addAll = ->
      shortenedSubjects = $scope.subjects.map((subject) ->
        return subject.subjectShort
      )
      $scope.selectedSubjects.push.apply($scope.selectedSubjects, shortenedSubjects)
      $scope.selectedSubjects = $scope.selectedSubjects.filter((item, pos) ->
        return $scope.selectedSubjects.indexOf(item) == pos)

    `function querySearch(query) {`
    return if query then $scope.subjects.filter(createFilterFor(query)) else []
    `}`

    `function createFilterFor(query) {`
    lowerCaseQuery = angular.lowercase(query)

    return `function filterFn(subject) {`
    return (subject._lowerSubjectShort.indexOf(lowerCaseQuery) is 0) or
    (subject._lowerSubjectLong.indexOf(lowerCaseQuery) is 0)
    `}`
    `}`

    `function loadSubjects() {`
    subjects = [
      {
        "subjectLong": "Academic Internship Program",
        "subjectShort": "AIP"
      },
      {
        "subjectLong": "African American Studies",
        "subjectShort": "AAS"
      },
      {
        "subjectLong": "Anesthesiology",
        "subjectShort": "ANES"
      },
      {
        "subjectLong": "Anthro/Biological Anthropology",
        "subjectShort": "ANBI"
      },
      {
        "subjectLong": "Anthropological Archeology",
        "subjectShort": "ANAR"
      },
      {
        "subjectLong": "Anthropology",
        "subjectShort": "ANTH"
      },
      {
        "subjectLong": "Anthropology/Sociocultural",
        "subjectShort": "ANSC"
      },
      {
        "subjectLong": "ArchitectureBsdEntrpSystmsEngr",
        "subjectShort": "AESE"
      },
      {
        "subjectLong": "Audiology",
        "subjectShort": "AUD"
      },
      {
        "subjectLong": "Bioengineering",
        "subjectShort": "BENG"
      },
      {
        "subjectLong": "Bioinformatics",
        "subjectShort": "BNFO"
      },
      {
        "subjectLong": "Biol/Ecology, Behavior, & Evol",
        "subjectShort": "BIEB"
      },
      {
        "subjectLong": "Biol/Genetics,Cellular&Develop",
        "subjectShort": "BICD"
      },
      {
        "subjectLong": "Biology/Animal Physiol&Neurosc",
        "subjectShort": "BIPN"
      },
      {
        "subjectLong": "Biology/Biochemistry",
        "subjectShort": "BIBC"
      },
      {
        "subjectLong": "Biology/Grad/General",
        "subjectShort": "BGGN"
      },
      {
        "subjectLong": "Biology/Grad/Research Discussn",
        "subjectShort": "BGRD"
      },
      {
        "subjectLong": "Biology/Grad/Seminar",
        "subjectShort": "BGSE"
      },
      {
        "subjectLong": "Biology/Lower Division",
        "subjectShort": "BILD"
      },
      {
        "subjectLong": "Biology/Molec Biol, Microbiol",
        "subjectShort": "BIMM"
      },
      {
        "subjectLong": "Biology/Special Studies",
        "subjectShort": "BISP"
      },
      {
        "subjectLong": "Biomedical Sciences",
        "subjectShort": "BIOM"
      },
      {
        "subjectLong": "Cellular & Molecular Medicine",
        "subjectShort": "CMM"
      },
      {
        "subjectLong": "Chemical Engineering",
        "subjectShort": "CENG"
      },
      {
        "subjectLong": "Chemistry and Biochemistry",
        "subjectShort": "CHEM"
      },
      {
        "subjectLong": "Chinese Studies",
        "subjectShort": "CHIN"
      },
      {
        "subjectLong": "Classical Studies",
        "subjectShort": "CLAS"
      },
      {
        "subjectLong": "Clinical Psychology",
        "subjectShort": "CLIN"
      },
      {
        "subjectLong": "Clinical Research",
        "subjectShort": "CLRE"
      },
      {
        "subjectLong": "Cognitive Science",
        "subjectShort": "COGS"
      },
      {
        "subjectLong": "Communication",
        "subjectShort": "COMM"
      },
      {
        "subjectLong": "Communication/Graduate",
        "subjectShort": "COGR"
      },
      {
        "subjectLong": "Computer Science & Engineering",
        "subjectShort": "CSE"
      },
      {
        "subjectLong": "Contemporary Issues",
        "subjectShort": "CONT"
      },
      {
        "subjectLong": "Critical Gender Studies",
        "subjectShort": "CGS"
      },
      {
        "subjectLong": "Culture, Art, & Technology",
        "subjectShort": "CAT"
      },
      {
        "subjectLong": "Dance/Choreography",
        "subjectShort": "TDCH"
      },
      {
        "subjectLong": "Dance/History",
        "subjectShort": "TDHD"
      },
      {
        "subjectLong": "Dance/Movement",
        "subjectShort": "TDMV"
      },
      {
        "subjectLong": "Dance/Theory",
        "subjectShort": "TDTR"
      },
      {
        "subjectLong": "Data Science and Engineering",
        "subjectShort": "DSE"
      },
      {
        "subjectLong": "Design",
        "subjectShort": "DSGN"
      },
      {
        "subjectLong": "Dimensions of Culture",
        "subjectShort": "DOC"
      },
      {
        "subjectLong": "Economics",
        "subjectShort": "ECON"
      },
      {
        "subjectLong": "Education Abroad Program",
        "subjectShort": "EAP"
      },
      {
        "subjectLong": "Education Studies",
        "subjectShort": "EDS"
      },
      {
        "subjectLong": "Eleanor Roosevelt College",
        "subjectShort": "ERC"
      },
      {
        "subjectLong": "Electrical & Computer Engineer",
        "subjectShort": "ECE"
      },
      {
        "subjectLong": "Emergency Medicine",
        "subjectShort": "EMED"
      },
      {
        "subjectLong": "Engineering",
        "subjectShort": "ENG"
      },
      {
        "subjectLong": "Environmental Studies",
        "subjectShort": "ENVR"
      },
      {
        "subjectLong": "Environmental Systems",
        "subjectShort": "ESYS"
      },
      {
        "subjectLong": "Ethnic Studies",
        "subjectShort": "ETHN"
      },
      {
        "subjectLong": "Exchange Programs",
        "subjectShort": "EXPR"
      },
      {
        "subjectLong": "Family and Preventive Medicine",
        "subjectShort": "FPM"
      },
      {
        "subjectLong": "Family&Prev Med Undergraduate",
        "subjectShort": "FPMU"
      },
      {
        "subjectLong": "Film Studies",
        "subjectShort": "FILM"
      },
      {
        "subjectLong": "Global Health",
        "subjectShort": "GLBH"
      },
      {
        "subjectLong": "Health Law",
        "subjectShort": "HLAW"
      },
      {
        "subjectLong": "History Topics",
        "subjectShort": "HITO"
      },
      {
        "subjectLong": "History of East Asia",
        "subjectShort": "HIEA"
      },
      {
        "subjectLong": "History of Europe",
        "subjectShort": "HIEU"
      },
      {
        "subjectLong": "History of Latin America",
        "subjectShort": "HILA"
      },
      {
        "subjectLong": "History of Science",
        "subjectShort": "HISC"
      },
      {
        "subjectLong": "History of the Near East",
        "subjectShort": "HINE"
      },
      {
        "subjectLong": "History of the United States",
        "subjectShort": "HIUS"
      },
      {
        "subjectLong": "History, Graduate",
        "subjectShort": "HIGR"
      },
      {
        "subjectLong": "History, Lower Division",
        "subjectShort": "HILD"
      },
      {
        "subjectLong": "Human Development Program",
        "subjectShort": "HDP"
      },
      {
        "subjectLong": "Humanities",
        "subjectShort": "HUM"
      },
      {
        "subjectLong": "International Studies",
        "subjectShort": "INTL"
      },
      {
        "subjectLong": "Intrnat Relat/Pac Study-Core",
        "subjectShort": "IRCO"
      },
      {
        "subjectLong": "Intrnat Relat/Pac Study-Generl",
        "subjectShort": "IRGN"
      },
      {
        "subjectLong": "Intrnat Relat/Pac Study-Lang",
        "subjectShort": "IRLA"
      },
      {
        "subjectLong": "Japanese Studies",
        "subjectShort": "JAPN"
      },
      {
        "subjectLong": "Judaic Studies",
        "subjectShort": "JUDA"
      },
      {
        "subjectLong": "Latin American Studies",
        "subjectShort": "LATI"
      },
      {
        "subjectLong": "Law and Society",
        "subjectShort": "LAWS"
      },
      {
        "subjectLong": "Leadership/Health Care Organiz",
        "subjectShort": "LHCO"
      },
      {
        "subjectLong": "Linguistics/Amer Sign Language",
        "subjectShort": "LISL"
      },
      {
        "subjectLong": "Linguistics/Arabic",
        "subjectShort": "LIAB"
      },
      {
        "subjectLong": "Linguistics/Directed Stdy-Lang",
        "subjectShort": "LIDS"
      },
      {
        "subjectLong": "Linguistics/French",
        "subjectShort": "LIFR"
      },
      {
        "subjectLong": "Linguistics/General",
        "subjectShort": "LIGN"
      },
      {
        "subjectLong": "Linguistics/German",
        "subjectShort": "LIGM"
      },
      {
        "subjectLong": "Linguistics/Heritage Languages",
        "subjectShort": "LIHL"
      },
      {
        "subjectLong": "Linguistics/Italian",
        "subjectShort": "LIIT"
      },
      {
        "subjectLong": "Linguistics/Portuguese",
        "subjectShort": "LIPO"
      },
      {
        "subjectLong": "Linguistics/Spanish",
        "subjectShort": "LISP"
      },
      {
        "subjectLong": "Literature/Comparative",
        "subjectShort": "LTCO"
      },
      {
        "subjectLong": "Literature/Cultural Studies",
        "subjectShort": "LTCS"
      },
      {
        "subjectLong": "Literature/European & Eurasian",
        "subjectShort": "LTEU"
      },
      {
        "subjectLong": "Literature/French",
        "subjectShort": "LTFR"
      },
      {
        "subjectLong": "Literature/German",
        "subjectShort": "LTGM"
      },
      {
        "subjectLong": "Literature/Greek",
        "subjectShort": "LTGK"
      },
      {
        "subjectLong": "Literature/Italian",
        "subjectShort": "LTIT"
      },
      {
        "subjectLong": "Literature/Korean",
        "subjectShort": "LTKO"
      },
      {
        "subjectLong": "Literature/Latin",
        "subjectShort": "LTLA"
      },
      {
        "subjectLong": "Literature/Russian",
        "subjectShort": "LTRU"
      },
      {
        "subjectLong": "Literature/Spanish",
        "subjectShort": "LTSP"
      },
      {
        "subjectLong": "Literature/Theory",
        "subjectShort": "LTTH"
      },
      {
        "subjectLong": "Literature/Writing",
        "subjectShort": "LTWR"
      },
      {
        "subjectLong": "Literatures in English",
        "subjectShort": "LTEN"
      },
      {
        "subjectLong": "Literatures of the World",
        "subjectShort": "LTWL"
      },
      {
        "subjectLong": "Literatures/East Asian",
        "subjectShort": "LTEA"
      },
      {
        "subjectLong": "Making of the Modern World",
        "subjectShort": "MMW"
      },
      {
        "subjectLong": "MarineBiodiversity&Conservatn",
        "subjectShort": "MBC"
      },
      {
        "subjectLong": "Materials Sci & Engineering",
        "subjectShort": "MATS"
      },
      {
        "subjectLong": "Mathematics",
        "subjectShort": "MATH"
      },
      {
        "subjectLong": "Mathematics & Science Educ",
        "subjectShort": "MSED"
      },
      {
        "subjectLong": "Mechanical & Aerospace Engin",
        "subjectShort": "MAE"
      },
      {
        "subjectLong": "Medical Device Engineering",
        "subjectShort": "MDE"
      },
      {
        "subjectLong": "Medicine",
        "subjectShort": "MED"
      },
      {
        "subjectLong": "Muir College",
        "subjectShort": "MUIR"
      },
      {
        "subjectLong": "Muir College Writing Program",
        "subjectShort": "MCWP"
      },
      {
        "subjectLong": "Music",
        "subjectShort": "MUS"
      },
      {
        "subjectLong": "NanoEngineering",
        "subjectShort": "NANO"
      },
      {
        "subjectLong": "Neurosciences",
        "subjectShort": "NEU"
      },
      {
        "subjectLong": "Ophthalmology",
        "subjectShort": "OPTH"
      },
      {
        "subjectLong": "Orthopaedics",
        "subjectShort": "ORTH"
      },
      {
        "subjectLong": "Pathology",
        "subjectShort": "PATH"
      },
      {
        "subjectLong": "Pediatrics",
        "subjectShort": "PEDS"
      },
      {
        "subjectLong": "Pharmacology",
        "subjectShort": "PHAR"
      },
      {
        "subjectLong": "Pharmacy",
        "subjectShort": "SPPS"
      },
      {
        "subjectLong": "Philosophy",
        "subjectShort": "PHIL"
      },
      {
        "subjectLong": "Physics",
        "subjectShort": "PHYS"
      },
      {
        "subjectLong": "Political Science",
        "subjectShort": "POLI"
      },
      {
        "subjectLong": "Psychiatry",
        "subjectShort": "PSY"
      },
      {
        "subjectLong": "Psychology",
        "subjectShort": "PSYC"
      },
      {
        "subjectLong": "Radiation Med & Applied Sci",
        "subjectShort": "RMAS"
      },
      {
        "subjectLong": "Radiology",
        "subjectShort": "RAD"
      },
      {
        "subjectLong": "Rady Sch of Management Finance",
        "subjectShort": "MGTF"
      },
      {
        "subjectLong": "Rady School of Management",
        "subjectShort": "MGT"
      },
      {
        "subjectLong": "Religion, Study of",
        "subjectShort": "RELI"
      },
      {
        "subjectLong": "Reproductive Medicine",
        "subjectShort": "RMED"
      },
      {
        "subjectLong": "Revelle College",
        "subjectShort": "REV"
      },
      {
        "subjectLong": "San Diego Community College",
        "subjectShort": "SDCC"
      },
      {
        "subjectLong": "Sch of Med Interdisciplinary",
        "subjectShort": "SOMI"
      },
      {
        "subjectLong": "School of Medicine Core Crses",
        "subjectShort": "SOMC"
      },
      {
        "subjectLong": "Scripps Inst of Oceanography",
        "subjectShort": "SIO"
      },
      {
        "subjectLong": "Sixth College",
        "subjectShort": "SXTH"
      },
      {
        "subjectLong": "Soc/Graduate",
        "subjectShort": "SOCG"
      },
      {
        "subjectLong": "Sociology",
        "subjectShort": "SOCI"
      },
      {
        "subjectLong": "Structural Engineering",
        "subjectShort": "SE"
      },
      {
        "subjectLong": "Surgery",
        "subjectShort": "SURG"
      },
      {
        "subjectLong": "Theatre / Acting",
        "subjectShort": "TDAC"
      },
      {
        "subjectLong": "Theatre / Design",
        "subjectShort": "TDDE"
      },
      {
        "subjectLong": "Theatre / Directing&Stage Mgmt",
        "subjectShort": "TDDR"
      },
      {
        "subjectLong": "Theatre / General",
        "subjectShort": "TDGE"
      },
      {
        "subjectLong": "Theatre / Graduate",
        "subjectShort": "TDGR"
      },
      {
        "subjectLong": "Theatre / History & Theory",
        "subjectShort": "TDHT"
      },
      {
        "subjectLong": "Theatre / Playwriting",
        "subjectShort": "TDPW"
      },
      {
        "subjectLong": "Theatre Dance/Practicum",
        "subjectShort": "TDPR"
      },
      {
        "subjectLong": "Third World Studies",
        "subjectShort": "TWS"
      },
      {
        "subjectLong": "Thurgood Marshall College",
        "subjectShort": "TMC"
      },
      {
        "subjectLong": "Urban Studies & Planning",
        "subjectShort": "USP"
      },
      {
        "subjectLong": "Visual Arts",
        "subjectShort": "VIS"
      },
      {
        "subjectLong": "Warren College",
        "subjectShort": "WARR"
      },
      {
        "subjectLong": "Warren College Writing Program",
        "subjectShort": "WCWP"
      },
      {
        "subjectLong": "Wireless Embedded Systems",
        "subjectShort": "WES"
      }
    ]

    return subjects.map((subj) ->
      subj._lowerSubjectShort = subj.subjectShort.toLowerCase()
      subj._lowerSubjectLong = subj.subjectLong.toLowerCase()
      return subj
    )
    `}`
    return 0