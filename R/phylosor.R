phylosor=function(samp,tree)
{
	s=nrow(samp)
	sample_names=rownames(samp)
	pairs=s*(s-1)/2
	
	plot1.list=c()
	plot2.list=c()
	sor.list=c()
	phylosor.list=c()

	
	count=0
	for (l in 1:(s-1))
	{
		spl=sum(samp[l,])
		pdl=.pdshort(samp[l,],tree)
		for (k in (l+1):s)
		{
			count=count+1
			spk=sum(samp[k,])
			pdk=.pdshort(samp[k,],tree)
			sharedlk=sum(samp[l,]*samp[k,])
			pdsharedlk=.pdshort(samp[l,],tree)+.pdshort(samp[k,],tree)-.pdshort((samp[l,]+samp[k,]),tree)
			avglk=0.5*(spl+spk)
			pdavglk=0.5*(pdl+pdk)
			sorlk=sharedlk/avglk
			phylosorlk=pdsharedlk/pdavglk
			plot1.list=c(plot1.list,sample_names[l])
			plot2.list=c(plot2.list,sample_names[k])
			sor.list=c(sor.list,sorlk)
			phylosor.list=c(phylosor.list,phylosorlk)
			}
			}
			data.frame(plot1=plot1.list,plot2=plot2.list,sor=sor.list,phylosor=phylosor.list)}

		
	
.pdshort=function(comm,tree)
{

	nbspecies=length(comm)
	species = names(comm)
	index = species[comm == 0]
        if (length(index) >= (nbspecies - 1)) 
        {PD <- NA}
        else {
            sub.tree <- drop.tip(tree, index)
            PD <- sum(sub.tree$edge.length)}
            return(PD)}

	
