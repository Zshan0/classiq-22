from pprint import pprint as print

error_depth = [
    (0.08407293307342109, 1991),
    (0.08407214882599033, 1989),
    (0.08407220638425247, 1989),
    (0.08407155032314222, 1991),
    (0.08487146090049555, 1989),
    (0.08509531506241277, 1989),
    (0.08488171955185024, 1987),
    (0.08510606179599411, 1989),
    (0.08485131967048362, 1989),
    (0.08507018096265692, 1989),
    (0.08486211119252322, 1987),
    (0.08508112325756301, 1989),
    (0.08333749992411979, 1991),
    (0.0833222384908165, 1991),
    (0.08334409631630375, 1989),
    (0.08332900327994372, 1991),
    (0.08333289996881102, 1991),
    (0.0833180495196739, 1991),
    (0.08333947655493458, 1989),
    (0.08332479146691901, 1988),
    (0.08396268640158099, 1999),
    (0.08394649492032188, 1999),
    (0.08768445642633987, 1999),
    (0.08747418178511893, 1997),
    (0.08769131893453239, 1999),
    (0.08748144916869971, 1997),
    (0.08345340039032446, 1999),
    (0.08344470590159016, 1997),
    (0.0834542722204171, 1999),
    (0.08344596223075304, 1997),
    (0.08346307391780818, 1999),
    (0.08345152400532724, 1997),
    (0.08346371005221978, 1999),
    (0.08345243364967017, 1997),
    (0.08350428153745458, 1993),
    (0.08346203525574974, 1991),
    (0.08350457455203111, 1993),
    (0.08346238977304121, 1993),
    (0.0870095966304502, 1993),
    (0.08658745072751131, 1991),
    (0.08700918254989783, 1993),
    (0.08658575958999742, 1992),
    (0.08419407806487833, 1999),
    (0.08415504140950229, 1995),
    (0.08419837527595662, 1999),
    (0.08415934095960823, 1995),
    (0.08389968672236606, 1999),
    (0.08386135783693228, 1995),
    (0.08390463162516315, 1999),
    (0.08386736548817468, 1995),
    (0.08393373043131677, 1999),
    (0.08388634940558688, 1995),
    (0.08393825038422016, 1999),
    (0.08389169218402984, 1995),
    (0.08363352831107888, 1987),
    (0.08363481959444843, 1985),
    (0.08363426627455989, 1985),
    (0.08363533369545607, 1987),
    (0.08386123958827572, 1983),
    (0.08386276474873852, 1980),
    (0.0838621926565273, 1980),
    (0.08386355207582318, 1983),
    (0.08361802632407912, 1989),
    (0.08372526277776364, 1989),
    (0.08361909977499027, 1987),
    (0.08372579993191497, 1989),
    (0.08361463917327543, 1989),
    (0.0837208043834169, 1989),
    (0.08361596625623428, 1987),
    (0.08372156127040647, 1989),
    (0.08348727606035924, 1987),
    (0.08351595333282452, 1987),
    (0.08348414273149456, 1982),
    (0.08351614360654475, 1987),
    (0.08349304117071932, 1987),
    (0.0835111151226294, 1987),
    (0.0834901179561101, 1986),
    (0.08351150980062404, 1987),
    (0.08360657024258261, 1987),
    (0.0836042758009289, 1985),
    (0.08360181210924637, 1985),
    (0.08359949261532737, 1987),
    (0.08356726934622827, 1987),
    (0.08356379635974957, 1985),
    (0.0835632158283643, 1985),
    (0.08355971537677624, 1987),
    (0.0859737068771043, 1979),
    (0.08598679285262148, 1976),
    (0.08595401754792241, 1976),
    (0.08596627742286839, 1976),
    (0.08408670408985848, 1984),
    (0.08389931263346641, 1984),
    (0.08410078149050094, 1978),
    (0.08391159756207005, 1984),
    (0.08407834570014477, 1984),
    (0.08389083292035604, 1984),
    (0.08409244959448182, 1984),
    (0.08390335899242718, 1985),
    (0.0845653995734496, 1989),
    (0.08456804716783102, 1989),
    (0.09739062197464282, 1983),
    (0.09798292862137291, 1985),
    (0.09739709825167388, 1987),
    (0.09798757945044224, 1988),
    (0.08331176271395674, 1989),
    (0.08326724309711994, 1987),
    (0.08331232928978012, 1989),
    (0.08326764731246732, 1990),
    (0.0833289266162766, 1991),
    (0.08327297770235517, 1989),
    (0.0833295022625875, 1991),
    (0.08327346760665558, 1992),
    (0.0832960919155676, 1993),
    (0.08330664480941866, 1991),
    (0.08329515674007501, 1993),
    (0.08330574067732546, 1993),
    (0.09706902034310973, 1993),
    (0.09596627782273286, 1991),
    (0.09706302436884998, 1993),
    (0.09596218023749213, 1989),
    (0.08344578516007471, 1999),
    (0.083472673196945, 1992),
    (0.0834456195954098, 1999),
    (0.08347260535658317, 1992),
    (0.0834307668981029, 1999),
    (0.08346701171951369, 1992),
    (0.08343056575180952, 1999),
    (0.0834668573909667, 1992),
    (0.08390859160089112, 1999),
    (0.08386108359413841, 1992),
    (0.0839078762801481, 1999),
    (0.08386053343841805, 1992),
    (0.08788575572450322, 1991),
    (0.08788546006131552, 1989),
    (0.08788618147737826, 1989),
    (0.08788585577848843, 1991),
    (0.08820330409145592, 1987),
    (0.08820200480213357, 1985),
    (0.08820391676498571, 1985),
    (0.08820252220904966, 1987),
    (0.08338591004616304, 1990),
    (0.08340548083575988, 1991),
    (0.08339494792140711, 1989),
    (0.08340467211798976, 1991),
    (0.08338349289380166, 1991),
    (0.08340202892849442, 1991),
    (0.08339245323878222, 1989),
    (0.08340115805812283, 1993),
    (0.08336502299027157, 1992),
    (0.08344046110063111, 1989),
    (0.08431462048513928, 1985),
    (0.08343893165733371, 1989),
    (0.0833623070439116, 1989),
    (0.0834377225623777, 1989),
    (0.08337042971349483, 1987),
    (0.08343612831025131, 1989),
    (0.08371849970751319, 1983),
    (0.08372076913828304, 1980),
    (0.08372067108714952, 1980),
    (0.0837224728616716, 1983),
    (0.09230060112120246, 1991),
    (0.09227423697322756, 1991),
    (0.08550918298976178, 1986),
    (0.08533628971058317, 1987),
    (0.08549904221307048, 1989),
    (0.08532467934722265, 1990),
    (0.08326030383057917, 1991),
    (0.0832646145851341, 1989),
    (0.08326032534425692, 1991),
    (0.08326466665022692, 1992),
    (0.08325961639899958, 1993),
    (0.08326467309268855, 1991),
    (0.08325959018229523, 1993),
    (0.08326464232890866, 1993),
    (0.08445290659694096, 1993),
    (0.08467722398456283, 1991),
    (0.08445812942689931, 1993),
    (0.08468866960233964, 1989),
    (0.08613858500428496, 1999),
    (0.08582169866688491, 1990),
    (0.08615595336925717, 1999),
    (0.08584174781560011, 1990),
    (0.08345052496225261, 1999),
    (0.08346935528642055, 1993),
    (0.083447032700974, 1999),
    (0.08346490157679182, 1993),
    (0.08347972562107371, 1999),
    (0.08348333983272235, 1993),
    (0.0834766397772634, 1999),
    (0.08347965571157834, 1993),
    (0.08627977247167125, 1991),
    (0.08627983615852833, 1989),
    (0.08627983615852843, 1989),
    (0.08627977247167139, 1991),
    (0.08359458022513698, 1987),
    (0.08359049752344873, 1985),
    (0.08359214248368586, 1985),
    (0.08358804175772053, 1987),
    (0.08354999074997596, 1987),
    (0.08354664306105795, 1984),
    (0.08354621926927057, 1984),
    (0.08354285219654593, 1987),
    (0.0838541655426085, 1987),
    (0.083854653788473, 1985),
    (0.08385508228237494, 1985),
    (0.08385557773492561, 1987),
    (0.08380731249868668, 1991),
    (0.08380784078416172, 1989),
    (0.08380825165188122, 1989),
    (0.08380872669926799, 1991),
    (0.08407489856994127, 1999),
    (0.08405727085719887, 1999),
    (0.08468132321182555, 1989),
    (0.08468418297678236, 1986),
    (0.09198993318921694, 1988),
    (0.091961524964483, 1991),
    (0.08328521325603536, 1999),
    (1.128757922716013, 1999),
    (0.8953436043825221, 1999),
    (0.18277807995713485, 1996),
    (0.1832050442618596, 1999),
    (0.18275823154747456, 1995),
    (0.18315167894657364, 1999),
    (0.8952963712979506, 1998),
    (0.20828944944166447, 1998),
    (0.20802295537633458, 1999),
    (0.828487818437599, 1999),
    (0.1710019684522011, 1999),
    (0.17173663425089322, 1999),
    (0.19700218139871167, 1996),
    (0.19642915036607667, 1999),
    (0.19693685147798878, 1997),
    (0.19635351900320583, 1999),
    (0.0835362422173054, 1989),
    (0.08354774670041361, 1999),
    (0.0835285240159815, 1989),
    (0.08355329771598827, 1999),
    (0.6387098804437321, 1999),
    (0.6385063336444475, 1999),
    (0.24538557201527625, 1996),
    (0.2444759193172917, 1999),
    (0.1883452545498627, 1999),
    (0.18930677910102583, 1999),
    (0.18836545351482933, 1999),
    (0.1893440324542468, 1999),
    (0.16638479333730594, 1999),
    (0.16687667932170266, 1999),
    (1.1285972752351008, 1999),
    (0.255702387251883, 1998),
    (0.18799298134792344, 1999),
    (0.18874700881723172, 1998),
    (0.18799298177807702, 1999),
    (0.18874700919250204, 1998),
    (0.18074365729336306, 1999),
    (0.18018404172403715, 1999),
    (0.30440852073727453, 1999),
    (0.30363626298188634, 1999),
    (0.8953436043825215, 1999),
    (0.895296371297949, 1998),
    (0.23532982222252374, 1999),
    (0.23532982238483216, 1996),
    (0.21666007112619634, 1999),
    (0.21666007117876745, 1998),
    (0.21739620749956315, 1999),
    (0.21678466092315501, 1998),
    (0.21733217874091637, 1999),
    (0.21671121026440535, 1998),
    (0.19749456478132515, 1999),
    (0.19823985687386725, 1999),
    (0.19749456330561643, 1999),
    (0.19823985638888583, 1999),
    (0.828842862274703, 1998),
    (0.2387606523297774, 1998),
    (0.17604123685251447, 1999),
    (0.17707577974812483, 1999),
    (0.2758728786466676, 1996),
]

ed_correspondence = [
    (error_depth[i][1], error_depth[i][0], i) for i in range(len(error_depth))
]
ed_correspondence.sort()

print(ed_correspondence)
