function cauchylegendre(z)
    [BasisFunctional(1),
        (JacobiRecurrenceOperator(0.,0.)-z)[2:end,:]]\[(log(z-1)-log(z+1))/(2π*im)]
end

function cauchy(f::Fun{JacobiSpace},z)
    @assert space(f).a==0 && space(f).b==0
   cfs=cauchylegendre(z)
   m=max(length(f),length(cfs))
   dotu(cfs[1:m],f.coefficients[1:m]+0im) 
end