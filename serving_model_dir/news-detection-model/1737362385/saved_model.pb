ī
�-�-
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��
��
ConstConst*
_output_shapes	
:�N*
dtype0*��
value��B���NBtheBtoBofBandBaBinBthatBisBforBonBitBasBwithBwasBareBbyBheBbeBthisBnotBhaveBhasBatBhisBbutBfromBsaidBtrumpBiBanBtheyBwhoBclintonBwillBorByouBweBusBaboutBtheirBwouldBmoreBifBbeenBwereBallBherBwhatBoneBpeopleBsheBhadBwhichBitsBoutBthereBnewBsoBwhenBnoBupBcanBthanBcampaignBhillaryBourB	presidentBjustBalsoBoverBstateB—BotherBdoBafterBsomeBobamaBevenBintoBlikeBtimeBcouldBthemBnowBonlyBstatesBmostBbecauseBelectionBdonaldBanyB
governmentB–BhowBagainstBmanyBhimBthoseBtheseBtwoBamericanB
republicanBbeingBhouseB2016BgoingBfirstByearsBwhileBgetB	politicalBpartyBwhiteBmayBveryByourBworldBbeforeBthinkBdidBknowBwhereBmakeBthenBmyBpresidentialBwayBlastBmoneyBsandersB
democraticBvotersBmuchBshouldBwellBcountryBnewsBbackBsayBwarBtoldBit’sBrightByearBbetweenBmadeBunitedBbothBsupportBvoteBtakeBsuchBrussiaBmediaBseeBdownBoffBrepublicansBformerBthroughBpercentBnationalB	accordingBsinceBdayBcongressBwantBduringBgoBwhyB
washingtonBstillBmeBfederalBlawBdoesBhereBfbiBownB	candidateBdon’tBpublicBmilitaryBpolicyB	includingBpoliceBsameB	americansBamericaB	democratsBneverBeveryBnextBpartBunderBanotherBisisBsaysBuseBcruzBweekBsecurityBworkBneedBraceBemailBgoodBtooBwinB
departmentBlongBwithoutBaroundBemailsBsystemB	trump’sBfactBwhetherBmightBreallyBcomeBcaseBbigBchangeBalreadyBjohnBcourtBforeignBtimesBwomenBgopBfarBlikelyBhoweverBrubioBcalledB“theByorkBthingsBamongBsayingBpowerBoctoberBdebateBsenateBadministrationBlookBdaysBbillB
candidatesBbushBattackBhelpBendBgreatBcontrolBagainBthoughBleastB	officialsBfoundB	secretaryBissueBsocialByetBeverBgroupBusedBtuesdayBrightsBputBpointBbelieveB	somethingBnovemberBnomineeBsyriaBfewB
supportersBdebtBlifeBprimaryBrecentBofficeB	importantBclinton’sBthreeBrealBactuallyBbetterBonceBdealBaskedBmillionBleftBclearBgeneralBlessBgotBinvestigationBrussianBpressBorderBearlyBtookBseveralBlittleB
conventionBbecomeBpastBeconomicB“iBgoldBblackBothersBmustBlotBforcesBchinaBtopBpayBmrBenoughBmembersBevidenceBcnnBuntilBreportBmajorBmanBvotingBattacksBableBtodayBproblemBmondayBtakingBmakingBfreeBaddedB1BthingBrunBnightBpollsBjusticeBeachBcameBpostBiraqBagoBtaxBissuesBfourB	executiveBdoingBinformationBhealthBforceBawayBquestionBprivateBthat’sBlaterBbusinessBdontBthursdayBsecondBmonthsBcityBbestBshowBseenBprocessBplaceBbehindBvideoBnumberBimmigrationBgivenBdoneBtrumpsBgiveBhomeBnuclearBnothingBhistoryB	countriesBworkingBkeepBdirectorBsetBlesleyBiranBsenBeconomyBamBstahlBpossibleB	statementBrunningBmatterBhumanBfindBclintonsBmeansBactB	wednesdayBcourseBchildrenBacrossBweeksBsimplyBreportedBwallBtellBreportsB
nominationBpoliticsBlineBleadBsureBmajorityBinsteadBmiddleBlargeBfamilyBofficialBfutureBearlierB	delegatesBleadersBhavingBgroupsB	committeeBalmostBvotesBreleasedBreasonBoftenBinternationalBglobalBtryingBsenatorBreserveBpoliciesBhighBfightBestablishmentBarticleBratherBmonthBletBjobBstreetBstopBshareBpollBknownBkilledBhardB
foundationB	differentB10BmeetingBfaceBcontinueBcareBbookBwithinBfullBstoryBresultsBnorthBintelligenceB	hampshireB
everythingBcallBwentBtrueBsourceBfloridaBcurrentBbarackBpointsBlegalB	electionsBcomesBalwaysBdespiteBconservativeBcenterBanythingB“weBvoterBprobablyBplanBnameBleaderBdataBcloseBwonBsupremeB	potentialBpersonBmeanBhe’sBgettingB	financialB	doesn’tBcomeyBtradeBtogetherBtakenBspeechBeitherB2015B2008BsmallBitselfBfridayBdeathB	thousandsBstartBmomentBmarketBlocalBhimselfB2012BpositionBfoxBdecisionBbernieBaccessB“BwhoseBsomeoneBsaudiB	followingBwaterBclassBbankBsideBrecentlyBgroundBdefenseBfacebookBalthoughBusingBsentBkeyBfiveB	wikileaksB
themselvesBspecialBnearBcomingBanyoneBvictoryBunBmoveBexampleBborderBsaturdayBkindB	interviewBinterestBcannotBwroteBthatsBperhapsBpaulBiowaBheldBcreatedBcan’tB…BtexasBtalkBprogramBnearlyBbasedB	announcedBairB15ByoungBwesternB
understandBsouthBfurtherBconstitutionBsyrianBeuropeBbillionB5B”B
universityBstrongBoutsideBbadBturnBseemsB	publishedBplansBgovBroleBpersonalBpartiesBnationBmillionsBhesBclaimsBalongBtowardBreadB	questionsBohioBmessageBelseBdidn’tB3B2014BviolenceBtalkingBsundayBspeakerBseniorBsearchBresultBmovementBmarchBmakesBhopeBclaimedB2B
presidencyBneedsBlookingBlateBfinalBthoughtB	situationBresearchBpodestaBhoursBeveryoneBbeganBstudyBislamicBentireBelectedB	communityBcommentsBactionsBactionB4BmenBlatestBdollarsB11BwestBtwitterBsenseBpoliticiansBi’mBclaimBchiefBchanceBcauseBthirdBryanBloveBlistBcriminalBcivilB	agreementB	terroristBtedBledBfeelBeffortBcertainBbritishB0BwantsBteamB	relationsBlawsBfoodBeastBcommentBtermBsimilarBsignB	obamacareB
immigrantsBideaBholdBgovernorBforwardBconsiderBspeakingBnumbersBlostBkasichB	electoralB	corporateBcompanyBwrongBweaponsBunionBtruthBrecordBmrsBleadingBgeorgeB	companiesBalliesBwomanBtriedBresponseBpaidBopenBnationsBeventB	educationBdailyBchristieB6B100BwordsBsilverBreadyBrallyBpriceBinsideBconservativesBcitizensBbecameBbanksBtownBproblemsBjamesBcreateBcasesBsignificantBofficersBobamasBlivesB25BworkedBstaffBseriousBmorningBfightingB
especiallyBchineseBbringBbiggestB	attentionBspentBpollingBliberalBlevelBillegalBfailedBdueBaprilBaheadB20B	wisconsinBwaysBsingleBmemberBhugeBfreedomBchoiceB	certainlyBaboveB30B	there’sBhandBcreditBcollegeBareaBviewBserviceBseemedBseemBputinBorganizationB	obama’sBnatoBliveBleaveBindependentBformBfocusBenforcementBdidntBdemocratBcommonBbuildBaskBagencyBageBaccountBthreatB	septemberBreachBpowersBneededBfraudBdollarBcrisisB	authorityBwholeBturnedBsawBprisonBministerBgetsBenergyBcountyBappearsBallowB8BstrategyBshowsBriskBjobsBincreaseBheardBhappenBgunBgovernmentsBeuropeanBeffectB	difficultBcomputerB18BwatchBtaxesBspendingBsoonBsixBrateBloseBlongerBcongressionalBauthoritiesBwantedBstartedBstageBshotBshortBschoolBpreviousB	militantsBmainBheadBhappenedBexpectedB
californiaBaugustBviceBuponB	they’reBstandBriseBpostedBpaperBopportunityBnotedBmedicalBisn’tBincomeBimBgoesBfrenchBfieldB
experienceBeffortsBeasternBdrBdirectlyBdeadBcentralBwhomBoilBjuneBjulyBincludedBgaveBchairmanBbuildingBboehnerBbeyondByesBworkersBshowedBplannedB
particularBletterB
leadershipBkingBinvolvedB	interestsBimmediatelyBhitBfamiliesBbenefitsB
associatedBalBwifeBturkeyBsexualBservicesBprovideBplayBpeaceBparticularlyBmassiveBincludeBhandsBguyBcrowdBcampBbodyBviaBtryBsupplyBstudentsBstandingB	reportersBremainBoldBmindBmichaelBmassBhalfBfrontBeventsBbreakBvalueBtakesBreleaseBmodernBmaybeBlandBfearBfallBexactlyBarmyBwhateverB
throughoutBtheresBpipelineB
operationsBlaborBitsB	influenceB	increasedBforcedBdavidB	continuedBcarolinaBcallingBveteransBspokeBremainsBrealityBquiteB
protestersB	positionsBopinionB
mainstreamBknowsBjohnsonBinternetBindustryBdrugsB	describedBclearlyBbroughtBattemptB50BwrittenBwinningBsourcesBreturnBrestBquicklyBpleaseB	operationBmosulBdecadesB	coalitionB	candidacyBbecomingBballotBarabiaBaddressB	terrorismBserverBseriesBrulingBrulesBprotectB
populationBnoneBlibyaBlackBhearBchangedB	challengeBbitB	availableB	amendmentB2013BstayBstatusBshootingBruleBrevealedBreformBperiodBonlineBmuslimBgrowingBgivingBfedBfatherBcallsBbudgetB28BworthBwinsBreasonsBpubliclyBpropertyBpoorBpassedBparisBincludesBgoneBchargesBbaseBattorneyBagentsBweekendBvotedBtrustBsupposedB	suggestedBstepBsortBsonBprojectBprogramsBprettyBjudgeBiraqiBfollowBeffectsB	documentsB
conferenceBareasB12B
terroristsBsuperBrussiasBresponsibilityBpopularBkurdishBimageBfireBdonorsBcurrencyB	continuesB
completelyBciaBchrisBchildBbuiltBbattleBauthorBanswerBabilityB9BwaitBterrorB
supportingBsocietyBrepB	religiousBraiseBprotestsBpartisanBmuslimsBlivingBindeedBhigherBericB	currentlyB	confirmedBbelowBaverageBaskingB27Byou’reBvariousBtermsB	supportedBsecretBsaveBsafeBrelatedBreceivedBnorBnetworkBnaturalBlegislationBjournalB
individualBhundredsBhillary’sBfriendsBfocusedBcutBcrimesB
consideredBcheckBchangesBbritainBappearedBamountBabortionB21BweinerBviewsBtiesBspaceBsimpleBshowingBregimeB
oppositionB	meanwhileBlargelyBimpactBfellowBconflictBclickBassaultBappearBallowedBagenciesBafghanistanB7BworseBworksBwordBwarsBtotalBreviewBprotestBorganizationsBnoteBjanuaryBideasBhelpedBgrayBdoesntBcostBchargedB	campaignsBbeginB24BtroopsB	spokesmanBservedBrisingBresponsibleB
repeatedlyBpointedBphoneBnotesBnatureBmarriageBhusbandBhappensBgreenBgasBdrugBclimateB
apparentlyBaddB13BwritesBtoughBspendBseekingBpotentiallyBneitherBmeetBmarcoBlooksB	lawmakersBknewB
impossibleBfinallyBdirectBdiedBdevelopmentBdecidedBcouncilBconstitutionalBcitiesBbuyBbanBassangeBaccusedB2011ByourselfBwebsiteBsurveyBstudiesB	sometimesBprovidedBproductsBpresentBpowerfulBperBparentsBmotherBmarkBlinesBindividualsBgameBfightersBfeltB	expressedBexpectBexchangeB	employeesBeasyBdeepBdeclaredBdamageBagreedB60B“thisBwarrenBwarrantBsiteBshe’sBsendBromneyBrespectBpoolBpathBmostlyBminorityBlightBkerryBelitesBearthBdoubtBdetailsBcoverBcenturyBbrainBannouncementBagendaBaddingBacceptBwillingBwasntB	treatmentBtargetB	sanctionsB	regardingBoctBmoscowBmetBlowBlosingBjoinBfrontrunnerBeightBdistrictB	dangerousBcoreBaleppoB40BunlessBtreasuryBtestBstrengthBsignsBsevenBsafetyBregionBpushB
percentageBonesBlevelsBjebBissuedBhumaBfundsBfranceBfamiliarBdecideBdecemberBcontestBconcernB	beginningBbecomesBarmedBusaBtheyreBstatedBserveBrhetoricBrememberBracistBofficerBi’veBincreasinglyBhighlyBgreaterBfundingB	democracyB
conditionsBcastBcarsonBcarBcantBactualBaccountsBwe’reBtvB
reportedlyBreachedBputtingBpromisesB	necessaryBmarketsBfollowedB
discoveredBcriticalBcomparedB	committedB
classifiedB	christianBcapitalBbrokeBauthorizationBagreeB2009B14B	“it’sBthinkingBseekB
scientistsBpushedB
previouslyBmeasureBleavingBisraelBhourBfriendBfigureBfebruaryB
eventuallyB	emergencyBdefeatBcultureBcourtsBconductBbankingBargumentB
airstrikesB26BworstBwealthBvirginiaBversionBtrailBthanksBsuperdelegatesBsubjectBstoriesBshownBroadBranBprogressiveBprobeBpreventBpennsylvaniaBmovingBisntBhillBgodBfairB
electorateBdomesticBcubaBcostsB	concernedBappealBanthonyBaloneBadhdB
additionalBabedinB29B“aBzeroBsidesBsanBpushingBprintBprimeB
presidentsBpositiveBmultipleBminutesBmikeBlargestBjerseyBheartBgrowthBgivesBfavorBfailureBdifferencesBdeBchurchBcancerBawareBalternativeBafricanB19Bwon’tB	virtuallyBturnsBthusBtargetedBsummerBsuggestsBstandardBseasonBscandalBrefugeesBraisedBracialB	primariesBpossibilityBpayingBpassBofferedBnegativeBmexicoBlearnBintellectualBholderBherselfBgoodsBfullyBfastBendedBeasilyBdebatesBdakotaBconsideringBcommunitiesBchargeBcareerBbidBavoidBapproachBaffairsB	advantageB
wouldn’tBwarnedBwBviolentBvictimsBunderstandingBspecificBspeakB	resourcesBrelationshipBphysicalBpenceBmissionBlowerBjewishB
healthcareBfemaleBfalseBexpertsBensureB	directionBdelegateBcorruptBconsequencesBconcernsBchooseBcausedBcashBbreakingBbordersBblueBbelievedBaidesB“i’mBvaluesBtibetBtellingBsuggestBsuccessBstevensBstarBspecificallyB
revolutionB	respondedBredBratesBplaneBoutcomeBoriginalBongoingBnegotiationsBnamesBimagineBholdingBhistoricBgingrichBfactsBdesignedBcrimeB
corruptionBcorrectBconversationBcdcBbidenBarmsBByoutubeBwarningBunlikelyBunfortunatelyBtextBsystemsBstudentBstruggleBscienceBreidBreceiveBpricesBplayingBoverallBopposedBnorthernBmanagerBlet’sBjimBinternalBhomelandBhellBcreatingBcoupleBcontroversyBcontactBbehaviorBallegedBadditionB17B“youB“itByoungerB	world’sBtweetBturkishBtrillionBstandsBsoughtBsolutionBrivalB	reportingBrangeB	professorBplacesBpickBmurderBmessagesBmachinesBlossBjoeBinfrastructureBhearingBgdpBeveningBenvironmentBentirelyBdoctorsBdiseaseBdeniedBdaughterB	criticismBcontroversialBcontestsBcoldBcarriedBbillionaireBbenefitBattackedBartBarguedB	activistsB2010Bwasn’tBvanBundocumentedB
ultimatelyBtowardsBticketBtensionsBstrikeBstockBroomBrichBrequiredBrefusedBrecordsBpullB
protectionBpromiseBprogressB
productionBplatformBpageBmeantBkillingBkidsBjournalistsBislamBiodineBindiaBhospitalBhateBgainBfundBfellBeliteBdefendBcriticsBcoverageBcountBcombatBclaimingBchicagoBchangingBcanadaB
businessesBbombingBblameBangerBallowsBaidBadviceBaccusationsBwilliamsBwhat’sBwatchingBsocalledBsharesBsecureB
representsBreligionBprojectsBpatientsBpartsB	opponentsB	obviouslyBmccainBmagazineBkobaniBkeptBimBinvestigatorsBinvestigationsB	insuranceB
increasingBhighestBgoalBfeelingBfaithBexplainBendorsedB	emissionsBdiscussionsBdestructionBdangerBcontextB
connectionB	conductedBcollapseB
challengesBbornBboardBbirthBbelievesBbackedBarizonaBaideBwriteBworryBwe’veBtrialBthankBtellsBtalksBstreetsB
strategistBstoreBsmithBsignedBshiftBriggedBrepresentativesBremarksB
relativelyBproposedB
propagandaBpracticeBpossiblyBpictureBolderB	offensiveBminingBmartinBlanguageBhelpingB	happeningBgoogleB	extremelyB	expansionBessentiallyB
discussionB
differenceBdeeplyBdeclinedBcycleB	consumersBchaosBbeliefBaudienceBalabamaBwishBwereBunlikeBufoBtotallyBtalkedBstepsBsexBsellingB	residentsBreduceBqaedaBproducedBpriorBpieceBofferBnineBnewlyBmelaniaBmateBmarginBlinkBjoinedBjailBinstitutionsBgunsB	effectiveB	donationsBdiscussBdegreeBbiggerBbenghaziBassetsB2000B“ifBzikaBwoundedBwhitesBvisionBukraineBthreatsB
technologyB	standardsBsouthernBsendingBroughlyBrivalsBrespondB
resolutionBreadingBraisingBradioBprovenBperformanceB
originallyBoptionsBopponentBontoBmovedBmoralBmcmahonB	mcconnellBmaintainBlearnedBkeepingB
journalistB
identifiedBhumanitarianBhotBholdsBhallBfindingBfighterBfacingBexistBdozensBdoubleBdontBdestroyBdcBdateBcloserB	civiliansBcampsBbooksBbenBbasicBanalysisBamidBafricaBactsB
activitiesB45ByemenBwontB
widespreadBwakeBvermontBtraditionalBtargetsBsmartBsimlaB	shootingsBseeingBrockBrepresentativeB	remainingBratingBproveBpressureBpopeBpledgedBpacB	ourselvesBmomentumB	mentionedBmeasuresBlaunchedBkillBjonesB	instituteBimagesBideologicalBheavyBgenocideBfinanceBempireBeffectivelyBdroppedBdropBdozenB	concludedB	commanderBclosedB
christiansBcaucusesBcaucusBbranchBblockBadmittedBactivityBachieveB16BwritingBwilliamBvastB
televisionBsurpriseBstraightB	state’sBsovietBsoundBschoolsBscandalsBsantorumBreporterBreliefBreformsB	referringBrankingBpresenceBnumerousBmodelBlynchBinterestingB	inflationBideologyBhopesBhonestBfrancisBequalBearnestB	discussedBdeputyBdeclareBdeathsBdarkBdBchancesBcarryingBbegunBarrestedB
appearanceB
ambassadorB
affordableBadvanceB
absolutelyBwidelyBvideosBtwiceBtrulyBtenBstupidBstoodBsteinBsoldBshesBsettingBseparateBrequireB	providingBpromisedBphotoBpartysBobviousB	narrativeBmooreBmilesBmichiganBmattersBmapBmachineBliesBgeorgiaBfacedBexplainsB	explainedB	existenceBexceptBevilB	everybodyBeuBenormousBenglishBeditorBdroneBdisasterB	determineBcountry’sB
couldn’tBcloselyBcatholicBbloodBbehalfB	attemptedBaimedB“andBweveBwalkBvaccineBukB	thereforeBthatsBsuicideB
statementsB
scientificBregularB
questionedBpoliticallyBphiladelphiaB	party’sBparticipateBopportunitiesBofferingBnobodyBmomentsBmeaningBmayorBmagicBlookedBlimitedBlicenseBlegallyBlearningBkBjBheavilyBexitBequalityBenvironmentalBdriveB	destroyedBdemandB
definitionBdecadeBcooperationB
controlledBcontributedBcommandBcarterBcarryBcapitolBcapableBbasisBballotsBbackingBarabBanywayBamountsBamerica’sBaircraftBadviserBacknowledgedB31B
weiner’sBwealthyBunprecedentedBtrackBtoneBthrowB	territoryBtalibanBtacticsB
successfulB	strategicBsenatorsBsceneBsalesBsaleBrussiansBregulationsBreaganBpmBpharmaceuticalBpeoplesBpeacefulBpartnersBordersBnbcBmittBmexicanBmaterialBlimitsBlimitBlibertyB	knowledgeBjulianB
interviewsBinsistedB
initiativeBincidentBimproveBhurtBhostBhappyBgrowBgottenBfiredBfiorinaBfacesBetcB	estimatesBendorsementB	employersB	elsewhereBearnBdoorBdividedBcreationBconstructionB	conditionBcomplexBcompleteBcloudBcivilizationBcitedBchannelBcaughtBbridgeBbrandBbeatBautismBattemptsB
assistanceBarticlesBapplyBanswersBallowingBallianceBadvisersBadsB911B500B23ByoureBworriedBwarmingBwageBvoiceBvaccinesBtreatBtibetanBthinksBtensBswingBstronglyBstartingBsizeBsitesBsevereBseesBscrutinyBrichardBrequestB	representB	regularlyBprovidesBprovedBproudBproofBproduceBpreparedBpeterBpentagonB	oligarchyBoffersB
nation’sBnamedBmosqueBlinkedBlibertarianBladyBit”BintendedBhostagesBhiredBhaiB
generationBgainsBfordBfloorBflagBexpandedBexamplesBevangelicalBendlessB
electronicBeaseB	dismissedBdigitalB
determinedBcoupB
conspiracyB	confidentB
confidenceBcompetitionB
commissionBcausesBbureauBbrownBbroadBbriefBbrexitBapprovalBandorBafghanBadBacceptedB1000B“whatBwhatsBweaponBwaitingBusledBunclearBunableBturningBtomBsuddenlyBstrikesBstBspreadBsomehowBsoldiersBshouldn’tBsharedBselfBrepublicBrepeatedBplayedBplanetB	permanentB	otherwiseBopenlyBokBoccurredBnotionBnevadaBmovesBmistakeBmentionBlongtimeBlongtermBlawyersBjointBjacksonBiranianB
introducedBhondurasB	haven’tBgirlsBfitBfilmBexistsB	defendingBcongressmanBconfrontationBcarbonBcampaigningBboostBbarBbalanceB	attackingBaren’tBapartBaffectBabuseB22ByoureB	yesterdayBwinnerBweakBvladimirBveteranBvButahBurgedB
understoodBtypeBtweetedBtrainingBtoolBsuspectBsurveillanceB	structureBspeechesBsomewhatBsmokeBsittingBservingB	seriouslyB	seeminglyBsectionBseatsBseaBscaleBreturnedB
retirementBrestrictionsB
registeredB	recognizeBrareBproductB
people’sB	partisansB
parenthoodBpanicBmsnbcBmissilesB
minoritiesBministryBmigrantsBlistenBlieBlaunchBlargerBjusticesBislandB	investorsB
interestedB
industrialB
importanceBhotelB	hollywoodBhackingBgreatestBgermanyBfiledBfewerBfergusonBextendBexposedBembassyB
depressionB	decisionsBdavisBcontrastBcommunicationsBcodeBcivilianBcitizenBbombBbiasBasideBangryBandrewBanalystB	afternoonB35B2018B2001B“inBwriterBusuallyBtrendBtrainB
threatenedBtheoryBtehranBteaB	sufferingBsomebodyBshutBschuonBrunsB
reputationBrapeBquickBprofitsBprofitB
politicianBpointingBplusBplanningBpiecesBopposeBnavyBnativeBmyselfBmissouriBmaryamiyyahB
managementBloanB
legitimateBjeffBjapanBhere’sBgenBgayBgatheredBforgetBfirmBfbi’sBfallingBfactorsBfB	extremistBexactB	elizabethBedgeBdivisionB	developedB	deliveredBdeclarationBcruz’sB
criticizedB	comey’sBcnnsBcardBcapturedBbringingBblockedB
birkenfeldBbillionsB	basicallyB	baltimoreBanywhereBanymoreB
agreementsB
aggressiveB2007B
“we’reB“thereBwebB
vulnerableBvisitB
violationsBtyrannyBturnoutBtonightBthat”BteachersBsurviveBstruckBstoppedBstolenBstationBsellBseizedBsectorB
russia’sBroundBriverBrisksBrelativeBralliesBquestioningBpurposeBprospectBpartnershipBpainBohBnecessarilyBmonetaryBmeetingsBmarkedBkevinBinstanceBinjuredBignoredBhostileBfounderBfollowsBfolksBfixBfindsBexistingBestateBestablishedBdrivingBdisorderBdevelopB	desperateBdeliverBdealsBcorporationsBconsiderationB	consciousB
conclusionBcomprehensiveBcircumstancesBcinnamonB	china’sBcharlieBcameraBassociationBarrestBapprovedBapBamazingBallyB80B“heByou’veBwingBwideBwelfareBwelcomeBvowedB	violationBviewedBupsetB	undermineBultimateBuB
tremendousBtransferBtppBtoolsB	technicalBtaskB	surprisedB	supporterBspiritB	socialistBslightlyBshapeBroseBrevenueBretiredBregistrationB
regardlessB	referenceB
reelectionBrecordedBrealizeBreactionBrapidlyBqualityBpulledBpovertyB	personnelBpanelBoutsiderBopeningBopenedBofficesBniceBnetBmusicBmoonBminimumBmethodBlifetimeBlawsuitBkurdsBkennedyBkellyBjudgmentBjordanBinvolvementBinvestigatingB	immigrantBillinoisBhousingBheadingBheadedBhasn’tBhandfulB	governorsBfundraisingBforcingB
facilitiesBextremeBethnicB	estimatedBescapeB	equipmentBendsBendorseBembraceB	economicsBculturalBcrazyBcountedBcontractBconsistentlyB	connectedBcitingBcharityBceoB
capitalismBbrokenBbottomBbinBarkansasBargueBanybodyBancientBaffordBadvertisementBzoneByeahBworkerBweatherBwaveBwarahBusersBuniqueBtricksBtreatyBtradingBtortureBthoughtsBthomasB	targetingB	suspendedB
surprisingBsuccessfullyB	subscribeB	strongestBstealB
statisticsBstaffersBspeaksBsignificantlyBsessionsB	sentimentBselfhelpBscottBresearchersBremainedBrefusingBrefugeeBrebelsBrB
punishmentB	promotingB	prominentBpresumptiveBpollsterB
phenomenonB	organizedBordinaryBoptionB
officiallyBnovBnotingBmsBmissBmilitantBmattBlondonBloansBlistedBlawyerBkoreaBislamistBinvitedBinformedB	indicatedB
incrediblyBhopingBhopefulBhonorBhenryBharmBgrantedB	generallyB
frustratedB	franciscoBfineBfactorBextentBexpandBenteredB
employmentBeasierBdrawBdieBdhsBdetailBdesireBdeficitBdeclineBcreatesBcoveredBcooperBconversationsB	conflictsBcoloradoB
collectiveBchairBblowBbetBbackersBattendedBapparentBaliveBafraidBaffairBaddsBabsoluteB21stB2004B1990sB100000B“toB“butB‘theB©B
wrongdoingB
volunteersBunusualBuniversitiesBuniverseBtypesBtableBsupportsBsufferedBstunningB	solutionsBsmallerBslowBsickBshotsBsharplyBsharpBscaredBsamesexBriotBrickBreverseBrepealBrelevantBrejectedBraisesBradicalBpursueBproposalB	principleB	preparingB	predictedBpicturesBphotosB
personallyBpaymentsBoutletsBorderedBoperateBmissileBmemoBmeasuredBmassesBmailBliftBlicensesBknowingBkindsBkiBjoshBisraeliB	involvingBinitialBindianaBhomesBguessBgrownBgonnaBgohmertBgoalsBgenerationsBgapBfeaturedBfearsBfathersBexplanationB	exchangesBenterBenglandBengagedBenemyBelementsBdramaticBdnaBdivideBdistanceB	disordersB
diplomaticBdepartmentsBdemandsBdegreesB	dedicatedBdeadlyBdaeshBcutsBcrashBconnectBcomfortableBcolumnB
colleaguesBclubBchristianityBchecksBcentersBcellBcanadianBbroaderBbringsBbrianBbostonBblamedBbBassumeBarrivedBappealsBannualB	allegedlyBallegationsBadministration’sBactiveB“noByazidisBviolatedBvictimBvehiclesBupdateBtroubleBtreatedBtouchB	today’sB
thirdpartyBtheyreBstrongerBspyBspokenBskillsBshiftedBsharingBseptBsentenceBromneysB
resistanceBrequiresBreplaceBrecoveryBrecallB
reasonableBrapidBracesBquoteBquarterB
protectorsB	promisingBpresidentelectBprepareB	practicesBplantBpetraeusB	peshmergaBpenBownedBnowhereB
nationwideBmovieBmitchBmedicaidBmassachusettsBmandateBmanafortBletsBleadsBjrBi’llB	integrityBinstitutionBinsidersBignoreBidentifyBhopedBhookBhassanBhandlingBhandleBgaryBfundamentalBformsB	followersBfocusingBflightBfiscalBfileBfiberBfeatureBfamousBfakeBexperiencedBexpectsBethicalBetBerrorBeraBepsteinBentityBenteringB	encourageBemergedBeditorsBedB
earthquakeB
developingBdemographicB	demandingBdealingBdaveB	customersBcredibilityBcopyB	convincedB
continuingBcontentBconsiderableBconfirmB
commitmentBclosestBchartB	characterBcarefulBboundBbombsBbodiesBbobB
bipartisanBbillsBbadlyB
backgroundBattendBasianB	antitrumpBanalystsB	airstrikeBactivistB90B32B2006B2003B200B“thatBwouldntBwilsonBwhoeverBwatchedBwagesBvoicesBvehicleBusualBusesBunknownBuniteBtrump”B	temporaryBsurfaceB
sufficientBstyleBstressedBstrangeBspotBsplitBspeciesBsolidBshadowBrtBremoveBrelyBrefuseB
recognizedB	receivingBreadersBreactBrandBpurposesBpublicationB	protectedB	prospectsB
prosecutorB	proposalsBproperBpromoteBpostsBpolandB
permissionB
parliamentBoddsB	occasionsB
nominatingB	newspaperBnegotiatingBmurderedBmothersBmoreoverB
misconductBminorBmindsBmethodsBmerelyBmemoryBmedicareBmccabeBmarylandBmannerBlettingB
legitimacyBleavesBlaptopBiransB
investmentBinterventionB	intentionBinnerB	indicatesBimposedBimperialB	immediateB	illegallyBillBidB
historicalBhighwayBhealthyBguardB
grassrootsBgermanB
frequentlyBfoodsBfiringBfiresBfindingsBfeelingsBfavoriteBfailingBeyesBexerciseBexcitedB	establishBentryBentitledBelderlyBdutyBdrivenBdreamBdoorsBdisputeBdemographicsB	declaringBdadBcuttingBconvinceBcontainB
consistentBconservatismBconsentBcomplicatedBcommonlyBclosingB	clevelandBcirculationBchoosingBchallengingBcbsB	carefullyBbushsBboxBboldBblogBbattlegroundBbankersB	assistantBassadB	argumentsBalexBalaskaBaffectedBadvisedBactingBaccurateB65B43B2017B1970sB•B“notByouthByazidiB	victoriesBvalleyB	unpopularB	universalBunityB	uninsuredBunemploymentB	typicallyBtweetsBtopicBtimBtieBthem”BtankBsweptBsurelyBsufferB	subsidiesBstuckB
strugglingBstayingBspeedBspeculationBspectrumBsoftwareBsheetBshallB	scheduledBscenarioB
sanders’BrubiosBrootBrobertB	returningBrestoreBremovedBregisterBreflectBracismBquoBqatarB
principlesB	primarilyB	presentedBpreferBpolarizationBplentyBplayersBpelosiBpatternBpatentBpatakiBownersBoverwhelmingB	overnightB
optimisticBoddB	observersBnormalBnomineesBnickBnetworksBmosbyBmentalBmedicineBmarriedBmanufacturingBmallBmaleBmaintainingBmBlorettaB	lobbyistsB	listeningBlessonsBleakedBlakeBlaidBjudgesBjesuitsBjesuitBinvestigatorBinvasionBinterviewedB	initiallyBindependentsBimportantlyBhumansB	hopefullyBhittingBheadquartersB
greenhouseBgovernment’sBgirlBgainedBfuriousBfavoredBfacilityBextraordinaryBexpressB	expandingBexcuseB
equivalentB
enrollmentBenjoyBengageBemployedBearnedBdukeBdrewBdonationBdncB
disclosureBdirectedBdevicesBdeletedBdefendedBdearBdatabaseB	criminalsBcrewBcredibleB	condemnedB
commercialBcombinedBcombinationBchoicesBchelseaBchainBcabinetBbrothersBboyBboundaryBbasharBbabyB	awarenessBassumingBarmBarguingBapproximatelyBappropriateBaimsBafricanamericanBadministrationsBaccusingBabsenceBabroadB41B39B›B“whenB“theyByohoBwonderBweightBweaknessBwalkedBupcomingBunionsBtripBtravelB
transitionBtoxicBtime”BtiedBthompsonBthere”BtemperaturesB	suspectedB
suggestingBsubstantiallyBstoresBstableBsolelyBsloganBsigningBsignalsBshutdownBshockBselectedBsecondsBseatBsatBruledBrevealsB	resultingBrepresentingBrepliedBreadsBratingsBquitBputsBproposesBprofessionalBprizeBpriorityB
prioritiesBpreventsBpresident”BpremiumsBpopulistBphraseB	perfectlyBperfectBpapersBpakistanB	ownershipBownerBoweBoutlinedBoppositeBopinionsB	operatingBopensBoklahomaBnewtBneighborhoodBmi6BmexicansBmasterBmanagedBlovedB	locationsBlocatedBlivedBlikesBliberalsBlayBlatinosBlatinBkimBkickedBkeepsBjumpBjosephBjokeBjillBjewsBiveBitalyBitalianBinvestigateBintimidationBinterferenceBindependenceB	increasesBimprovementBhostageBholeBhispanicBheadsBharderBguiltyBgovernmentalBgoreBgiantBgenderBfuelB
fractionalBfoundingBflyingBfisaBfiatBfeelsBfateBextraB	explosionB	expectingB
everywhereBeventualBenthusiasticBdojB	districtsBdinnerBdesperatelyBdeployedBcyberBcrucialBcounterterrorismBconventionalB	considersB
conductingB	clin­tonB	childhoodBchemicalBceremonyBcampbellBburningB	bloombergBblacksBbesidesB	beautifulBbannedBbabiesB	attorneysB
assessmentBangelesB	alongsideBallenBaliensBairportB
aggressionBadvancedBadmitB
abedin’sB95B70B2002B16thBworldsBworkingclassBwhistleblowersBwe’llBwearBwarningsBwallsBwalkerBvsBvisitingBvisitedBvetoBvergeBup”B	twothirdsBturkeysBtransportationB	transportBtragicBtonyB	threatensBthinBtheftBterryBteachingB	taxpayersBtalentBtagsBsweepingBsuspectsBsufiB	successorBsuburbsBsubstantialBstuffBstudyingBstrikingBstoredBstorageBstoneBsteveB	stabilityBsputnikBsoundsBsolveBslowlyBskyBshortlyBsettledBsessionBseniorsB	searchingBsavingsBsadBronaldBronB	rightwingBriceBrevealBreturnsBreservesBrelyingBreferredBreducedBrealizedBreachingBrangersBquotedBpursuitB
publishingBpublishBprovingBprosecutorsB
prohibitedBprogressivesB	producingB	privilegeB	privatelyBpredictB	preciselyB	practicalBplotBphaseB	performedB	perceivedB	people”BpenaltyBpassingBpartnerBpaintBovalBoutcomesBoughtBorganicBoregonBoccupyB	nonprofitB	nightmareBnasrBnahiBmurphyBmr864BmohammedBmixBmissingB
misleadingB	milwaukeeBmdrtbBmathBmaliBmajoranaBlossesBlosBlgbtBlegislativeBleaksBkunduzBkentuckyBjungleB	jerusalemBjayBjasonBisilBinvestigativeBinvestigatedBintentBintenseBinspiredBinfamousB
inevitableBindicateB	incidentsBiiBieBhumanityBhaventBhandedBgunmenBgeopoliticalB	gatheringBfunctionBfunBfranklyBformallyBflewBfirearmsBfinishBfillBfifthBfebBfeaturesBfasterBfascistBfailBexposingB	expensiveBexclusivelyBethicsB	essentialBequallyBentertainmentBengagingBegyptianBeagerBdrawnBdramaticallyBdonatedBdocumentBdoctorB
disturbingBdistributionBdeserveBdefectsBdamagedB
currenciesBcoveringBcouplesBcountrysBcoolB
convincingB	convictedBcontrolsBcontainsB	containedBconnectionsB	confusionB
concerningB	computersB
compromiseBclearedBclassicBclapperBchoseBcatchBcapacityBbusinessmanBbubbleBbrusselsBbrightBbeginsBbeatingBbearBbaghdadB	attackersBassuredBassistBarrangementBarentB
approachedBanakinBalertBagentBadverseBadultsB8thB71B51B49B20thB10000B“that’sByear’sB	witnessedBwindowBwhosBwayneB	volunteerB	violatingBupsideBupdatedBunfairB	triggeredBtiredBthreateningB	they’veBthemeB	terrifiedB	tennesseeBtaxpayerBswitchedBswitchB
suspiciousBsusanBsurroundingBsuitBsubmitBstopsBsteadyBstayedBstanceBstakeBspB	sovereignBsoilB
settlementB	sentencedBscheduleBsacredBsBrodhamBrevoltB	responsesB
respondingBrequestsBremindedBrelationshipsBregionalBreferBredoubtBramadiBquotesBpursuingBpureBpunishB
provisionsBprosecutionBprintedB
preventingBplantingBpillBpersuadeBparticipantsBpairBpaceBoutrightBotisB
organizingBoccurBobjectBnoticeBnotablyBnormallyB
nonviolentBnixonB
newsletterB	netanyahuBneighborhoodsBnearbyBmonitorBmitchellBmartiansB	manhattanBlyingBloyalBlobbyistB	libertiesBleBladenBkillingsBjumpingBjesusBinteriorBinsultsB	instagramBinsiderB
indigenousBindianB	incumbentB	ignoranceBidentityBhusseinBhistoricallyBhe’dBheroBhaltBhallsBhackersBguardsBgrewBgeoengineeringBgenevaBgallupBfuneralBformedBforeverBfootageBflagsBfinishedBfiguresBfeetBfeedBfansBeyeB	extensiveBexpectationsB
executivesBevangelicalsBeuroBestimateBemployerB
emphasizedB	emotionalBelectBeducatedB	editorialBeatBearningsBdynamicBdroppingBdonateB	dishonestB
discussingBdisagreeBdiplomatB	diagnosedBdevelopmentsBdevastatingBdestructiveB
destroyingB
describingB	describesBdescribeBdepositsBdepositBdeportBdelayBdangersBdamagingBcustodyBcruzsBcrossBcountingBcountiesBcorrespondenceBcopB	contestedB
contendersBconsumerBcomplyB
complainedB
comparisonB	communistB
committeesB
collectionBcnnorcBcleanBcentristBcausingBcastingBcamerasBcBburnB	buildingsBbritain’sBbrazilBboughtBbondB	belongingB	behaviourB
attemptingBatlanticBasiaB	appealingB	anonymousB	anonymityBagesBacknowledgeB56B54B38B33B300B1980sByouveBwoBvillageBus”BunrestBunifiedB
underlyingBtuesday’sB
translatedBtrackingBthousandBthBtestedBterribleBtendBteacherBtbBsystematicallyBsurucB
surroundedBsunniBsunBsucceedBstretchBstressBstephenBsorryBsleepBskinBsiouxB	similarlyB	signatureBsignalBshoutedBshockingBshockedBselectBsecuringBsavedBsangerB	rooseveltBrollBrncBrevelationsB
revelationBreutersBrespectivelyBremovalBregardedBrebelBrarelyB	qualifiedBprofoundBprivacyB	preferredB
preferenceBpostingBpickedBpharmaBperformB
passionateBpartialBovercomeBoutputBorganizeBoperatedBobtainedBobjectsBnoflyBneurosurgeonB
nationallyBmqmBmountBmookBmoodBmomB
moderatorsB	minnesotaBmidtermBmiddleclassBmerrillBmereBmegynBmaximumBmatthewBmartoskoB	marijuanaBmadBlouisBlongstandingBlockedBlocationB	literallyBlinksBlesserBlengthBlatterBkremlinBkingdomBkickBkenBkarBkaineBjuryBjudgingBjihadistBjastaBjaneBivankaBitemsBirsBiran’sBinvestmentsBintendsBinstructionsBinnocentBindexBhuckabeeBhongBhireBhenceBhelpsBhedBharvardBharryBhackedBgulfBgowdyB
governanceBglobeBgiulianiBgenuineBgearBgangBfuturesBfundamentallyBfueledBfreshBfreezeBfranklinB	frameworkBformulaBforciblyBfilledBfemaBfeesBfaultBerdoganBepisodeBdoseB
documentedB	diversityBdistributedBdissentBdisplayBdiscoverBdisaffectedBdenyingBdenyBdenialBdemonstratorsBdeliberatelyBdefinedBdanneyBcubanBcornerB	copyrightBcoopersBcontributionsBcontraceptionBconstantBcondolencesBcompoundBcompetitorsBcommunicationBcommitBcommanderinchiefBcolorBcitizenshipBchuckB	christiesBcarneyBburdenBbunchBbuckleyBblocB	bilateralBbeastBbeachBbalticBayotteBaurBaudioBassemblyBasksBarguesBarenaBapproveB	appointedBantiestablishmentB	answeringBandersonBamericasB
amendmentsBairspaceBaerialB
advocatingBadvertisingBactivelyBaccidentBacademicB99B66B52B44B34B2020B2005B1999B“theseB“soB“ourB“isBByuanByeByardBwitnessBwildBwho’sBweeklyBwarnBwalkingBvietnamBviciousBviableBversusBunitBunderstandsBunconstitutionalBuncleBtransparencyBtraffickingBtorturedBthrownBthrowingB	testimonyBterritorialBtenureBteamsBteachesBtBsympatheticBswornBsurvivalBsurveysB	surrenderB
supposedlyB
suggestionBsueB	strengthsBstormB	states”BstakesBsprayBspanishBsorosBsophisticatedB	somewhereBsilenceBsharptonBserversB	sensitiveBsecuredBseanB	scientistBscaliaBsampleBsalaryBsadlyBsaddamBrushBrogerBroadsB
ridiculousBrescueBrequirementBreplyBreplacedBrepairBremindB
remarkableB	rejectingBregimenB	reductionB	recordingBrebuildBrapedBramosBquantumBpunditsBprovesB
protectingBpromptedBpromotedB	projectedBproducerBprobateBprideB
preventionB	preventedBpressingBpraisedBpraiseBpossessBposeBportionBpolishBplaysBplanesBpillsBperspectiveBpersonalityB	permittedBpatrolBpagesBovertBnsaBnotifiedBnonpartisanBnetflixB	naturallyBnationalistBnancyB	movementsB	motivatedBmoldovaBmodestBmoderateBmmrBmissedBmineBmindsetBmillerBmillennialsBmichelleBmiceB	materialsBmanageBlosesBlogicBlincolnBlimitationsBliftedBlettersBlendBlegacyBleeBlatinoBlacksB
laboratoryBlabeledBlBkongBkenyaBkansasBjustifyBjudicialB
journalismBjapaneseBislamophobiaBinstabilityB
innovationBinfowarsB
inevitablyB
incredibleBimprovedBimplicationsBimplementationBignoringB	hurricaneBhuffpostB�httpwwwinfowarsstorecomhealthandwellnessinfowarslifebrainforcehtmlimstzrwuutmcampaigninfowarsplacementutmsourceinfowarscomutmmediumwidgetutmcontentbrainforceBholyB	holocaustBhodgesBhidingBhideBhiddenBhearingsBguideBgrowsBgraveBgrandBgradeBgatherBfurthermoreBfunnyBfundedBfrustrationBflipBfitchBfencingBfavorsBfatBfallsBfairlyBfailuresBfactoB
extremistsB	extensionB	exclusiveB	excellentBeveB	estrangedBessenceB
enthusiasmBenforcedB
encouragedBemptyBemergeBelectingBdysfunctionBduopolyBdrinkingBdreamsB	dominatedBdismantlingB	disgracedBdevotedBdeviceBdemonstrateB
deliveringB
deliberateB
definitiveBdeeperBdecidesBcovertBcourageBcountsBconwayBcontributionBcontraryBcontentiousBconfrontBconfirmationBcondemnB	completedBcompetitiveB	competingBcomfortB	collapsedBcoastB	christmasB	chemicalsBceilingBcaresBcareersBcaptureBbrazileBbootsBbarelyBbacksB	authorizeB
atmosphereBateBarrestsBappliedBanxietyB
america”BalqaedaBaisleBaimB	aftermathBafricanamericansBadvisorB
addressingBaccountableBaccomplishedB
acceptanceBabusesB650000B58B5000B46B4000B2030B1998B
“hillaryB	“he’sB“allB»Byou”B	weren’tBwearingBweakenedBwasteBwashington’sBwarfareB	walgreensB	voters’BvocalBvitalBvisibleBvirtualBviralBviolateBvarietyBvaluableBvacuumBuserBuscBunderwayBuncertaintyBubsBtuesdaysBtriesBtreatingB	travelingBtopicsBtodaysBtitleBthreatenBtheresBtentBtemporarilyB	telephoneBsweepBsupremacistsBsubjectsB	struggledBstocksBstewartBstevenBstealingBstatingBspringB	spiritualBsomaliaBsoldierBslaveryBsitBsingerBsiegeBshowdownBshootBshiiteBseyyedBsetsBsecretlyB	secondaryBscenesB	scenariosBrtcomBrobertsBrivalryB	reviewingB	revealingBretainBretailBresultedB	requestedB
relentlessB	releasingBrelationB	rejectionBrejectB
regulationBregionsBregainBrecognitionBrctsBrctBrandleBpurchaseB	provisionB
protestorsB
protestingB	protestedB
prosperityBprophetBproperlyB	producersBpresstitutesBpressedB
popularityB	pollutionB	poisoningBplantsBplainBplacedB
physicallyBpewB
pesticidesB	peninsulaBpauseBpatrickBparttimeB	particlesBparticleBpainfulBpBoutrageB	obtainingBobtainBobservedB	notoriousBnotableB	nominatedBneighboringBnarrowB
monitoringBmogulBmistakesBmediterraneanBmeatBmccarthyBmatchBmastersBmaskBmarksB	marketingBmarginsBman’sBmansionBmaneuverB	mandatoryBmajesticBmadisonBluckBlowestBloudlyBlotsBlobbyingBliedBlhasaBlegsBleagueBknockBkidB
julian’sB	judiciaryBjimmyBjeremyBjeffreyB
irrelevantBinvestedBinvadeBintimateBintendB	insistingBinjuryB	improvingB	implementBimperialismBignorantBhybridBhousesB	hostilityBhorrorBhikeBhere”BhebdoB	guaranteeB	greenwoodBgraniteB	governingBgovernBfriendlyBfreedomsBfredBfrancesBfractionBfoundedB	forgottenBforecastBflightsBfleeBflawedBflamesBfiveyearBfinanciallyBfenceBfdaBfarmersBfalselyBexposesB
explainingBexpertB
experimentBeruptedBerrorsBenemiesBendureB	endorsingBendingBencouragingBemployeeBemphasisBembargoBedgarBeBdyingBdubiousBdronesBdrillBdrahosBdo”BdotcomBdogsBdisgustBdisappointedBdeterminationBdetailedBdeniesBdemonstratedBdeferredBcyberattackBcubsBcrowdsBcrookedBcreativeB	countlessBcounselBcorrectionalBconventionsBcontinentalB	contactedBconsolidationBconsequenceBconsciousnessB
confrontedBconcreteBconB
complaintsB	complaintB
committingBcommerceB	collusionB	collectedBcohenBclashesB
circumventBchipsBcharlesB
charitableBchantsB	change”BchamberB	certaintyBcategoryBcarsBcardsB
campaignedBcalaisBbuyingBburiedBbureaucratsBbuildupBbudgetsBbroadlyBbrieflyB	breitbartBbreaksBbondsBboatBbibleBbeliefsBbeingsBbedBbeautyBbayBbarbaraB	ballisticBawardBautomaticallyB
atrocitiesBassassinationBarriveBarmoredB	armeniansB	archuletaB	appearingBansweredB	ambitionsBalanBaggressivelyB
advantagesB	admittingBadmitsBadjustBadditionallyBactorsBactedBaccountabilityB
acceptableBabcB75B67B48B47B1992B“whoB“myB	“donaldByaleBwyomingBwreckageB	wonderfulBwonderedB	women’sB	witnessesBwithdrawBwisdomBwiderBwerentBweighingBwantingBwallaceBvowingBverizonB	venezuelaBvaccinationsBusefulBurgentBunitsBunhrcB	uncoveredB	uncertainB	ukrainianBtrucksBtribeBtraveledBtrashBtragedyB	traditionBtoxinsBtougherBtodoBtitledBtimelineBtightBtheyveBtheoriesBtaughtBtacticalBsymbolBswissBswayB	succeededB
subsequentB	subjectedBstringBsteerBsteelBstarkBspotsBspokespersonBsolarBsnyderBslippedBsiliconBsilentBshyBseizeBsegmentBsearchedBseBschwarzB
schuon’sBschemeBsaudisBsarahBsaltBrumorsB	rubio’sBroyalBroughBrideBreviewsBretaliationB	respectedBresolveBrequirementsB	replacingBreplacementBreopenedB
referendumB	reelectedBreedBreducingBrecruitmentB	rebellionBrawBrationalBquietB	purchasedB
proportionBprofessionalsBprintingBpredictableB	precedentBprayBpracticallyBposesBposedBpompeoBpolicingBphonyBpepperBpendingBpaysBpaymentBpatientBpartlyBparentBpalmBpalestinianBpadmeBpaB	oversightBopposingB
operativesBopecBobiwanBnonethelessBnightsBneverthelessBneurologicalBnastyBmutualB	mountainsBmontanaBmodeBmishandlingBminorsBmilitarizedB
membershipBmaryBmartianBmarchingB	magnitudeBltBloudBlooseBlobbiedBlibyanBliberateBlendingBleftistsB
largescaleB	landscapeBlabelBkwnBkirkBjustificationBjoiningBjimenezBjanetBi’dBiveBissuingBinvolvesBinterferingBintelligentBinstitutionalBinfluentialB
inequalityB	incentiveBimpunityBimplementedBimaginationBillusionBignoresBhysteriaBhuma’sBhosseinB	hospitalsBhonestlyBhollandeBhitlerBhighlightedB	highlightBhiBheyBhealingB	headlinesBheadlineBhawaiiBhatredBhardlyB
harassmentBhandledBhamasBguysBguestB
guaranteedBgridBgreeceBgrantsBgovtBgortneyBgoliathBglennBglassBgainingBfourthBfoundationsBfoughtBfortBformalBflexibilityBfishingBfishBfinancesBfilesB	feinsteinB	favorableBfanB
family’sBfailsBextendedB
expressingBexportsBexcitingB	examiningBevolvedBeverydayB	espionageBescapedBepicB
enterpriseBensuringBenergizeBeligibleBegyptBeditionB	economiesBeconomicallyBechoedBearningBdumbBdrinkBdrawingBdraftBdoubtsBdiverseBdistractionB
disastrousBdisappointmentBdisappearedBdioxideBdigitsB	diagnosisBdeservesBdeleteB
definitelyBdecreeB	deceptionBdecBdanielBdanaherBdamascusBcrudeBcrowdedBcriminalityBcrimeaBcraigBcopsB
convictionBcontradictionsB	contractsBconnecticutBcondemnationBcompeteB
comparableBcommunicateB	columnistBcolumbiaBcolombiaBcollectBcoinsBclownB	citizenryBchantingBchambersB	celebrateBcarlyBcampaign’sBcalmBbusyBburnedBbulletsBbulkBbrutalBbrotherBbrooklynBbraveBbloodyBbenjaminBbenchBbelongsBbasesBbalancesBbachBauthorsB
australianBassetB	assaultedB
artificialBapproachingB
approachesBapplicationsBappleBapocalypticBantoninBantibioticsB
announcingBannounceBanniversaryBaltrightBalikeBalignedB	affidavitB	advocatedB	addressedB
accountingBaccidentallyB62B57B“trumpB“they’reB“sheB“manyB“asBzonesByorkerBworld”B	worldwideBwontB	wonderingBwishesBwisconsin’sBwhistleblowerBwheneverBwest’sB	weinsteinBwebsitesBwapoBvpBvisaBvirtueBverticalBurgesB	unleashedB
unexpectedB	undecidedBunanimouslyBuk’sBtunnelBtsaB	trillionsBtriggerBtrialsBtrendingBtrafficBtourBtornBtipB	thresholdB	they’llBtheyllBthereofBthemesB	testifiedBtendencyBteachBtaxationBtawangBsweatBsurgeB	supremacyBsuppliesBsuperiorBsuddenBstumpB
structuralBstripB
strengthenBstrategistsBstickingBstatismB	statewideBstarsBsquareBspokeswomanBsortsBsoonerB	societiesBsixthBsitsBsignificanceBsightBshooterBshitBshieldBshe’dBsheriffsBshelterBshakeBsellsBsecretsBsealedBscreenB
scramblingBscopeBschultzBscaryBsavingBsanders’sBsalariesBsaferB	routinelyB
rothschildBrocketBrisesBrisenBriotsBridingBridBrevolutionaryBrestrictingB
restrainedB	restoringBresignedBresignBreservedB
repressionBrepresentedBrepayBrenewedBremovingBremediesBregardB	recoveredBrecommendedBrecommendationsB	recommendB	realitiesBranksBrankBrandomBracistsBquotingBquestionableBpsychologicalBprovokeB
productiveB	processesB	prisonersB
presumablyBpredatorBpreciousB	precinctsBpravdaruB
possessionB
positionedBpopulationsBpodesta’sBplayerB	plaintiffBpickingBphonesB
performingBpatraeusBparticipatingBparkingBpantsBpaintedBpactBover”BoutreachBorlandoB
organizersBoptimismBomarBoldestB	occurringBobstructionBoathBoaklandBnraBnprBnoticedBnonsenseBnhBnegotiatorsB
negotiatedB
navigationBnB
mysteriousB	mushroomsBmoviesBmoniesBmonarchyBmodelsBmirrorB	mcauliffeBmarshallBmanualBmanipulatedBmakeupBmainlyB	louisianaBlordBlobbyBliningB
likelihoodBlikedBliftingBlifelongBliabilitiesBlessonBlesbianBleftistB	landslideBlaBkyleBkirkukBkillerBkievBkenyanBkasichsBjusBjumpedBjourneyBjoBisolatedB	introduceBinjuriesB
infectionsB
industriesBimposeBimpeachmentBidahoBhwBhuntBhundredBhoonBhomelessBhiringBhippyBhe’llBhelicoptersBhedgeBhawkishBhatedBhasntBharborB	halloweenBhairBhacksB
guidelinesBguestsB
guaranteesBgroundsBgregBgreekBgravityBgrantBgrahamBgrabbedBgolfBgoldenBgeraldBgasolineB	functionsBfrontsBfrontierBfosterB
foreignersBfootballBflyBfloatingBflatBfirmlyB	financingBfillingBfictionBfencesB
federationBfashionBfamouslyBfaloonBexposureBexploresBexplorationB
explicitlyBexperiencesBexecuteBexcludeBexceptionallyBexaminedBexamineBevictionB	europeansB
entrenchedBenforceBendorsementsBemergingBemergesBembracedB	eliminateBelectricityBecuadorB
economistsB	economistBebolaBdysfunctionalBdroveBdonorBdonnaBdistrustB	discoveryB
disciplineBdirtyBdiegoBdidntB	depressedBdeportationsBdeportationB	dependingB	departureBdemonstratingB	defendantBdebtsBdebacleB	daughtersBdanBdamnBdabiqBcuomoBcultBcryingBcrossedBcrisesBcredentialsBcounterBcostlyB	corridorsBcorrespondentB
correctionBcorpsBcorbynBcontributingB
contributeBconsumptionB	concludesBconceptBcommonsBcommoditiesB
commentingB	commentedB
commentaryBclothingBclipBclinicalBclearingBclassesBcitysBcirclesBcircleBchurkinBchosenBchinasBchestBcheapBchannelsBchaiBcentreBceaseBcasinoBcarriesBcargoBcapabilitiesBcapBbusesBbucksBbriefingBbreathBbossBblocksBblindBblewBblastsBblasioBbizarreBbisonBbeltwayB	believingBbayleeBbareBbaptistBbanningBbandBawardedB	attendingBatomicBasylumBartistB	apologizeB
antirussiaBanticipatedBanalyzeB
altogetherBakaB
affiliatesB	advocatesBadvocateBadvertisersBadvancesBadamsBadamBactorBabsurdB83B69B6000B50000B42B400B36B270B1990B“whyB
“we’veB“racist”B“newB“forB“anB‘Byou’llByears”BwritersBwrappedBworthyBworshipBwolfBwndB	withstandBwin”BwinterBwindBwillingnessBwhereverBwhereasBwestboroB	wellknownBwelcomedBweirdB
weinsteinsBweighedBweek’sBwedBwebbBvnnBvisionsBvisiblyBvirusBvicepresidentBvetsBverdictB
vegetablesBvaluedBurgencyBupwardBunsureBunpredictableB	unlimitedB
unintendedBunilaterallyBunifyingBuniformB
unemployedBunderscoredBunderminingB
undercoverBuncomfortableBtwopartyBtwinBtweetingBtshirtBtrustworthyBtrustedBtruckBtripsBtreasonBtransparentBtransformationB	transfersBtollB
tighteningBthrewBthis”BthickBthey’dBtheyveBtherebyBthaBtestingBtendsBtempleBtearBtasteB	tamperingBtallBtakeoverBsyriansBswitzerlandBsurprisinglyBsurfacedBsumBsubwayB
substancesB	substanceBstudiedB	stressingB
strategiesBstrategicallyBstoltenbergBstickBsteamBstatisticalBstartsBstandoffBspellingBspellBspamBspainBsovereigntyBsoulBsolvedB
solidarityBslogansBskillB	skepticalBsizableB
situationsBsindhBshuttingBshipBshinyBshiftingBshiaBsheerBsheepleBshareholdersBshapedBsexistBseverelyBsetupBservesBseizingBseeksBsecrecyBschulkinB	saturdaysBsafelyBsachsBrushingBrouthBrouteBrootsBrohioBrobBrkyBriyadhBriotersBrflaBreviewedBresignationB
resentmentB	requiringBreproductiveBrepresentationBrenderedB
rememberedB
remarkablyB	reluctantBreleasesB
regulatoryBregretsBregardsBrefusesB	reformingB	reflectedBrecoverBreceivesB	realizingBreaderBratioBralliedBraidB	qualitiesBputinsBpushesBpurportedlyBpullingBpuertoB	proposingBprophecyBprolifeBprohibitBprinceBpreviewB
pretendingBpretendBpresident’sBpreparationBpreliminaryBpreferencesBpreciseBpower”BpostabcBpossibilitiesBpolledBpocketBpledgeB	planetaryBpitchBpilotB
philosophyBperiodsBperezB
perceptionBpeakBpassionBpartnershipsBpartisanshipBparticipationBparliamentaryBpardonBpackBpacificBoxygenBoxfordBownsBowningBoverwhelminglyB	overthrowBoverseasB	overreachB	outsidersB
outrageousBoutragedBoursB
oppressionBonethirdBomalleyBoffsetBoffenderBoceanB	occupyingBoccasionallyB
occasionalB	observingBobserverBobserveBobligationsB
obligationBnyB	northeastBnominateBnobelB
newspapersBneutralBneoconservativeB	negotiateBnebraskaBnaziBnavalBnationalistsBnateBnasdaqBnaftaBmulayamBmountingB
motivationBmonthlyBmonsantoB	moderatorBmobB
mistake”BmistakenBminuteBminusBmidstBme”BmetalsBmetalBmessBmeritsBmentionsBmediumBmeantimeB
meaningfulBmatthewsBmatsuevBmapsBmanufacturersBmanningBmanipulationBmandatedB	magazinesBluxuryBlunchBlowsBloserBlitBlightsBliarBleakingBleakBlaughBlasBlaneBlackedBlabelingBkochBkoBkmBklanB
kilometersBkillsBkickingBkhanBkeystoneBkarachiBkabulB	jihadistsBjetsBjetBillBironicBinsultBinstructionB	instancesBinstallB	inspiringBinspireB	inspectorBinsistsBinsanityBinquiryBinputBinitiativesBinformB	infectionBindefinitelyBincomesB	incapableB	inabilityBimmenseBiiiB
identitiesBidealBhusband’sBhurdlesBhorribleBhoaxBhoB
historiansB
highlightsBhesBhesitateBheelsBheatedBheatBheartsBhasanBharmingBhannityBhaitiBhadiBguzmanBguidanceBguardianB
groundworkBgray’sBgoldmanBghostBgapsB
functionalBfriesBfreedB
francis’BframeBfoundersBfortuneBforthcomingB	formationBforemostBforeignpolicyBfomcBfleeingBfitsBfingerBfermionBfascismBfargoBfactoryBextractBexternalBexpensesBexpectationBexcerptB	evolutionB
europe’sBeurobondBeugenicsBequationB	entrustedBentranceBentitiesBengineeringB
engineeredB
engagementB	encounterBelection”BeffectivenessBdumpedB	duckworthBdrivesBdriverBdonBdivisiveB	divisionsBdistinctBdisproportionatelyBdispelBdisobedienceBdiscriminationB	disclosedBdiscloseB	disappearB	directorsB	diplomacyB
difficultyBdevegaB
devastatedBdeterminingB	detectiveBdespairB
designatedBderailBdeportedBdeployBdependsBdependBdepartment’sBdenverBdemonstrationsBdeliveryBdefaultB	decliningBdecisionmakingBdecidingBdebitBdeadlineBdatesBcwBcustomsBcuriousBculturesBcubansBcryBcrushingBcrownBcrossingBcriesBcriedB	crackdownB	court’sB	courtroomBcoursesB
country”BcounterpartsBcostcoB	correctedBconvertsB
convenientBcontroversiesBcontractorsB
contractorBcontinuationB	continentBcontemptB
consultingB
constituteB
constantlyBcongratulatedBconfusedBconclusionsB	combiningBcollinsB	cofounderBcoalBclothesBclinicsBclerkBclashBcirculatingBchildren’sBcheatingBchargingB
challengedBcatastrophicBcastroBcashinB
capitalistBcampusBbuzzfeedB	buriticáB	broadcastBbridgesBbridenstineB	breathingB	breakfastBbrandedBborrowedBbootBbonusesBbomberBbluntBblastBbitsBbigotryBbhiB
bernardinoB	benefitedBbeltBbearsBbathroomBbarrelB
bankruptcyBawkwardB	automaticBautoBauthoritarianismBauthoritarianB	australiaB	austerityBattractB	attitudesB
assumptionBashamedB
arabia’sBappointBapplyingBanimalsBangelsBanalysesBamyBalgerianBalbeitBailesBagricultureBagendasBafpBadvocacyBadvertisementsB	addictionB
activationB	acquittedBacetaminophenBaccuseB
accomplishB	acceptingBabrahamBabcsB63B61B600B59B55B37B30000B2383B1stB1968B1962B1930sB1914B“you’reB“veryB“standB“rigged”B“maybeB“everyB“byByemeniBxlBxBwrenBwomensBwolfeBwmwadminBwmpsB
witnessingB
withdrawalBwiseB
williamsonBwildlyBweveBwellB
weaknessesBweakerBwatersBwaryBwarrantsB	warrantedBwalnutsBwakingBvulnerabilitiesB	voluntaryBvisitsBvigilantBviewersB	viabilityBvegasBvaButcBupperBuphillBupgradeB	unusuallyBunnamedBunderageB	unanimousBumbrellaBumBuglyBufosBturmoilB	troublingBtreeBtraumaBtrappedBtranspacificBtransatlanticBtrainedBtrade”BtrackedBtownsBtiltBtiffanyBtideBthwartBthe�BtheyllBtheresaBthankedBterrificBterriBtensionBtenderBtemperamentBtechnicallyBtechBtearsB	syria’sBsymptomsBswipeBswearB	suspicionBsuspendB
surrogatesBsurplusBsupervisionBsumsBsummitBsuedB
strongholdB	starbucksBstafferBspottedBspontaneousBspiteBspinBspikeB
specialistBspawnedBslapBslammedB
skepticismBsissonBsinghBshowerBshoutingBshoresBshoppingBshopBshe’llBshellBshedBsethB
separationBsensBsegmentsBseedsBsecularBseconddegreeBsearchesBsealBscoresBscoreBscareB
scalia’sBsaulB	satisfiedBruralBrubbleBrubberBromeBromanBrollingBrobbyBriflesBrichestBretreatBrestsBrespondsBresistBresidentBresetBrepealedB	reopeningBrenderBremarkedBremarkB	religionsBrelatesBregretBreflectsBrefersB
referencesB
redemptionB
recruitingBrecognizingBrecklessB	recessionB	realisticBrealdonaldtrumpBrayBrandomlyBrandomisationBraciallyBrace”BquietlyB	quarterlyB
purchasingBpunishedBproxyBprotocolB
prosperousB
prosecutedB	prosecuteBproposeB	promptingBpromptB	promotionBproceedsB	procedureBprisonerBpresentationBprescriptionB	prematureB	pregnancyBpredominantlyBpraisesBprBportraitB	portfolioBpopulaceB	polarizedB	pneumoniaBpleadedBpleadBplaguedB	pipelinesBpilotsBpilingBphoenixBpettyBpetitioningBpetitionBpersonsBpersonalitiesBpersonaBperryBperceiveBpeersBpeBpayrollsB
patriotismBpatriotBpastorsBparkerBparkBpandemicBpaintinBpahanBpackedB	o’keefeBowesBovershadowedBoutstandingBorangeBoralBonetimeBoneononeB	olszewskiBokayBoffenseB	obstaclesB
objectivesB	obedienceBnprsB	night’sB
nevertrumpBneumeyerBnervousB	nefariousBneedlessBneckBnbc’sBnazisBnationalismB
napolitanoBnamelyBmuseumBmuscularBmurdochBmurdersBmultinationalBmountainBmoralityB
montgomeryBmonopolyBmoinesB
mistakenlyBmississippiB	mintpressB	ministersBmilkB	migrationBmergerB	mentalityBmemoirB	medicinesB
medicationBmediasBmeddlingBmcmullinBmathematicallyBmarsBmarineBmankindB	maliciousB
majoritiesB
maintainedBmaineBmaggieBmafiaBlunaticBlovingBloadingBlives”BlinedB	liberatedB	liabilityBlewisBlewandowskiBlevineBleonardBlengthyBlegislatureBlegBleftwingBleaningBlayingBlawfulB	launchingBlaunchesBlaughedBlattanziB
lastminuteBlastedB	languagesBkuwaitBkuBkouachiBkluxBkillersBkeithBkarlBjurisdictionB	judgementBjindalBjihadBjesseBistanbulB
ironicallyBinvolveBintroducingB
intolerantBinterpretationB	interfereBinterestinglyB
intentionsB	intensiveB	insurgentBinstantBinmatesB
injunctionBinjectB	initiatedBinfluxB
influencedBinflammatoryBindictedB
indicationBincriminatingBinconsistentBincarcerationB
impressiveBimposingBimperialistBimpactsBimmunityBillegalsBidentifyingBiceBianBhuntingBhunterBhungBhugelyB	householdBhostilitiesBhitsB	hispanicsBhillarysBhighprofileBhhsB
helicopterBhashtagBharshBharrietBhardestBhangBgutBgratefulBgrassleyB	graduatesBgopsBglobalizationB	globalistB	globalismBglenBgilbertBgeneralsBgarbageBgallonBfrontrunnersB	frontlineBfrithjofBfringeBfreshmanBfrayBfrankBforumBforthBformingBfloodingBflockBflintBflag”BfirmsBfightsBfieldsBffBfeministBfedsBfearedB	fathersBfastestBfallenBfactionB	extremismBextraterrestrialBextendsBexposeB
explosivesB
explosionsBexploitBexplanationsBexecutedB
excitementBexceedBeveryone’sBentersBenactedBempowerBemailedBeggsB
ecuadorianBeatingB	earth’sB
dysmorphiaBdugBdroughtBdriversBdowBdoomedBdonatingBdoing”BdocumentaryBdisruptBdisputesBdisputedBdiseasesBdiscouragedBdiamondBdevilBdeterBdestinyBdeskBdesignBdesertBdescriptionBdesBderrickBderivedB	dependentB	denouncedBdemonstrationBdemocracy”BdeliversB	delegatedBdelaneyBdefineBdefianceBdefenceBdefeatedBdeclaresBdecentBdebrisBdebatingBdealtBdealersBdaughter’sBcynicalBcustomerBcureBcruiseBcropsBcropBcriticizingBcoversBcourtesyBcouldntB	cosmeticsBcosmeticB	correctlyBcornynBcorkerBcoordinatedBconvertBcontrollingBcontradictoryBcontendBcontactsBconstructiveBconsequentlyB	consensusBconcludeB
concessionBconcertBcomposedB	componentBcompensationB
commandingBcolonelB
collectingBcoinBcoB
clintonsBclimbedBclimbBclarifyB
circulatedBchristB	child’sB	childrensBchiefsBchevronBcheeringBcheerBcheaperBchavezB
chancellorB
championedB
chairwomanB	certifiedB	centuriesBcentsB
censorshipBcellsBcelebritiesBcautionB	catholicsB	catherineB
casualtiesB	capturingB
capabilityBcannabisBcandidate’sB	cancelledBcampaign”Bcalifornia’sBcalifBcableBbullionBbuffaloBbrentBbreastBbombersBbogusBboatsB
blumenthalB
bluecollarBblockingBblockadeBblamingBblamesBbitcoinBbirdsBbillionairesB
beneficialBbeneathBbelgiumBbelgianBbegsBbbcBbaudrillardBbarsBbarrierBbanks’BbahrainBbagBbackwardBbackerB	avoidanceB
autonomousB
authorizesB
authorizedB	authenticBaustinBaumfBauditBattitudeB	attendeesBattachedBatopBassumedBassignsB
assertionsBassaultsBaspectBartsBarrogantBarmenianBarabicB
appreciateBappliesBapplicationB
apologizedBapneBanxiousBantisemiticBamnestyBalphabetB
allegianceB
alienatingBalienBalassadBagriculturalBagain”BaffectsBadversariesB	advancingBadultBadoptBadequateB	addressesBactivismB	achievingB
accusationBacademiaB	abortionsBaboardBabandonB88B85B64B53B3rdB33000B20000B1997B1996B1995B1991B1977B1976B1913B1806B180B1237B“yesB“withB“whiteB“there’sB“suzerainty”B“someB	“peopleB“nowB“getB“foxB	“ethnicB“areB  BzionistBzarifByvesByoudBxdrtbBwsjBwrathBwoundB
would’veB	worldviewBworeBwipeBwineB	wikipediaBwhistleBwell”B
wellfundedBweaverB
weaponizedB	waterwaysB	watergateB	wassermanBwagingBvowsBvowBvoidBvetBverifiedBvelocityBvastlyBvaryingBvalidBvacancyButterlyBurbanB	unwillingBunpredictabilityBunnecessaryBunleashBunifyBunhappyB	unhabitatBunfitBunfavorablyBunfavorableBunconsciousBunauthorizedBunacceptableBtwodayBtwentyBturksBttipBtroublesBtrickBtribalBtrendsBtreatiesBtransitBtransferredBtraditionallyBtradedBtowerBtouchedBtomorrowBtogether”Btoday”B
tirelesslyBtinyBtimingBtimes”BtikritBtierB
thoughtfulB
thoroughlyBthoroughBthing”B
that’sBtexBtestsBtestifyB
terrorizedBterriblyBtenseBtelepromptersBteensBteenagerBtaylorBtaxingBtaskedBtariffsBtapeB
tantamountBtablesBsystemicBsyriasBsympathyB	sustainedBsustainableBsurvivedB	surroundsB	surrogateBsuppressionBsuperchargeBsuggestionsBsufismBsufficientlyBsubtleBsubsequentlyBsubscribingBstrengthenedBstrawBstormsBstingBstickerBsteppedBstemsBstaysBstatutesBstationsB	stationedBstarrBstancesBstagesBstackedBstackBsquadB	spotlightBsportsBspiritsBspendsBspecifyBspeakersBspanBsomaliBsociableBsoberBsnowBsniperBsmileBsmellBsmallestBslotBslipBskepticsBskeetBsinkBsimultaneouslyBsimonBsilkB	sidelinesBshrinkBshoulderBshiftsBsheriff’sBsheikhBshakingBsexuallyB
sentencingB
selfesteemBseizureBsectionsB	secretiveBsecretarygeneralBscreamsB	satelliteBsantaB	sanctuaryB	sacrificeBsabotageBrussellBrushedBrufusBrtexasBroykoBroyBrowBroundsBrolesBrogueBrodgersBrobustBringBriggingBreversedBrevB
restrictedB	restraintB
restaurantBrespondentsBrescuedBrepub­li­canBrepublicancontrolledBrepsB	reprintedBrepeatBreopenBrenewalBremoteBreminiscentBreliedBreliableB	relevanceBrelentlesslyBrejectsB
reiteratedB
reinforcedBreignB
regulatingBregulateBrefusalB
reflectingBredditBrecruitsBreconciliationBrecognizableBrecalledBrealclearpoliticsBreadilyBreactionaryBreachesBratsBrapistsBramificationsBrallyingBrajBraidsBrageBquestionandanswerBquestB
quantitiesBqualifyB
public’sB
publicizedBpublicationsB	providersB	protesterB
protestantBprotectsBpropositionB
process”B	proceededBproceedB
privilegesB	principalBpricingBprevailBpresstituteBpresidedB	preservedBpreserveBpresentsB	prejudiceBprefersB
preferableB
predictionBprayerBpoundsBpotusB	posturingBpostmodernismBpostingsB
portrayingBportoBportBpopulismBpope’sBpoorlyBpoliticoB
polarizingBpoisedB	pointlessBpleasedBpleaB	platformsBplatesBplacingBpkkBpitBpipeBphilosopherBpersianBpercentagesBpatienceBpatentedBpatBpastorBpassionsB	passengerBpassalacquaBparticipatedB
parkinsonsBparanoidBparamilitaryB	paperworkBpamelaB	o’brienBowedBovertakeBout”B	outspokenBoutlookBoutdatedBoutageBoriginatingBoriginB	organizerB	oppressedBopennessBone’sBolympicsBolsonBokiedokeB	offendersBoceansB
occurrenceBoccasionB	objectiveBoBnutsBnullBnow”Bnot”B
noticeableBnormalizationBnonexistentB	nietzscheBneuralBnestBneoconB	neighborsB
negativelyBnaturalnewsB	nation”BnamingBnairobiBnailBmysteryBmurrayBmuhammadBmottoBmotivesBmotivationsBmorganBmodelingBmisdiagnosisB
millennialBmilitiaB
militarilyBmileBmignonetBmidnightBmiamiBmethodologyBmercuryB	memorableBmeltdownBmeetsBmeaslesB
mcconnellsBmaxwellBmaxBmassieBmarxistBmartialBmanufacturedBmanslaughterBmanifestationBmaniaBmanagingB	makeshiftBlutherBloyaltyBlosersBloomingBlogicalBlockBlocalsBloadedBloBliuBlinkingBlingsBlindB	lifestyleB	licensingBleapBleanBldBlavrovBlaughingBlatelyB	lastditchBlarryBlackingBlabourBlabelsBkyaBkoreanBkoiBknowledgeableBkirbyB	kidnappedBkatyBkadzikBkaB	justifiedBjuanBjoyBjoelBjeopardyBjensB	jeffersonBjanBjackBis”BissuanceBirreversibleB
irrationalBiraq’sBiraniansBin­ves­ti­ga­tionBin­for­ma­tionBinvestB
invaluableB	interveneBinteractionsBintentionallyBintensifiedBintelB	integrateB
insurgentsB	insultingB	instantlyBinsistB	inquiriesBinherentBinflammationBinfiltratedBindisputableB
indictmentB	india’sBindianapolisBindepthB
incoherentBincidentallyBinchBincBinappropriateB
inaccurateB
imprisonedBimplyingBimplicationBimminentBimamBidentificationBidealsBicebergB	hypocrisyBhusbandsBHhttpwwwinfowarscomwpcontentuploads201510brainforce25200e1476824046577jpgBhostsBhorseB
horrifyingBhorrificBhoppedBhooverBhonestyBholdersB
history”B	historianBhintedBhim”BhillsBher”BheritageBheresBheightBheatingBheatherBhealBhardwareBhardlineBhandingBhabitBguénon’sB	group’sBgrossBgreatlyBgraspBgrandfatherBgraduateB	graduallyBgotoBgop’sBgoodsonBgodsBglaringBgeopoliticsB
generatingBgarnerBgarinBgardenBgalstonBgallonsBgaddafiBfundraisersBfulltimeB	fullblownBfulfillBfrequentBfreddieBfrancoisBframersBformerlyB	forensicsB
forcefullyBfollowupBfoesBfocusesBflurryBflowBfliesBfledBflameBflaBfixedBfitchsB	fireworksB	finishingBfiftyBfierceB	feministsBfearfulBfartherBfarmingB	fantasticBfamilysB	factoriesBfacetimeB	extendingB	explosiveB	exploringBexperimentsBexperimentalBexistedB	excessiveB
exceptionsB	exceptionBevadeB
evacuationBeurozoneB	epicenterBenvoyBentiretyBentailBenquirerBenlightenmentBenjoyedB	engineersB	enforcingBenablingB	employingB	emergenceB	embracingBembarrassingB
elec­tionBeldersBeasterBdurgunBdunnBdunfordBdressedBdramaB
downloadedBdougBdotsB
dominationB	dominanceBdogBdoe”BdivorceBditzB	distortedB
dissidentsB	displayedB	displacedBdislikedB	discussesB	discreditB
disclosingB	disastersBdirtBdifficultiesBdictatorshipBdictatorBdictateBdhanB	developerB	detentionBdesperationBdesignationB
denouncingBdemonstratesBdemandedBdegradationBdeflectB	defensiveB	defendersB
defendantsB	defeatingBdeepestBdeemedBdecreaseBdebbieBdealingsBdcalifBday”B	davutogluBdatingBdarknessBdarkestBdaraBdamningBdaleBcyberattacksBcurseBcummingsBcrushBcrowB
criticismsB	courtyardBcounterpartBcorporationBcoreyBcopeB
coordinateB	contenderBcontemporaryBconsultantsB
consultantBconstructedB	constructBconstitutesBconstituenciesBconsolidatingBconsiderablyB
conscienceBcongratulateBconfrontingBconfirmsBconcentratedBconcededB	computingB	compoundsBcompareB	communismB	commodityBcommittee’sBcommercialsB
commentersBcommentatorsBcommentatorBcollegeeducatedBcollectivelyBcollarBcolBcoffeeBclin­ton’sB
clinton”BclientsBclas­si­fiedBclass”B	classroomBclarityBcity’sBcitesBchurchesBchillingBchildsBcheeredBcheckedBchartsBcharterBcharacterizeBcharacteristicsB
channelingBcenteredBcelsiusBcelebratingB
celebratedBcecilB	ceasefireBcbdBcatastropheB
cartwrightBcantBcandidate”BcallerBcalendarBbuttonsBbuttonBbush’sBbusBburyBburwellBbullshitBbuenosBbubléB	brookingsBbrokeredBbriefedBbreedingBbreatheBbreachBbranstadBbradleyBbotherBborrowerBborrowBboothBbonesBbonanzaBbombingsBbolsterBblitzBblastedBbitterB	biographyBbe­foreBbetaBbennettB	benchmarkBbelongedBbeerBbastionBbashBbaseballBbarterBbamakoBballBbalancedBbackupBbacklashBaxisBavoidingBavoidedBautonomyBassessmentsBassessB	assertingB
assailantsBassBarrivesBarrivalBarnaldoB	argentinaBappropriatelyBappointmentsB	applebeesBapplauseB	appellateBappearancesBappealedB
antimuslimBantiisisB
anticipateB
antibioticBannBanimalBanchorB
ammunitionBalloutBalliedB	alliancesBalgeriaBalarmingBakhileshBairportsBairesBahmadBagreesB	afterwardB	affiliateBadviseBadoptionBadoptedBadmiralB
adequatelyBacquireBachievedBaccordinglyBaccomplishingBaccompaniedBacademyBabdulB
abbottabadB	abandonedBaaronB89B80000B73B72B500000B4thB3495B250B247B240B2246B19thB1939B175B170B	15yearoldB150B14thB125B101B“wellB“trump’sB“taxB“sinceB“otherB“oneB“moralB“money”B“likeB“justB“howB“hisB“hasB“evenB“bigB
“becauseB’B‘iB—�BоктябряBгB·B	zeropointByou’dByouveByoursByouangB	yorkbasedByieldByenByeastByardsByadavByaBwurdiBwrong”BwouldbeBwork”BworkrelatedBwoodsBwoodrowBwirelessBwireBwhollyBwhodBwhipBwhilstBweightliftingBweighBweddingBwealthmanagementB
wealthiestBwastedBwashpostBwashington”BwarriorBwannaBwalterBwalksBwaitedBwagonBwagedBwadeBvyingBvote”BvolatileBvoicedBvladeckBvisitorsBvirtuesBvirginBvillagesBviennaBvictorBveritasBventureBvdareBvalidateButterBussBusmexicoBupsBupheldBupdatingBupdatesBuntoldBunsB
unreliableB	univisionBuninterestedB
unilateralB	unhealthyBunfoldB
unfetteredBundoubtedlyB
underneathBundergroundBuncommonBuncivilBunawareBumarBtypicalBtylenolBtuskegeeBtubeBtshirtsBtrooperB
trilateralBtreatsB
treatmentsB
treasonousBtransmitB
transcriptBtrackerBto�BtoughestBtoppedB	toleranceBtoiletBtissueBtighterBthumbsupB	threat”BthirtyBtheydBtheoreticallyBtheoreticalBtheologyB	textbooksBtermedBtenorBtenetB	televisedBteleprompterBtapperBtammyBtalentedBtaintedBtacticBsweetBswathBsustainBsussmanB	survivingBsurgingBsurgeryBsupremacistBsuppressBsupposeB
supportiveBsuppliedB	supermoonBsunsetB	sunday”BsugarBsubvertB	submittedBstumbledBstubbornB	strugglesBstrictlyBstrictB
stretchingBstrangerBstormedBstoppingBstomachBstimulusBstaunchBstaterunBstampBstalinBstainB	spreadingB	sponsoredBspeedingBspecsBso”BsoundingBsoundedBsolvesBsoftBsoarsB
smallscaleBslowedBslimBslideBsleepingBsizzlingBsisterBsingularB	sincerelyBsimpsonBsillyBsilencedB
signaturesBsignaledBsiBshredBshoutsBshouldntBshortageBshoreBshopsBshockerB	shipmentsBshineBsheriffBshameBshakyBshadowyBshabaabBsextingBseveredBserialBsergeyBsergeiBsendsBsenator’sBseminalBselfdescribedB	selectionBsecuresBsecondplaceB	screeningB	screamingBscrapsBscornBsciencesBschumerBschmitzBschmidtB	scatteredBscaresBscamBscaliseBscBsavageBsansBsanderssBsamBsakeBryan’sBrustB	russia”B	russiasBrulingsBrules”BruinBrubBrtexBroutineBroutesBropeBromaniaBrolledBroeBrocksBriversBripBriowaBringingBrileyBrigorousBright”B	rights”B
rightfullyBricoBrevisedBrevengeBretireesBretakingBretakeBresumeBrestrictiveBrestrictBrestoredBrespectsBresourceBresortB
researcherB	repudiateBrenziBremotelyBrelianceBrefrainB
reflectionB
reductionsBredistributionB
recommendsB	reasoningBrealmBrealizationB	readinessBreactsBreactingBratifiedBratheonBrarizBrapBrangingBramBraidedB	radicallyB	radiationBradarBracketBquippedBqueriesBquasiparticleBpyramidsBpurseB	purportedBpuritanB	punishingB	public”BpsychologistBproudlyB
propertiesBpromptlyBpromotesB	prohibitsBprohibitionsB
progressedB
profitableB
proclintonB	prochoiceBprobableBproBprisonsB	princetonBprincessBpriebusBpress”B
preservingB
prescribedBpremiumBpremiseBpregnantBpreemptivelyBpredecessorBpreacherBpostureB
postsovietB	possessesBposingB
portsmouthB	portrayedBportrayBportmanBportlandBportionsBpopulousBpollutedBpoisonedBpocketsBpledgingBplaybookBplateBplasticBplagueBplacateBpivotalBpistolB	pinterestBpinBpickupBpicksBphotographerBphilipBphilB	petroleumBpetersBpestsB	pesticideBpersecutionBpermitBpermanentlyB	perimeterBperformsBperceptionsBpensBpennyBpennBpenchantBpeddlingBpatriotsBpatentlyBpatakisBpassionatelyBpassesB
passengersBpassageB	parallelsBparBpapalBpanamaBpalmyraB	palestineB	pakistaniBpainkillersB
o’malleyBoverwhelmedB
overturnedB	overthrewBouterBounceB
ostensiblyBorchestratedBoperatorBoperatesBone”BomanBohiosBoccupiedBobsoleteB	obsessionBobservationsBobscureBobrienBobedientBnurseBnuancedB	northwestBnormBnominationsBnoiseBnoahBninthB
neoliberalBneoconsBnegroBnegotiationBneedingB	necessityBnbcwallBnasaB
narrativesBnaiveBmysteriouslyBmuseB	murderingB
multipolarBmsfBmotivateB
mosquitoesBmortgageBmootBmooresB
monopoliesBmonitorsBmonicaBmolochB	mobilizedBmissionsBmismanagementBmisinformationB	misguidedBmiseryBmirroredBmintBmilitarystyleBmikulskiBmgBmetresBmetadataB	messagingBmerkelBmercyBmentorBmenaceBmemorialBmedianBmayorsBmatteredBmathematicsBmatchupBmassacreBmasqueradingBmaskedBmaryamiyyah’sB	marriagesBmarredBmariuszBmarioBmarginalizedBmarchedBmarathonB	mansfieldBmanmadeB
manipulateBmaneuveringBmakersB	maintainsBmadsenBmadonnaBmadamBmacroeconomicBmaBlynnBlungBloweringBlovesBlootingBloomsBloomBloneBlockingB	lithuaniaBlistsBlistenedBlisaBliquidB	lingeringBlindseyBlimitingBlightingBlife”BlicensedB
liberationBliaisonBlewdBleverageBlentBleninBlegislaturesBlegislatorsBlegionsBlegendBlearnersBlayoffsBlayersBlaw”BlawlessBlawfullyBlaurenBladensB
lacklusterBlaboredBknockedBkleinB	kissingerBkeysBkennethB	kellyanneBkeenBkbhiB
kazakhstanBjunkBjuniorBjudgedBjoseBjorgeBjokinglyBjokedBjfkBjenniferBjehBjamiedupreeBjailedBit…Bit’sBitalicsB
israel’sBisraelisBironyBironBirishBirelandBiraqsBinvestorB	inventionBinvadedB
introducesBintrigueBintersectionBinterruptingBinterpretationsBintentionalBintegrationBinstrumentalB
instrumentB
institutesB	installedBinspectionsBinspectBinsightsBinsightBinsaneBinroadsB	injusticeBinheritB	inhabitedB	informingBinformativeBinformation”B	inflictedBinflictBinflationaryBinferiorBinfections…BineptB
indicatorsBincorporatedBinconvenienceBincitingBimprovementsBimproprietyBimproperBimplyBimpliesBimplicitB
implicatedB
imperativeBimfBimaginedB
illiterateBillegitimateBideologicallyB	identicalBideas”BhypotheticalBhurtsBhurtingBhurdleBhungaryB	hungarianBhumorBhumiliatingBhughB
huffingtonBhudsonBhtBhonduranBhintBhikmetBhighsB	highgradeBhersBheroinBheraldB
hemisphereBhelmBheinousB
heightenedBhegemonyBheatsB
headtoheadBhatesBhatchBhartBharrisonBharnessB	happinessBhangingBhandlersBhaltedBhadn’tBhadntBgunfireBgroveB	groups”BgrosslyBgriefBgridlockBgreggBgreetedB
greanvilleBgraphicBgrandchildrenB	graduatedBgraceBgpsBgovernor’sBgottaBgospelBgordonBgoodwillBgod”BglovesB
globalistsBglitchesB	glamorousBgladlyB
girlfriendB
gillibrandBgiftBghaniBgesturesBgestureBgermansB	genuinelyBgeniusBgeneticBgenerateBgamesBgamechangerBgBfutileBfungalB
fundraiserBfundersBfrustratingBfruitBfrozenB
friendshipB
friday’sBfresnoBfreelyB	frederickBfreaksBfrayedB	fracturedBfractureB
forward”BforgivenessBforgivenBforgiveBforestBforcefulBfootBflowsBflownBfloodedBfloodBflexibleBfleshBfleetBflatlyBflashBfirstinthenationB	firsthandBfirearmBfiorinasBfilingsBfilingB
filibusterBfiguredBfelonyBfeedsBfeeBfed’sB	federallyB	featuringBfearingBfda’sBfatefulBfatallyBfascinatingBfarmsBfarmBfancyBfalloutBfactualB
facilitateB	extractedB
expressionB	expressesBexploitationBexpireBexpenseB	exercisesB	executionBexcusesBexcludedBexceptionalismBexceededBexaminationB	evacuatedBethernetBestablishmentsBerinBequityBensuresBenrolledB
enrichmentBenlargeBenjoysBenhanceB	energizedBenduringB	endlesslyB
encountersB	emphasizeB	embarrassBelse”B
eliminatedBekBeggB	efficientBedwardsBeducationalBeddieBechoBeasingBdynamicsBdustBdumpingBdubbedBdressBdraftedBdown”BdownwardBdosesBdormantBdone”B
dominatingBdominateBdomesticallyBdomainBdoeBdodonBdistinctionB	dissidentBdispossessedBdisorder”BdisgruntledBdiscriminateBdiscreditedB	discoversB	discourseB
discontentB	disciplesB	disagreesBdireB	diplomatsBdignityBdifferentlyBdiesBdictatedBdiceBdianneBdialogueBdevelopsBdestroysBdestabilizeB	desirableBdesignsBdescentBdescendantsBdeploymentsB
deploymentB
dependenceBdemocraticallyBdemiseBdelongeBdelegitimizeB
delegationBdelayedBdelawareBdefinesBdefiantBdefenderBdecreesBdeceasedBdebt…BdeborahBdealerBdaylightBdawnBdashBdareBdamnedBcurbB	crossoverB
crosshairsB	criticizeB
criminallyBcreepyBcreatureB
creativityBcrashingBcrackBcpacBcowboyBcoverupBcourtedBcoupsBcoupledB
counteringBcoulterB	couldntBcorrectnessBcorrectionsBcorpseBcoordinationBcoordinatesBconvenientlyBcontributorBcontinuouslyB
contingentBcontentsB
containingBconsumeBconstitution’sBconstituencyBconsistsBconsistBconservationB
confirmingB
condemningBconcordB
conclusiveBconcealBcompriseBcomplainB	compilingB	competentB
compensateB
compellingBcompassionateB	comparingBcompany’sBcommitmentsBcommission’sB	commenterBcommendBcomebackBcombinesBcombineBcolorsBcolonialB	colleagueB
collapsingB	coincidedBcoffinBcoauthorBcoalesceBclosetBclockBcleaningB
classmatesBclashedB	clarifiedBclandestineBclaireBcivilityBcircuitB
cincinnatiBchomskyBchipBcherifBcheersBcheckingBchatBchaseBcharacterizedBchantBchampionBchairsBchainsBchadBcensusB	celebrityBceasedBcautiousBcataclysmicBcartelBcarolBcaptionsBcannedBcancelBcameronBcamdenBcaBbustBburstBbureaucracyBbuoyedBbuntonBbumperBbulletBbullBbrutallyBbrozeBbroadcastingBbrinkleyB	briefingsBbribeB	breakdownBbrazenBbrattonBbrashBbranchesBbrainwashedBbrainsBbpamzBboysBboycottB
boundariesBbounceBbotheredBboringBboothsBboosBboomBbookerBbonfireBbohemianBboastedBbluffBblessBblatantBblackoutBblacklivesmatterBbitlyBbirthdayBbiddingB
bewilderedBbergenB	believersBbelgradeBbehaveBbattsBbattlesBbashingBbasementB	bartenderBbarriersBbarrelsBbank’sBbananaB	balancingBbailoutBbailBbagsBbacteriaB	backfiredBbackdropBayresBaynB	ayatollahB	awakeningBawakeBavertBauthorizationsBauthoritativeBaustriaB	audiencesBattributionB
attributesB
attributedB
attendanceBattBatlantaBathletesBassociation’sB	associateBassignedBassertBashtonB	ascendantBarrangementsBarrangedB	arlingtonBarkBarguablyBargentina’sBardentBarchiveB	arbitraryBappropriationB	apparatusB	appallingB	antipathyBantiamericanB	announcesBankaraBanewBanalyzedB	analyticsBamicusBamericans’B	ambitiousB	ambiguousBamandaBaluminumBalternetBalternativesB	alternateBalshababBalnusraBalignB	alexanderBalcoholBalbuquerqueBaimingBagreeingBagnosticB
afterwardsBaffirmedBaffinity”B
affiliatedB	affectingBadvisorsBadvertBadrianBadaptedBactressBactivateBacronymBacquiredBacluBaccumulatedBaccomplishmentsBaccompanyingB	accessingBacceleratedB
accelerateBabsentBabdeslamB9thB97B86B800B78B68B40000B25thB220B200000B1984B1983B1981B1960sB1960B181B1797B15thB132B1100B02B01B‹B“…B“wouldB“willB“whereB“whateverB	“unitedB“theirB“takeB“synced”B“successful”B
“she’sB“outer”B“orange”B“onceB“onB“ohB“ofB
“octoberB	“nobodyB“moreB“lookB
“like”B	“i’veB“innerB“hillary’sB“greatB“goB	“globalB“fromB“firstB“electionB
“don’tB“blackB“bestB	“battleB“atB“artB‘sB‘didB¶B§2703B§251015BiB�BzuckerBzhouBzealByrsBypgByou—ByokoByogaByodaByieldsByet”ByellingByellenBwroughtBwritingsBwristBwrangleBwoundsB	worthlessBworsenedBworriesB	workplaceBwittersBwithheldB	witheringBwisBwipedBwindsBwindowsBwindingB
willows”Bwilliams’Bwikileaks’BwieldingBwho’veBwhomeverBwhatsB
whatsoeverBwe’dBwestgateBwellsBweinersBwearyBweaponryBway”BwavingBwavesBwavedBwatchdogBwar”BwarrensB	warplanesBwarnsBwarmBwalshfreedomBwalshBwallahBvtB	voters”B
voluminousBvolumesBvolumeB	visionaryBvirusesB	violentlyB
vigorouslyBvidalBvictoriaBvictimizationBvicepresidentialBvettedBvestBvesselsBversaBverificationBverbalBvendorBvdarecomBvciBvaticanBvaryB	variablesBvampiresBusnatoBuselessBusafBurlBurgingBuptickBupstateBupstartB	upliftingBunveiledBuntrueBunsustainableBunstoppableB
unsilencedB
unscriptedBunrestrainedB	unrelatedBunregulatedBunreasonableBunpublishedB
unpreparedBunpopularityB	unnoticedB	unmarriedBuniquelyBunipolarB	unionizedBunimportantBunificationB	unfoldingBunescoBunequivocallyB	unelectedB
undergoingBunderdogBunbelievableBunarmedB
unamericanBunaffiliatedBucBtwoyearB	turbulentBturBtunnelsBtuneBtruthsBtruthfulBtruthfeednewsBtrumpsBtroveB
tripartiteBtrickortreatingBtrentB
treasuriesBtrayvonBtransnistrianBtransnationalBtransmittedBtranslationBtransformationalBtraitBtrailingBtrailblazingBtraffickersBtraditionalistsBtracksBto”BtoutBtouristsBtouchingBtotalsBtotalitarianBtossedBtopsBtomdispatchBtokyoBtimothyBthyroidBthwartedB	thursdaysBthuneBthumbsBthumbBthugsBthroatsBthrilledBthreadsBthornyBthompson’sB	things”BthierryBthierBterrorizingB	terrorizeBterritoriesBteraniBtenuousBtenacityBtemperB	telescopeB	telegraphBtechnologiesB	techniqueBtayyipBtaxedBtatankaBtappedBtanksBtangibleBtampaBtakfiriBtabloidBsyria”BsyriaBsyndromeBsymbolsBsymbolicBswellBswampB
suspensionB	survivorsBsurrenderedBsurprise”BsurgicalBsupplementingB
supplementBsuperpowersB	superiorsBsunnyBsummersBsummedB
summarizedBsuffersBsudanB
successionBsubstantiveB
subsidizedBsubscriptionB
subpoenaedB
submarinesB
structuresB	strongarmB	strippingBstringsB	stretchesB	stretchedBstreakBstracheBstonesB
stockpilesBstipulationB
stevens’BsternBstellarBstatuteBstate”B	states’B
starvationB	startlingBstandardbearerBstakedB
staggeringBstabilizationBsrBsquarelyB
squanderedBspouseBsponsorsBspinningBspilledBspenceB	speculateBspecialsBspecializedBspearheadedBspateBsparkedBsparkBspareBspacesB	southwestBsoutheasternB	sotomayorBsorrowBsordidBsonyBsometimeBsomeone’sBsomaliasBsoleBsoarB
snowflakesBsnowdenBsnlsBsnipBsmokingBsmokescreenBsmilingBsmashingBsmashedBslursBslowerBslowdownBslopeBslewBslavesBslateBslanderBsketchB	sixteenthBsinjarBsinglepayerB	singaporeBsimultaneousBsimplifyBsighB	shutdownsBshot”B	shorttermB	shortlistBshorterBshookBshoesBshipsBshippingBshenanigansBsheepBshaykhB	shatteredBshapingBshantytownsBshamelesslyBshakesBshadyBshadesBsgtBsfBse­niorBseventhBsettlementsBsettleBservices”B	sequesterB	separatedB
sentimentsBsensibleB	selfimageBselfiesBselfieBselfidentifiedB	selectingBsectorsBseasonsBscrollBscrewedB
screenshotBscreensBscholarBschiffBscherB	scan­dalBscantBsaxbyB	satiricalBsarandonBsarahpalinusaBsaneBsandyBsandwichBsandBsaluteBsalesmenBsackedBryensBruthBrulersBruinedBrudyBroveBroundingBrothschild’sB	rosenbergBrootedB
romney’sBroklaBrockedBrobberyBrobbedBroaringBroamBrisk”BrightleaningB	righteousBridiculouslyBrewriteBreversalBreverbyB	retweetedBretweetB	retrievedBrethinkBretailerB
resurgenceBrestrepoBrestaurantsBresponsibilitiesBresolvesBresolvedB	resistantBresideBreshapeBrerunB	republishBrepublicanleaningBrepublicanalliedB	reproduceBrepercussionsB	repeatingBrepaidBremedyB
reluctanceBreliantBrelaxedBrelaxB
reinventedB	region”BreferencingB
referencedBreedvealBredistrictingBrec­om­mendedBrecycledBrecruitBrecorderB
recipientsB	recipientBrecepB
rebuildingBrebuffedBreboundB	reassuredB
reassignedBrealizesB	reactionsBravagesBrappersBrapingBrangedBranchBrampantBrailBragingBradissonBradioactiveBradicalsBquebecBqualificationsB	putin’sBpursuitsB	purposelyBpurposefullyB
purposefulBpuritansBpurgeBpurelyBpunkBpunchingBpunchedBpunchBpumpBpsychicBpsychiatricB	pseudonymBprovokesBprovokedBprovocateursBprovinceB	protocolsB	protectorB
protectiveB
prorussianBpronouncementsBproneBprominentlyBproliferationB
prokurdishBprogressionBprogovernmentB
profoundlyBproducesB
processionB
processingB
proceduresB
proceduralB	probationBpresumedB	pressuresBpressesBpresidency”BpreservativesB
presentingBprescriptionsBprepositioningBpreparesBpremierBpreludeB
preemptiveBpredictionsBpredictablyB	predatoryB	precisionBprecinctB	preachersBprayingBprayersBppisBppiBpouringBpourBpoundBpotentBpotatoBpostersBpost911B
possessingBposition”BpoppedBpopBpoolsBpoolerB	pollstersBpoliticizedBpolioBpolicymakersB	policemanB	pointedlyBpledgesBpleasBplatterB
platitudesBplannerBplainlyB	placementBpivotBpitchingBpiledBpigsBpigBpierB
physicistsBpewsBpestBperónB
persuadingB	persuadedB	person”B
persistentBpersistB	perpetualBperpetratedB
permittingB	permalinkB	perennialB
penningtonBpeerBpecosBpearlBpayrollB
payforplayBpavedBpausedB	patrioticBpathwayBpathsBpatchBparoleB
paragraphsBparadigmBpanickedBpanelsBpalinBpalaceBpaintingBpahlaviBpacsBpackageBozBoyateBowingBoverturningB	overturesBoverseesB
overseeingBoverrunBoverlyBoverdiagnosedB
overcomingBoverarchingBoutletBoutfitsBouncesBottomanBother”B	other’sBosamaB	orthodoxyBoriginsB
originatedBorientationBoptingBopsB
oppressiveBopioidB	operativeBoperationalBopaqueBon”BonesidedBoliverB	oligarchsB	offscriptB
occupationB
ob­tainedBobsessivelyBobservatoryBobservationBobeyBnumberedBnuisanceBnsaidsBnotifyBnortheasternBnormsB	nonwhitesBnonwhiteBnonpresidentialBnongovernmentalBnonBnodBnigeriaB	nicknamedBnicholasBnicerBngoBnews’sBnewestBneutralizedBnepalBneighborB	negligentB
negligenceBneglectBneedleBnebulousBnearestBnearcollapseBnc005BnbcsBnashuaB	narrowingBnakedB	muttahidaBmusketBmusicianBmuscleB	muscatineB	murderersBmulvaneyB	multitudeBmuammarBmsmBmpaB	motorcadeBmotionBmoronsB
moratoriumB	moore’sBmonroeB	monitoredBmondaleB	momentousBmohammadBmodesB	modernismB	moderatedBmockeryBmockedBmobilizeBmobilBmoBmixtureBmisunderstandingsB
misogynistBmischiefBminazBmimsB
millenniumBmilitarysecurityBmildBmikhailB
midwesternBmidtermsBmichael’sBmeyssanBmeyersB
mes­sagesB
mentioningBmemoriesBmedievalB
mechanismsB	mechanicsBmdBmcgeeBmccaulB	mccaslandBmcadamsBmay’sBmaximizeBmatesBmatchedB	massivelyBmarxBmarryB	marquetteBmarkingBmarketplaceBmarkedlyBmarinesBmariaB	margoliesBmarcBmarbleBmap”B
manifestlyBmanhuntB	mandatingB
manchesterBmali’sBmalfunctionB
majorpartyBmagnateBmadnessBmacroBlynchsBluntzBluckyBlucasB	loyalistsBloweredBlouieBlotteryBlottBlooselyB	loopholesBloopholeBlongshotBlongestBlondonbasedBlodgesBloanedBliverB
literatureBliteralB	liquidityBlikewiseB
likemindedBlibraryB
liberatingBlewinskyBleviedBlevequeBletsBlethalBlestBlessenBlenaB	legalizedBlegalityBleftleaningBleapingBlaysBlawsuitsB	lawmakingB
lawabidingBlaussierBlaundryBlaudedBlastingBlashedBlashaBlapBlandedBkylieBkristinaBkoslowB	knowinglyBkneesBkneejerkBkleptocraticBkissedBkimmelBkerrysBkateB
kaepernickBjyadaBju­bi­lantB	jus­ticeBjuiceBjoyfulB	jordanianBjonBjokesBjohnnyBjob”BjihadiBjessicaBjerseysBjerryBjennerBjediBjarrettBjapansBjacobBitllBitemB	isolationBisaacBinvoluntaryBinviteB
invitationB	invisibleBinventedBintroductionB
intriguingB	intricateBintimidatedBinterruptedBinterrogationBinterpretingB	interpretBinternationallyB	interceptB	intenselyB
integratedBinsurersB
insistenceB
insecurityBinsectsBinjureBinjectedB	inheritedB
inherentlyB	ingestingBinfrastructure”BinformsBinfluencingBinflatedB
infiltrateBinfantsBinexplicableBindiscretionsB
indirectlyBindirectBindignationBindicesB	indicatorBindicationsBindependentlyBincurredBinclusivenessB	inclusiveBinciteBinchesBincestBinboxBinactionB
impressionB	impressedBimplementingB	impactfulBimmunizationsBimmuneBimmoralBillustrationBillustratedBillusoryBigorBidioticB
identifiesBicrcBibnBibdB
hypothesisBhydeBhungryBhugoBhuggingBhuggedBhudaydahBhubbleBhrBhoustonB
householdsBhostingBhostedB
hopelesslyBhookerBhonorsBhonoredBhomicideBholidaysBholidayBholesBhoferBhiresBhillaryclintonBhillarycareBhighqualityBhewlettpackardBherridgeBheroicBherdB
henceforthBheidiB	hedgehogsBheavierBhealthcaregovB	headlinedBhayBhavenBhauntBhatBhastingsBharshlyBharpsichordBharmfulBhardenedB	harassingBhannahBhangsBhands”Bhampshire’sBhammeredBhakimBhailedBhackBhaciBhabitatsBhabitatBgunfreeBguiseBguiltBguidedB
guantanamoBgruelingBgropedBgrippedBgrindB
grievancesBgrefBgreeneBgraysB	gratitudeBgrantingBgrabsBgovernedBgoshB
google’sBgogginBglowBglimpseBgladBgigatonsBgiganticBgiantsB
georgetownBgeomagneticBgeneticallyBgenesisB	generatorB	generatedBgateBgarissaBgalacticconnectioncomB	gainfullyBfuryBfunnelBfundamentalsBfundamentalismBfunctionalityB
fulfillingBfuelingBfruitsBfriedB
freemarketB	freelanceBfreeingBfrazierB
fraudulentBframedBfoxnewsBfourwayBfoulBfortyBfortunesB
formidableB	formatingB
forgettingBforbesBfontBflawsBflagshipBfixingB	firsttimeB	firsttermBfirewallBfinancedBfilmedBfetalB	festivalsBfestivalBfertileBfermionsBfeasibilityBfdrBfavoringB	favorablyBfavorabilityBfatahBfaresBfantasyBfameBfaithfulBfadedBfactionsB
facetofaceB	facebooksBexxonBextraordinarilyBextramaritalBextrajudicialB	exportersB
exploitingB	exploitedBexpelledB
expectancyBexertBexecutesB	excludingBexcerptsB	exceedingBevil”BevidentBevaluateBeurasianBetiBethanolBeternityBesfBescortedBeruptionBermoldBequippedBepstein’sBenvironmentsBentertainingBensuedBenrichBenormityBenjoyingBengagementsBenduredBendtimeB
encouragesBencounteringBenamoredBenablesBenableBenBempBemotionsBemotionallyBemotionBemittersBembeddedB	embattledBellenBeliminatingB
eliminatesBelevenBelevatedBelementBelectricB	electableB	elaborateBelB
eisenhowerBegBedwardBeditorinchiefBeditorgreanvillepostcomBeditedBecuador’sBechoesBeasiestBearthquakesBearliestBdxyBdunhamBdumpBduginBduffBdsmBdrumsBdruckenmillerBdrillsBdriftedBdriedBdrawsBdragBdoyleBdownsBdownloadingBdoubtedBdoublingBdoubledigitBdon­aldBdominantBdoesntBdocumentingBdoctrineBdmvBdmitriBdmcaBdivisivenessBdividesBdistortsBdissolveB
disruptingB	disruptedBdisperseBdisorders’B
dismissiveB
dismantledBdismalBdisinformationBdisillusionedBdiscretionaryB
discretionB
discerningBdisavowB
disapproveBdisappearancesBdisagreementsB	directingB
diminishedBdimeBdilemmaBdiggingBdigBdietBdied”B	dictatorsBdickBdianaB
diagnosticBdiaBdevineBdetroitBdetectedBdetainedBdesiredBdescriptionsB	descendedBderryBderBdeptBdepriveB
depositionB
deplorableBdepart­mentBdepartedBdentBdenounceBdemsB
demo­cratBdemocrats’B
delusionalBdelicateBdelaysBdefyingBdefundBdeformitiesB	deflationBdefiningBdefiesBdeetBdeepenBdeductiblesBdecriedBdeclassifiedBdeckBdecisiveBdebt”BdebatedB	deadlinesBdaytodayBdatedBdarrylBdarkmoonBdapaBdanceBdanaBcyclesBcursedB	curiosityBcuredBcupBcubeBcubanamericanBcruickshankB
crossroadsBcronyBcrit­i­cisedBcritiqueB
criticisedBcrim­i­nalBcrazeBcrashedBcracksBcozyBcoyB
courthouseBcountries”B	counteredB	counseledBcotBcosmicBcor­rup­tionBcorrelationBcorporatecontrolledBcop’sBcopiesB	cooperateB
conversionB
converselyB
control”BcontrollersBcontributorsBcontrastingB
continuityBcontaminatedB	consumingBconsultB	consulateBconsternationBconspiratorialBconsiderationsBconquestB
connectingB	confusingBconfigurationB	conferredB	concertedBconcedeBcompromisedB	compositeBcompliedB
complicityB
communistsBcommunicatedBcommissionerBcommandsB	combativeB
combatantsBcolonyBcollegesBcoinedBcohnBcodesBcnlBclueBclownsB	cloughleyBcloudsBclintonweinerBclinchBclimbingBclickingBclearerBclauseBclassificationBcivilisationBcitadelBchronicBchorusBchatterBchatsBcharredB	charlotteBchapterBchaoticBchantedBchandlerBcetaBcentrifugesBcentBcemeteryBcbs4BcaveBcausalBcatsB	cathedralB
categoriesBcatalystBcatBcartersB
carson’sB	caroe’sBcaringB	caribbeanBcareyBcarelessBcardiovascularBcardinalBcardinBcaptorsBcapsBcantorBcannonBcanceledB
cam­paignBcamp”BcalmlyBcaliphBcaliforniasBcalculusBcalculationsB
calculatedB	cafeteriaB	bystanderBbuyersBbustedBburstsBburrBburntBbundlersBbullyingBbullishBbudBbuckley’sBbsB
brzezinskyBbroccoliBbrinkB	brilliantBbrewingBbrennanBbreastsBbratBbowBboutBbountyBbossesB	borrowingBborraBboreBboostedBbonjeanBbond’sBboltBboliviaBboehnersBboastsBboardedBblowoutBblowingBbloomingtonB	bloodshedBblogsBblockersBblmB	blessingsBbledsoeBbleakB	bleachersB	blatantlyBblankBbilaterallyB	bickeringBbe”BbeverlyBberniesBberlinBberkleyBberkeleyB	bergoglioBbenzoateBbennetBbenensonBbenedictBbendBbelhajB
behavioursBbehavingBbehavedB
beforehandBbedsBbedaquilineBbeckBbecerraBbeansBbbbBbattlefieldBbatteryBbartBbarredBbargainBbarbaricBbannersBbannerBbankerBbalticsBbailoutsBbafflingBbaffledB	backwardsB
azerbaijanBawfulBawaitingBavidBaviationBaveragedBavenueB
auditoriumB
audited”B	attractedB
attachmentB	astronautBastaxanthinBassureBassociationsB	assertionBassassinatedBassassinBaspectsBashrafBartistsBarteriesBarrivalsBarmingBarmiesBargentinianBaptB	approvingBappropriatedBappreciationBappreciatedBappoints
��
Const_1Const*
_output_shapes	
:�N*
dtype0	*��
value��B��	�N"��                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!      �!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"      �"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#      �#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$      �$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%      �%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&      �&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_4Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@ *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/embedding/embeddings/v
�
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	�N*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@ *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/embedding/embeddings/m
�
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	�N*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0

MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_1229*
value_dtype0	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name6332*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@ *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�N*
dtype0
s
serving_default_examplesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_examples
hash_tableConst_5Const_4Const_3embedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_13171
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_14164
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_14179
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_1
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�K
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�J
value�JB�J B�J
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures*
* 

	keras_api* 
;
	keras_api
_lookup_layer
_adapt_function*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict* 
5
1
*2
+3
24
35
:6
;7*
5
0
*1
+2
23
34
:5
;6*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
�
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratem�*m�+m�2m�3m�:m�;m�v�*v�+v�2v�3v�:v�;v�*

Xserving_default* 
* 
* 
7
Y	keras_api
Zlookup_table
[token_counts*

\trace_0* 

0*

0*
* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

itrace_0* 

jtrace_0* 

*0
+1*

*0
+1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

~trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
y
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
* 
* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
/
P	capture_1
Q	capture_2
R	capture_3* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 
�
�_create_resource
�_initialize
�_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*

�	capture_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 

�serving_default* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst_6*-
Tin&
$2"		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_14339
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotal_1count_1totalcountAdam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_14451��
�r
�
@__inference_model_layer_call_and_return_conditional_losses_13446

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_13390:	�N
dense_13406:@
dense_13408:@
dense_1_13423:@ 
dense_1_13425: 
dense_2_13440: 
dense_2_13442:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2k
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������v
tf.reshape/ReshapeReshapeinputs!tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������o
text_vectorization/StringLowerStringLowertf.reshape/Reshape:output:0*#
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13390*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13389�
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13265�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13406dense_13408*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13405�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_13423dense_1_13425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13422�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_13440dense_2_13442*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_13439w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
m
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13322
text
identity9
ShapeShapetext*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask;
Shape_1Shapetext*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0text*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_13024`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext
�r
�
@__inference_model_layer_call_and_return_conditional_losses_13738
text_xfU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_13718:	�N
dense_13722:@
dense_13724:@
dense_1_13727:@ 
dense_1_13729: 
dense_2_13732: 
dense_2_13734:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2k
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������w
tf.reshape/ReshapeReshapetext_xf!tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������o
text_vectorization/StringLowerStringLowertf.reshape/Reshape:output:0*#
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13718*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13389�
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13265�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13722dense_13724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13405�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_13727dense_1_13729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13422�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_13732dense_2_13734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_13439w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_13439

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
'__inference_dense_1_layer_call_fn_14094

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
&__inference_serve_tf_examples_fn_13142
examples[
Wmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle\
Xmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	2
.model_text_vectorization_string_lookup_equal_y5
1model_text_vectorization_string_lookup_selectv2_t	9
&model_embedding_embedding_lookup_13113:	�N<
*model_dense_matmul_readvariableop_resource:@9
+model_dense_biasadd_readvariableop_resource:@>
,model_dense_1_matmul_readvariableop_resource:@ ;
-model_dense_1_biasadd_readvariableop_resource: >
,model_dense_2_matmul_readvariableop_resource: ;
-model_dense_2_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp� model/embedding/embedding_lookup�Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB s
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBtextj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB �
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0*
Tdense
2*'
_output_shapes
:���������*
dense_shapes
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 x
transform_features_layer/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:v
,transform_features_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.transform_features_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.transform_features_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&transform_features_layer/strided_sliceStridedSlice'transform_features_layer/Shape:output:05transform_features_layer/strided_slice/stack:output:07transform_features_layer/strided_slice/stack_1:output:07transform_features_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
 transform_features_layer/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:x
.transform_features_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(transform_features_layer/strided_slice_1StridedSlice)transform_features_layer/Shape_1:output:07transform_features_layer/strided_slice_1/stack:output:09transform_features_layer/strided_slice_1/stack_1:output:09transform_features_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'transform_features_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
%transform_features_layer/zeros/packedPack1transform_features_layer/strided_slice_1:output:00transform_features_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
$transform_features_layer/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
transform_features_layer/zerosFill.transform_features_layer/zeros/packed:output:0-transform_features_layer/zeros/Const:output:0*
T0	*'
_output_shapes
:����������
/transform_features_layer/PlaceholderWithDefaultPlaceholderWithDefault'transform_features_layer/zeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
(transform_features_layer/PartitionedCallPartitionedCall8transform_features_layer/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:0*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_13024q
model/tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model/tf.reshape/ReshapeReshape1transform_features_layer/PartitionedCall:output:1'model/tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������{
$model/text_vectorization/StringLowerStringLower!model/tf.reshape/Reshape:output:0*#
_output_shapes
:����������
+model/text_vectorization/StaticRegexReplaceStaticRegexReplace-model/text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite k
*model/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
2model/text_vectorization/StringSplit/StringSplitV2StringSplitV24model/text_vectorization/StaticRegexReplace:output:03model/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
8model/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
:model/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
:model/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/text_vectorization/StringSplit/strided_sliceStridedSlice<model/text_vectorization/StringSplit/StringSplitV2:indices:0Amodel/text_vectorization/StringSplit/strided_slice/stack:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_1:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
:model/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<model/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<model/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4model/text_vectorization/StringSplit/strided_slice_1StridedSlice:model/text_vectorization/StringSplit/StringSplitV2:shape:0Cmodel/text_vectorization/StringSplit/strided_slice_1/stack:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
[model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast;model/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast=model/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdnmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
imodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatermmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0rmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastkmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2lmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulhmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
mmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0vmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
hmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountpmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumomodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
fmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2omodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Wmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle;model/text_vectorization/StringSplit/StringSplitV2:values:0Xmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
,model/text_vectorization/string_lookup/EqualEqual;model/text_vectorization/StringSplit/StringSplitV2:values:0.model_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
/model/text_vectorization/string_lookup/SelectV2SelectV20model/text_vectorization/string_lookup/Equal:z:01model_text_vectorization_string_lookup_selectv2_tSmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
/model/text_vectorization/string_lookup/IdentityIdentity8model/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������w
5model/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
-model/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
<model/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor6model/text_vectorization/RaggedToTensor/Const:output:08model/text_vectorization/string_lookup/Identity:output:0>model/text_vectorization/RaggedToTensor/default_value:output:0=model/text_vectorization/StringSplit/strided_slice_1:output:0;model/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
 model/embedding/embedding_lookupResourceGather&model_embedding_embedding_lookup_13113Emodel/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*9
_class/
-+loc:@model/embedding/embedding_lookup/13113*+
_output_shapes
:���������d*
dtype0�
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@model/embedding/embedding_lookup/13113*+
_output_shapes
:���������d�
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMean4model/embedding/embedding_lookup/Identity_1:output:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense/MatMulMatMul,model/global_average_pooling1d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_2/SigmoidSigmoidmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitymodel/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp!^model/embedding/embedding_lookupK^model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2�
Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
Y
8__inference_transform_features_layer_layer_call_fn_14130
inputs_text
identity�
PartitionedCallPartitionedCallinputs_text*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13293`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/text
�
t
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_14151
inputs_text
identity@
ShapeShapeinputs_text*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskB
Shape_1Shapeinputs_text*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0inputs_text*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_13024`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/text
�
o
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13293

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0inputs*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_13024`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_13422

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
&__inference_restore_from_tensors_14410M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: @
<mutablehashtable_table_restore_lookuptableimportv2_restorev2B
>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1	
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable<mutablehashtable_table_restore_lookuptableimportv2_restorev2>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes

: ::2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:) %
#
_class
loc:@MutableHashTable:C?
#
_class
loc:@MutableHashTable

_output_shapes
::C?
#
_class
loc:@MutableHashTable

_output_shapes
:
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13265

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14065

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_13389

inputs	)
embedding_lookup_13383:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_13383inputs*
Tindices0	*)
_class
loc:@embedding_lookup/13383*+
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/13383*+
_output_shapes
:���������d�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
R
__inference_pruned_13024

inputs	
inputs_1
identity	

identity_1Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:���������\
IdentityIdentityinputs_copy:output:0*
T0	*'
_output_shapes
:���������U
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:���������[
StringLowerStringLowerinputs_1_copy:output:0*'
_output_shapes
:���������^

Identity_1IdentityStringLower:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
�
%__inference_dense_layer_call_fn_14074

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13405o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
__inference_adapt_step_12238
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	��IteratorGetNext�(None_lookup_table_find/LookupTableFindV2�,None_lookup_table_insert/LookupTableInsertV2�
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:���������*"
output_shapes
:���������*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:����������
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:���������:���������:���������*
out_idx0	�
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:�
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
�

�
#__inference_signature_wrapper_13171
examples
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_serve_tf_examples_fn_13142o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
'__inference_dense_2_layer_call_fn_14114

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_13439o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
%__inference_model_layer_call_fn_13872

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_13612o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
@__inference_dense_layer_call_and_return_conditional_losses_14085

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
@__inference_dense_layer_call_and_return_conditional_losses_13405

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
.
__inference__initializer_14179
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
,
__inference__destroyer_14169
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
F
__inference__creator_14174
identity: ��MutableHashTable
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_1229*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�

�
B__inference_dense_2_layer_call_and_return_conditional_losses_14125

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
%__inference_model_layer_call_fn_13664
text_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_13612o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
,
__inference__destroyer_14184
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�

�
%__inference_model_layer_call_fn_13471
text_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_13446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_14105

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
__inference_save_fn_14203
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:�
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�	
�
__inference_restore_fn_14212
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :N
IdentityIdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
�r
�
@__inference_model_layer_call_and_return_conditional_losses_13612

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_13592:	�N
dense_13596:@
dense_13598:@
dense_1_13601:@ 
dense_1_13603: 
dense_2_13606: 
dense_2_13608:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2k
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������v
tf.reshape/ReshapeReshapeinputs!tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������o
text_vectorization/StringLowerStringLowertf.reshape/Reshape:output:0*#
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13592*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13389�
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13265�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13596dense_13598*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13405�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_13601dense_1_13603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13422�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_13606dense_2_13608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_13439w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
~
)__inference_embedding_layer_call_fn_14045

inputs	
unknown:	�N
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13389s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�}
�
@__inference_model_layer_call_and_return_conditional_losses_14038

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	3
 embedding_embedding_lookup_14009:	�N6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@ 5
'dense_1_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2k
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������v
tf.reshape/ReshapeReshapeinputs!tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������o
text_vectorization/StringLowerStringLowertf.reshape/Reshape:output:0*#
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_14009?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/14009*+
_output_shapes
:���������d*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/14009*+
_output_shapes
:���������d�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dq
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookupE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�}
�
@__inference_model_layer_call_and_return_conditional_losses_13955

inputsU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	3
 embedding_embedding_lookup_13926:	�N6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@ 5
'dense_1_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�embedding/embedding_lookup�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2k
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������v
tf.reshape/ReshapeReshapeinputs!tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������o
text_vectorization/StringLowerStringLowertf.reshape/Reshape:output:0*#
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_13926?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/13926*+
_output_shapes
:���������d*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/13926*+
_output_shapes
:���������d�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dq
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookupE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
��
�
 __inference__wrapped_model_13255
text_xf[
Wmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle\
Xmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	2
.model_text_vectorization_string_lookup_equal_y5
1model_text_vectorization_string_lookup_selectv2_t	9
&model_embedding_embedding_lookup_13226:	�N<
*model_dense_matmul_readvariableop_resource:@9
+model_dense_biasadd_readvariableop_resource:@>
,model_dense_1_matmul_readvariableop_resource:@ ;
-model_dense_1_biasadd_readvariableop_resource: >
,model_dense_2_matmul_readvariableop_resource: ;
-model_dense_2_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp� model/embedding/embedding_lookup�Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2q
model/tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model/tf.reshape/ReshapeReshapetext_xf'model/tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������{
$model/text_vectorization/StringLowerStringLower!model/tf.reshape/Reshape:output:0*#
_output_shapes
:����������
+model/text_vectorization/StaticRegexReplaceStaticRegexReplace-model/text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite k
*model/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
2model/text_vectorization/StringSplit/StringSplitV2StringSplitV24model/text_vectorization/StaticRegexReplace:output:03model/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
8model/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
:model/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
:model/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/text_vectorization/StringSplit/strided_sliceStridedSlice<model/text_vectorization/StringSplit/StringSplitV2:indices:0Amodel/text_vectorization/StringSplit/strided_slice/stack:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_1:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
:model/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<model/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<model/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4model/text_vectorization/StringSplit/strided_slice_1StridedSlice:model/text_vectorization/StringSplit/StringSplitV2:shape:0Cmodel/text_vectorization/StringSplit/strided_slice_1/stack:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
[model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast;model/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast=model/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdnmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
imodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatermmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0rmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastkmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2lmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulhmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
mmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0vmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
hmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountpmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumomodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
fmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2omodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Wmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle;model/text_vectorization/StringSplit/StringSplitV2:values:0Xmodel_text_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
,model/text_vectorization/string_lookup/EqualEqual;model/text_vectorization/StringSplit/StringSplitV2:values:0.model_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
/model/text_vectorization/string_lookup/SelectV2SelectV20model/text_vectorization/string_lookup/Equal:z:01model_text_vectorization_string_lookup_selectv2_tSmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
/model/text_vectorization/string_lookup/IdentityIdentity8model/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������w
5model/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
-model/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
<model/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor6model/text_vectorization/RaggedToTensor/Const:output:08model/text_vectorization/string_lookup/Identity:output:0>model/text_vectorization/RaggedToTensor/default_value:output:0=model/text_vectorization/StringSplit/strided_slice_1:output:0;model/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
 model/embedding/embedding_lookupResourceGather&model_embedding_embedding_lookup_13226Emodel/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*9
_class/
-+loc:@model/embedding/embedding_lookup/13226*+
_output_shapes
:���������d*
dtype0�
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*9
_class/
-+loc:@model/embedding/embedding_lookup/13226*+
_output_shapes
:���������d�
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMean4model/embedding/embedding_lookup/Identity_1:output:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense/MatMulMatMul,model/global_average_pooling1d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model/dense_1/MatMulMatMulmodel/dense/Relu:activations:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model/dense_2/MatMulMatMul model/dense_1/Relu:activations:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_2/SigmoidSigmoidmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitymodel/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp!^model/embedding/embedding_lookupK^model/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2�
Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Jmodel/text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
__inference__initializer_141647
3key_value_init6331_lookuptableimportv2_table_handle/
+key_value_init6331_lookuptableimportv2_keys1
-key_value_init6331_lookuptableimportv2_values	
identity��&key_value_init6331/LookupTableImportV2�
&key_value_init6331/LookupTableImportV2LookupTableImportV23key_value_init6331_lookuptableimportv2_table_handle+key_value_init6331_lookuptableimportv2_keys-key_value_init6331_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: o
NoOpNoOp'^key_value_init6331/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�N:�N2P
&key_value_init6331/LookupTableImportV2&key_value_init6331/LookupTableImportV2:!

_output_shapes	
:�N:!

_output_shapes	
:�N
�r
�
@__inference_model_layer_call_and_return_conditional_losses_13812
text_xfU
Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleV
Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	"
embedding_13792:	�N
dense_13796:@
dense_13798:@
dense_1_13801:@ 
dense_1_13803: 
dense_2_13806: 
dense_2_13808:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2k
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������w
tf.reshape/ReshapeReshapetext_xf!tf.reshape/Reshape/shape:output:0*
T0*#
_output_shapes
:���������o
text_vectorization/StringLowerStringLowertf.reshape/Reshape:output:0*#
_output_shapes
:����������
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
gtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ptext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountjtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Qtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Rtext_vectorization_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:����������
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tMtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:���������q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0embedding_13792*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_13389�
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13265�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_13796dense_13798*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_13405�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_13801dense_1_13803*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_13422�
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_13806dense_2_13808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_13439w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCallE^text_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2Dtext_vectorization/string_lookup/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
R
8__inference_transform_features_layer_layer_call_fn_13296
text
identity�
PartitionedCallPartitionedCalltext*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13293`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext
�
]
#__inference_signature_wrapper_13032

inputs	
inputs_1
identity	

identity_1�
PartitionedCallPartitionedCallinputsinputs_1*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_13024`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�}
�
!__inference__traced_restore_14451
file_prefix8
%assignvariableop_embedding_embeddings:	�N1
assignvariableop_1_dense_kernel:@+
assignvariableop_2_dense_bias:@3
!assignvariableop_3_dense_1_kernel:@ -
assignvariableop_4_dense_1_bias: 3
!assignvariableop_5_dense_2_kernel: -
assignvariableop_6_dense_2_bias:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: 
mutablehashtable: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: #
assignvariableop_14_total: #
assignvariableop_15_count: B
/assignvariableop_16_adam_embedding_embeddings_m:	�N9
'assignvariableop_17_adam_dense_kernel_m:@3
%assignvariableop_18_adam_dense_bias_m:@;
)assignvariableop_19_adam_dense_1_kernel_m:@ 5
'assignvariableop_20_adam_dense_1_bias_m: ;
)assignvariableop_21_adam_dense_2_kernel_m: 5
'assignvariableop_22_adam_dense_2_bias_m:B
/assignvariableop_23_adam_embedding_embeddings_v:	�N9
'assignvariableop_24_adam_dense_kernel_v:@3
%assignvariableop_25_adam_dense_bias_v:@;
)assignvariableop_26_adam_dense_1_kernel_v:@ 5
'assignvariableop_27_adam_dense_1_bias_v: ;
)assignvariableop_28_adam_dense_2_kernel_v: 5
'assignvariableop_29_adam_dense_2_bias_v:
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�StatefulPartitionedCall�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2!		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0�
StatefulPartitionedCallStatefulPartitionedCallmutablehashtableRestoreV2:tensors:12RestoreV2:tensors:13"/device:CPU:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_restore_from_tensors_14410_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_adam_embedding_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_embedding_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_1_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_1_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_2_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_2_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp^StatefulPartitionedCall"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_922
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_14054

inputs	)
embedding_lookup_14048:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_14048inputs*
Tindices0	*)
_class
loc:@embedding_lookup/14048*+
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/14048*+
_output_shapes
:���������d�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�E
�
__inference__traced_save_14339
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�N:@:@:@ : : :: : : : : ::: : : : :	�N:@:@:@ : : ::	�N:@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: :  

_output_shapes
::!

_output_shapes
: 
�
:
__inference__creator_14156
identity��
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name6332*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�

�
%__inference_model_layer_call_fn_13845

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_13446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
T
8__inference_global_average_pooling1d_layer_call_fn_14059

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13265i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
examples-
serving_default_examples:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict"
_tf_keras_model
Q
1
*2
+3
24
35
:6
;7"
trackable_list_wrapper
Q
0
*1
+2
23
34
:5
;6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32�
%__inference_model_layer_call_fn_13471
%__inference_model_layer_call_fn_13845
%__inference_model_layer_call_fn_13872
%__inference_model_layer_call_fn_13664�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
�
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32�
@__inference_model_layer_call_and_return_conditional_losses_13955
@__inference_model_layer_call_and_return_conditional_losses_14038
@__inference_model_layer_call_and_return_conditional_losses_13738
@__inference_model_layer_call_and_return_conditional_losses_13812�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
�
P	capture_1
Q	capture_2
R	capture_3B�
 __inference__wrapped_model_13255text_xf"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratem�*m�+m�2m�3m�:m�;m�v�*v�+v�2v�3v�:v�;v�"
	optimizer
,
Xserving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
L
Y	keras_api
Zlookup_table
[token_counts"
_tf_keras_layer
�
\trace_02�
__inference_adapt_step_12238�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
btrace_02�
)__inference_embedding_layer_call_fn_14045�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
D__inference_embedding_layer_call_and_return_conditional_losses_14054�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
':%	�N2embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
8__inference_global_average_pooling1d_layer_call_fn_14059�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14065�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
%__inference_dense_layer_call_fn_14074�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
@__inference_dense_layer_call_and_return_conditional_losses_14085�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
:@2dense/kernel
:@2
dense/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
'__inference_dense_1_layer_call_fn_14094�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_14105�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
 :@ 2dense_1/kernel
: 2dense_1/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
'__inference_dense_2_layer_call_fn_14114�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�
trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_14125�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
 : 2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_transform_features_layer_layer_call_fn_13296
8__inference_transform_features_layer_layer_call_fn_14130�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_14151
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13322�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map"
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
P	capture_1
Q	capture_2
R	capture_3B�
%__inference_model_layer_call_fn_13471text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
%__inference_model_layer_call_fn_13845inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
%__inference_model_layer_call_fn_13872inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
%__inference_model_layer_call_fn_13664text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
@__inference_model_layer_call_and_return_conditional_losses_13955inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
@__inference_model_layer_call_and_return_conditional_losses_14038inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
@__inference_model_layer_call_and_return_conditional_losses_13738text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
@__inference_model_layer_call_and_return_conditional_losses_13812text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�
P	capture_1
Q	capture_2
R	capture_3B�
#__inference_signature_wrapper_13171examples"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
T
�_create_resource
�_initialize
�_destroy_resourceR Z
table��
�
�	capture_1B�
__inference_adapt_step_12238iterator"�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_embedding_layer_call_fn_14045inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_embedding_layer_call_and_return_conditional_losses_14054inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_global_average_pooling1d_layer_call_fn_14059inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14065inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_dense_layer_call_fn_14074inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_14085inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_1_layer_call_fn_14094inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_14105inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_2_layer_call_fn_14114inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_2_layer_call_and_return_conditional_losses_14125inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_transform_features_layer_layer_call_fn_13296text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_transform_features_layer_layer_call_fn_14130inputs/text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_14151inputs/text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13322text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn"
_generic_user_object
0B.
__inference_pruned_13024inputsinputs_1
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
�
�trace_02�
__inference__creator_14156�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_14164�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_14169�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__creator_14174�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_14179�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_14184�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
!J	
Const_2jtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
�B�
__inference__creator_14156"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_14164"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_14169"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_14174"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_14179"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_14184"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
#__inference_signature_wrapper_13032inputsinputs_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
,:*	�N2Adam/embedding/embeddings/m
#:!@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@ 2Adam/dense_1/kernel/m
: 2Adam/dense_1/bias/m
%:# 2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
,:*	�N2Adam/embedding/embeddings/v
#:!@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@ 2Adam/dense_1/kernel/v
: 2Adam/dense_1/bias/v
%:# 2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
�B�
__inference_save_fn_14203checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_14212restored_tensors_0restored_tensors_1"�
���
FullArgSpec
args� 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	�	6
__inference__creator_14156�

� 
� "� 6
__inference__creator_14174�

� 
� "� 8
__inference__destroyer_14169�

� 
� "� 8
__inference__destroyer_14184�

� 
� "� A
__inference__initializer_14164Z���

� 
� "� :
__inference__initializer_14179�

� 
� "� �
 __inference__wrapped_model_13255rZPQR*+23:;0�-
&�#
!�
text_xf���������
� "1�.
,
dense_2!�
dense_2���������j
__inference_adapt_step_12238J[�?�<
5�2
0�-�
����������IteratorSpec 
� "
 �
B__inference_dense_1_layer_call_and_return_conditional_losses_14105\23/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� z
'__inference_dense_1_layer_call_fn_14094O23/�,
%�"
 �
inputs���������@
� "���������� �
B__inference_dense_2_layer_call_and_return_conditional_losses_14125\:;/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� z
'__inference_dense_2_layer_call_fn_14114O:;/�,
%�"
 �
inputs��������� 
� "�����������
@__inference_dense_layer_call_and_return_conditional_losses_14085\*+/�,
%�"
 �
inputs���������
� "%�"
�
0���������@
� x
%__inference_dense_layer_call_fn_14074O*+/�,
%�"
 �
inputs���������
� "����������@�
D__inference_embedding_layer_call_and_return_conditional_losses_14054_/�,
%�"
 �
inputs���������d	
� ")�&
�
0���������d
� 
)__inference_embedding_layer_call_fn_14045R/�,
%�"
 �
inputs���������d	
� "����������d�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_14065{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
8__inference_global_average_pooling1d_layer_call_fn_14059nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
@__inference_model_layer_call_and_return_conditional_losses_13738nZPQR*+23:;8�5
.�+
!�
text_xf���������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_13812nZPQR*+23:;8�5
.�+
!�
text_xf���������
p

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_13955mZPQR*+23:;7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_14038mZPQR*+23:;7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
%__inference_model_layer_call_fn_13471aZPQR*+23:;8�5
.�+
!�
text_xf���������
p 

 
� "�����������
%__inference_model_layer_call_fn_13664aZPQR*+23:;8�5
.�+
!�
text_xf���������
p

 
� "�����������
%__inference_model_layer_call_fn_13845`ZPQR*+23:;7�4
-�*
 �
inputs���������
p 

 
� "�����������
%__inference_model_layer_call_fn_13872`ZPQR*+23:;7�4
-�*
 �
inputs���������
p

 
� "�����������
__inference_pruned_13024�r�o
h�e
c�`
/
label&�#
inputs/label���������	
-
text%�"
inputs/text���������
� "a�^
.
label_xf"�
label_xf���������	
,
text_xf!�
text_xf���������y
__inference_restore_fn_14212Y[K�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "� �
__inference_save_fn_14203�[&�#
�
�
checkpoint_key 
� "���
`�]

name�
0/name 
#

slice_spec�
0/slice_spec 

tensor�
0/tensor
`�]

name�
1/name 
#

slice_spec�
1/slice_spec 

tensor�
1/tensor	�
#__inference_signature_wrapper_13032�i�f
� 
_�\
*
inputs �
inputs���������	
.
inputs_1"�
inputs_1���������"a�^
.
label_xf"�
label_xf���������	
,
text_xf!�
text_xf����������
#__inference_signature_wrapper_13171}ZPQR*+23:;9�6
� 
/�,
*
examples�
examples���������"3�0
.
output_0"�
output_0����������
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_13322{:�7
0�-
+�(
&
text�
text���������
� "=�:
3�0
.
text_xf#� 
	0/text_xf���������
� �
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_14151�A�>
7�4
2�/
-
text%�"
inputs/text���������
� "=�:
3�0
.
text_xf#� 
	0/text_xf���������
� �
8__inference_transform_features_layer_layer_call_fn_13296o:�7
0�-
+�(
&
text�
text���������
� "1�.
,
text_xf!�
text_xf����������
8__inference_transform_features_layer_layer_call_fn_14130vA�>
7�4
2�/
-
text%�"
inputs/text���������
� "1�.
,
text_xf!�
text_xf���������