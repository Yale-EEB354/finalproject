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

state<-(c("H","I")[rep(c(1,2,1,1,2,1,1,1,1,2,1,2,2,1,2,1,1,1,1,1,1,1,2,2,1,2,2,1,2,1,2,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,1,2,2,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1))]);names(state)<-vib_ult$tip.label
viburnum_tree<-make.simmap(vib_ult,state)
plotSimmap(viburnum_tree)
data=viburnum_h_data
data1<-data[,c("Cell_Surf_Area", "Cell_Volume")]
data2<-data[,c("VLD_tot", "cap_full")]
data3<-data[,c("stomata_density", "IAStot/leaf")]
data4<-data[,c("trich_dens", "Amax")]
data5<-data[,c("epid_aba", "epid_ada")]
data6<-data[,c("VLD_min", "rwc_loss")]
data7<-data[,c("H_arml",  "Huber")]
data8<-data[,c("LMA", "Thick")]
data9<-data[,c("xylem_area", "xylem_diam")]
data10<-data[,c("3rd_width", "VLD_min")]
data11<-data[,c("H_armnum", "H_arml")]
data12<-data[,c("osmotic_full","pot_loss")]
data13<-data[,c("P_SA/V", "P_thick")]

#fit=mvBM(vib_ult,data$Cell_Surf_Area,model = "BMM")
mvOU(viburnum_tree,data1, param = list(sigma="constraint", alpha="constraint"))
mvOU(viburnum_tree, data2, param = list(sigma="constraint", alpha="constraint", decomp = c("qr+")))
mvOU(viburnum_tree,data3)
mvOU(viburnum_tree, data4)
mvOU(viburnum_tree,data5)
mvOU(viburnum_tree, data6)
mvOU(viburnum_tree,data7)



fit<-fastAnc(vib_tree, data$Amax)

node_values = c( data$Amax, fit )

vib_ggtree = ggtree( vib_ult )
vib_ggtree + 
  geom_tippoint( aes(color=node_values), size=3, alpha=1 ) +
  geom_nodepoint(  aes(color=node_values), size=3, alpha=1 )


x = c(data$Amax, fit)
phenogram(vib_tree,x,fsize=0.6,spread.costs=c(1,0))


tip3<-c("V_davidii", "V_lentago", "V_carlesii", "V_elatum", "V_burejaeticum", "V_prunifolium", "V_bitchiuense", "V_propinquum", "V_utile", "V_cotinifolium", "V_veitchii", "V_clemensiae", "V_tinus", "V_macrocephalum", "V_rhytidophyllum", "V_cassinoides", "V_punctatum", "V_lantana", "V_cinnamomifolium", "V_cassinoides")
vib_Htree=drop.tip(vib_tree, tip3)
h_data = h_only

fit44<-fastAnc(vib_Htree, h_data$H_armnum)
node_values = c( h_data$H_armnum, fit44 )

h_ggtree = ggtree( h_ult )
h_ggtree + 
  geom_tippoint( aes(color=node_values), size=3, alpha=1 ) +
  geom_nodepoint(  aes(color=node_values), size=3, alpha=1 )

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
  geom_nodepoint(  aes(color=wet_node_values), size=3, alpha=1 )+
  geom_tiplab( fontface = "italic")
