function I=addquad(f,a,b,er)
    I1=repsim(f,a,b,1);
    I2=repsim(f,a,(a+b)/2,1)+repsim(f,(a+b)/2,b,1);
    if abs(I1-I2)<15*er
        I=I2;
    else
        I=addquad(f,a,(a+b)/2,er/2)+addquad(f,(a+b)/2,b,er/2);
    end
end
