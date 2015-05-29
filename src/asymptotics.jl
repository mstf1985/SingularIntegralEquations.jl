

function LogKernelAsymptotics(S::Fourier,k)
    d=domain(S)
    r=d.radius
    if k==-1  # coefficient in front of logabs term
        CompactFunctional([2r],S)
    else
        error("Not implemented")
    end
end

LogKernelAsymptotics(S::Laurent,k)=LogKernelAsymptotics(Fourier(domain(S)),k)*Conversion(S,Fourier(domain(S)))




function LogKernelAsymptotics(S::JacobiWeight{ChebyshevDirichlet{1,1}},k)
    @assert S.α==S.β==-0.5
    d=domain(S)
    if k==-1  # coefficient in front of logabs term
        CompactFunctional([length(d)/2,0,-length(d)/2],S)
    else
        error("Not implemented")
    end
end


function LogKernelAsymptotics(S::JacobiWeight{Chebyshev},k)
    @assert S.α==S.β==-0.5
    d=domain(S)
    if k==-1  # coefficient in front of logabs term
        CompactFunctional([length(d)/2],S)
    else
        error("Not implemented")
    end
end