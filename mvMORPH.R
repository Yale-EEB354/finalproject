library(mvMORPH)

vib_tree=read.tree("bayesian_exported")
tip<-c("V_blandum", "V_adenophorum", "V_tengyuehense", "V_lepidotulum", "V_hallii", "V_melanocarpum", "V_flavescens", "V_glomeratum", "V_obovatum", "V_brevipes", "V_microphyllum", "V_kansuense", "V_anamensis", "Valvatotinus_NWT", "V_obtectum", "V_undulatum", "V_phlebotrichum", "V_leiocarpum", "V_maculatum", "V_recognitum", "V_scabrellum", "V_urceolatum", "V_ayavacense", "V_calvum", "V_divaricatum", "V_ellipticum", "V_oliganthum", "V_edule", "V_villosum", "V_australe", "V_toronis", "V_hebanthum", "V_haceanum", "V_nudum", "V_chinshanense", "V_colebrookeanum", "V_obtusatum", "V_stipitatum", "V_pyramidatum", "V_valvatotinus_IS", "V_sempervirens", "V_shweliense", "V_amplifolium", "V_treleasei", "V_tinoides", "V_chunii", "V_mongolicum", "V_nervosum", "V_garrettii", "V_rigidum", "V_rigidum", "V_orientale", "V_ciliatum", "V_microcarpum", "V_jucundum", "V_dalzielii", "V_lasiophyllum", "V_congestum", "V_longiradiatum", "V_brevitubum", "V_chingii", "V_glaberrimum", "V_wardii", "V_glabratum", "V_subsessile", "V_sulcatum")
tip2<-c("V_jamesonii", "V_subalpinum", "V_schensianum", "Valvatotinus_PB", "V_ternatum", "Viburnum_BC", "V_brachyandrum", "V_atrocyaneum", "V_fordiae", "V_yunnanense", "V_pichinchense", "V_koreanum", "V_seemenii", "V_hondurense", "V_brachybotryum", "V_buddleifolium", "V_anabaptista", "V_triphyllum", "V_hainanese", "V_venustum", "V_caudatum", "Porphyrotinus_CO", "V_corymbiflorum", "V_hanceanum", "V_junghunii", "V_brachybotrym", "V_hainanense", "Valvatotinus_IS")
part = drop.tip(vib_tree, tip)
part2 = drop.tip(part, tip2)
vib_tree = drop.tip(part2, "V_lancifolium")
vib_tree = reroot(vib_tree, 34)
plot(vib_tree)
vib_ult = force.ultrametric(vib_tree)

state<-(c("H","I")[rep(c(1,2,1,1,2,1,1,1,1,2,1,2,2,1,2,1,1,1,1,1,1,1,2,2,1,2,2,1,2,1,2,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,1,2,2,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1))]);names(state)<-vib_ult$tip.label
viburnum_tree<-make.simmap(vib_ult,state)
plotSimmap(viburnum_tree)
data=viburnum_h_data
data1<-data[,c("Cell_Surf_Area", "Cell_Volume")]
fit=mvBM(vib_ult,data$Cell_Surf_Area,model = "BMM")
mvOU(viburnum_tree,data1)
