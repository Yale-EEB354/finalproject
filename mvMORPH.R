library(mvMORPH)

vib_tree=read.tree("bayesian_exported")
tip<-c("V_blandum", "V_adenophorum", "V_tengyuehense", "V_lepidotulum", "V_hallii", "V_melanocarpum", "V_flavescens", "V_glomeratum", "V_obovatum", "V_brevipes", "V_microphyllum", "V_kansuense", "V_anamensis", "Valvatotinus_NWT", "V_obtectum", "V_undulatum", "V_phlebotrichum", "V_leiocarpum", "V_maculatum", "V_recognitum", "V_scabrellum", "V_urceolatum", "V_ayavacense", "V_calvum", "V_divaricatum", "V_ellipticum", "V_oliganthum", "V_edule", "V_villosum", "V_australe", "V_toronis", "V_hebanthum", "V_haceanum", "V_nudum", "V_chinshanense", "V_colebrookeanum", "V_obtusatum", "V_stipitatum", "V_pyramidatum", "V_valvatotinus_IS", "V_sempervirens", "V_shweliense", "V_amplifolium", "V_treleasei", "V_tinoides", "V_chunii", "V_mongolicum", "V_nervosum", "V_garrettii", "V_rigidum", "V_rigidum", "V_orientale", "V_ciliatum", "V_microcarpum", "V_jucundum", "V_dalzielii", "V_lasiophyllum", "V_congestum", "V_longiradiatum", "V_brevitubum", "V_chingii", "V_glaberrimum", "V_wardii", "V_glabratum", "V_subsessile", "V_sulcatum")
tip2<-c("V_jamesonii", "V_subalpinum", "V_schensianum", "Valvatotinus_PB", "V_ternatum", "Viburnum_BC", "V_brachyandrum", "V_atrocyaneum", "V_fordiae", "V_yunnanense", "V_pichinchense", "V_koreanum", "V_seemenii", "V_hondurense", "V_brachybotryum", "V_buddleifolium", "V_anabaptista", "V_triphyllum", "V_hainanese", "V_venustum", "V_caudatum", "Porphyrotinus_CO", "V_corymbiflorum", "V_hanceanum", "V_junghunii", "V_brachybotrym", "V_hainanense", "Valvatotinus_IS")
part = drop.tip(vib_tree, tip)
part2 = drop.tip(part, tip2)
vib_tree = drop.tip(part2, "V_lancifolium")
#V_clemensiae
vib_tree = reroot(vib_tree, 40)
plot(vib_tree)
vib_ult = force.ultrametric(vib_tree)

state<-(c("H","I")[rep(c(1,1,1,1,1,1,1,1,2,1,1,2,1,1,1,1,2,1,2,2,1,2,1,1,1,1,1,1,1,1,2,2,1,2,2,1,2,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,2,1,2,1,1,1,1,1,2,1,2))]);names(state)<-vib_ult$tip.label
viburnum_tree<-make.simmap(vib_ult,state)
plotSimmap(viburnum_tree)
data=read.csv("viburnum_h_data - Copy.csv", row.names=1)
data1<-data[,c("osmotic_full", "Cell_Volume")]
data2<-data[,c("VLD_tot", "cap_full")]
data3<-data[,c("stomata_density", "Amax")]
data4<-data[,c("trich_dens", "IAStot.leaf")]
data5<-data[,c("epid_aba", "epid_ada")]
data6<-data[,c("VLD_min", "rwc_loss")]
data7<-data[,c("chl.pal", "Huber")]
data8<-data[,c("LMA", "Thick")]
#Amax for LMA, P_sa.v for thick
data9<-data[,c("xylem_area", "xylem_diam")]
data10<-data[,c("X3rd_width", "VLD_min")]
#data11<-data[,c("H_armnum", "H_arml")]
data12<-data[,c("osmotic_full","pot_loss")]
data13<-data[,c("P_SA.V", "P_thick")]
data99<-data[,c("VLD_tot", "VLD_min", "pot_loss")]
data14<-data[,c("P_Ames.A", "S_Ames.A")]
data15<-data[,c("Palisade.1","Cell_Surf_Area")]
data16<-data[,c("epid_ada", "xylem_area")]

#fit=mvBM(vib_ult,data$Cell_Surf_Area,model = "BMM")
mvOU(viburnum_tree, data1)
mvOU(viburnum_tree, data2)
mvOU(viburnum_tree, data3)
mvOU(viburnum_tree, data4)
mvOU(viburnum_tree, data5)
mvOU(viburnum_tree, data6)
mvOU(viburnum_tree, data7)
mvOU(viburnum_tree, data8)
mvOU(viburnum_tree, data9)
mvOU(viburnum_tree, data10)
#mvOU(viburnum_tree, data11)
mvOU(viburnum_tree, data12)
mvOU(viburnum_tree, data13)
mvOU(viburnum_tree, data14)
mvOU(viburnum_tree, data15)

#ancestral state reconstruction
fit<-fastAnc(vib_ult, data$Amax)
fit2<-fastAnc(vib_ult, data$P_SA.V)
fit3<-fastAnc(vib_ult, data$Thick)
fit4<-fastAnc(vib_ult, data$epid_aba)
fit5<-fastAnc(vib_ult, data$epid_ada)
fit6<-fastAnc(vib_ult, data$chl.pal)
fit7<-fastAnc(vib_ult, data$IAStot.leaf)
fit8<-fastAnc(vib_ult, data$S_Ames.A)
node_values = c( data$S_Ames.A, fit8)

vib_ggtree = ggtree( vib_ult )
vib_ggtree + 
  geom_tippoint( aes(color=node_values), size=3, alpha=1 ) +
  geom_nodepoint(  aes(color=node_values), size=3, alpha=1 )

#cool drawing stuff
x = cbind(data$Amax, data$P_SA.V)
#names(x)<-rownames(data)
#phenogram(vib_ult,x,fsize=0.6,spread.costs=c(1,0))
phylomorphospace(vib_ult, x)
y = cbind(data$IAStot.leaf, data$chl.pal)
phylomorphospace(vib_ult, y)
z = cbind(wet$P_SA.V, wet$VLD_tot)
phylomorphospace(ult_wet, z)
q = cbind(h_data$H_armnum, h_data$Palisade.1)
phylomorphospace(vib_Htree, q)

#h only data
tip3<-c("V_davidii", "V_lentago", "V_carlesii", "V_elatum", "V_burejaeticum", "V_prunifolium", "V_bitchiuense", "V_propinquum", "V_utile", "V_cotinifolium", "V_veitchii", "V_clemensiae", "V_tinus", "V_macrocephalum", "V_rhytidophyllum", "V_cassinoides", "V_punctatum", "V_lantana", "V_cinnamomifolium", "V_cassinoides")
vib_Htree=drop.tip(vib_tree, tip3)
h_data=read.csv("h_only.csv", row.names=1)

fit44<-fastAnc(vib_Htree, h_data$H_armnum)
node_values = c( h_data$H_arml, fit45 )
fit45<-fastAnc(vib_Htree, h_data$H_arml)

h_ult = force.ultrametric(vib_Htree)
h_ggtree = ggtree( h_ult )
h_ggtree + 
  geom_tippoint( aes(color=node_values), size=3, alpha=1 ) +
  geom_nodepoint(  aes(color=node_values), size=3, alpha=1 )

state<-(c("1","2")[rep(c(2,2,1,2,2,2,2,2,1,1,1,2,1,2,1,2,1,1,2,2,1,2,1,1,1,1,2,2,2,2,2,2,1,1,2,2,1,1,1,2,1,1,2,1,2,1,2,1,1,1,2,1,1,1,2,1,1,1,1))]);names(state)<-h_ult$tip.label
viburnum_h_tree<-make.simmap(h_ult,state)
plotSimmap(viburnum_h_tree)
data11<-h_data[,c("H_armnum", "H_arml")]
data44<-h_data[,c("trich_dens", "IAStot.leaf")]
mvOU(viburnum_h_tree, data11)

#wet only data
tip4<-c("V_lobophyllum", "V_wrightii", "V_sargentii", "V_sieboldii", "V_furcatum", "V_lentago", "V_setigerum", "V_carlesii", "V_burejaeticum", "V_prunifolium", "V_rufidulum", "V_bracteatum", "V_rafinesquianum", "V_acerifolium", "V_bitchiuense", "V_opulus", "V_veitchii", "V_dilatatum", "V_erosum", "V_dentatum", "V_ichangense", "V_betulifolium", "V_rhytidophyllum", "V_molle", "V_trilobum", "V_hupehense", "V_cassinoides", "V_plicatum", "V_lantana")
wet_tree = keep.tip(vib_tree, tip4)
ult_wet = force.ultrametric(wet_tree)
fit55<-fastAnc(ult_wet, wet$pot_loss)
wet_node_values = c( wet$pot_loss, fit55 )
fit56<-fastAnc(ult_wet, wet$osmotic_full)
wet_node_values = c( wet$osmotic_full, fit56 )

w_ggtree = ggtree( ult_wet )
w_ggtree + 
  geom_tippoint( aes(color=wet_node_values), size=3, alpha=1 ) +
  geom_nodepoint(  aes(color=wet_node_values), size=3, alpha=1 )


#PIC and PGLS
wet=read.csv("wet.csv", row.names=1)
Ia = data$IAStot.leaf
layer = wet$Palisade.1
Pho = data$Amax
Sav = data$P_SA.V
len = wet$P_length
wid = wet$P_width
thi = data$P_thick
rwc = wet$rwc_loss
tot = wet$VLD_tot
min = wet$VLD_min
osm = wet$osmotic_full
hub = wet$Huber
area = wet$xylem_area
diam = wet$xylem_diam
chl = data$chl.pal
names(layer)<-names(Pho)<-rownames(data)
names(Ia)<-rownames(data)
name.check(vib_ult, data)
hPic<-pic(layer, vib_ult)
aPic<-pic(Pho, vib_ult)
picModel<-lm(hPic~aPic-1)
summary(picModel)
plot(hPic~aPic)
abline(a=0, b=coef(picModel))

iPic<-pic(Ia, vib_ult)
pic2Model<-lm(iPic~hPic-1)
summary(pic2Model)
plot(iPic~hPic)
oPic<-pic(osm, wet_tree)
bPic<-pic(layer, wet_tree)
pic3Model<-lm(oPic~bPic-1)
summary(pic3Model)
plot(oPic~bPic)
abline(a=0, b=coef(picModel))

pglsModel3<-gls(Sav~Ia*len*layer*wid*thi, correlation=corBrownian(phy=vib_ult), data=, method="ML")
anova(pglsModel3)
pglsModel15<-gls(rwc~layer*min*Pho*Sav, correlation=corBrownian(phy=vib_ult), data=, method="ML")
anova(pglsModel15)
pglsModel16<-gls(Ia~layer*Pho*chl*Sav, correlation=corBrownian(phy=vib_ult), data=, method="ML")
anova(pglsModel16)
kable(anova(pglsModel16))

#threshold model for correlation between raits
#http://www.phytools.org/eqg2015/threshold.html
sample<-500
ngen<-2e+05
burnin<-.2*ngen
dd<-cbind(wet$VLD_tot, wet$Palisade)
row.names(dd)<-row.names(wet)
aa<-threshBayes(wet_tree, dd, types = c("cont", "disc"), ngen = ngen, control = list(sample=sample))
mean(aa$par[(burnin/sample+1):nrow(aa$par),"r"])
plot(aa$par[,"gen"],aa$par[,"logL"],type="l",xlab="generation",ylab="logL")
plot(density(aa$par[(burnin/sample+1):nrow(aa$par),"r"],bw=.1),xlab="r",main="posterior density for r")
#0.6449364

cool<-data[,c(5:36)]
cool<-cool[,c(-1,-2,-11,-15:-17,-19:-36)]
pca<-prcomp(cool)
screeplot(pca, type = "l")
biplot(pca)
neat<-wet[,c(23:36)]
neat<-neat[,c(-11)]
pca1<-prcomp(neat)
screeplot(pca, type = "l")
biplot(pca1)