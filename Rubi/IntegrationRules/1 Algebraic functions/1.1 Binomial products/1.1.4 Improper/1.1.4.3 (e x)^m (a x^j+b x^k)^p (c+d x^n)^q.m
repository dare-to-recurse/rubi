(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[x_^m_.*(a_.*x_^j_+b_.*x_^k_.)^p_*(c_+d_.*x_^n_)^q_.,x_Symbol] :=
  1/n \[Star] Subst[Int[x^(Simplify[(m+1)/n]-1)*(a*x^Simplify[j/n]+b*x^Simplify[k/n])^p*(c+d*x)^q,x],x,x^n] /;
FreeQ[{a,b,c,d,j,k,m,n,p,q},x] && Not[IntegerQ[p]] && NeQ[k,j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && 
  IntegerQ[Simplify[(m+1)/n]] && NeQ[n^2,1]


(* ::Code:: *)
Int[(e_*x_)^m_.*(a_.*x_^j_+b_.*x_^k_.)^p_*(c_+d_.*x_^n_.)^q_.,x_Symbol] :=
  e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*(a*x^j+b*x^k)^p*(c+d*x^n)^q,x] /;
FreeQ[{a,b,c,d,e,j,k,m,n,p,q},x] && Not[IntegerQ[p]] && NeQ[k,j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && 
  IntegerQ[Simplify[(m+1)/n]] && NeQ[n^2,1]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_.*x_^j_.+b_.*x_^jn_.)^p_*(c_+d_.*x_^n_.),x_Symbol] :=
  c*e^(j-1)*(e*x)^(m-j+1)*(a*x^j+b*x^(j+n))^(p+1)/(a*(m+j*p+1)) /;
FreeQ[{a,b,c,d,e,j,m,n,p},x] && EqQ[jn,j+n] && Not[IntegerQ[p]] && NeQ[b*c-a*d,0] && EqQ[a*d*(m+j*p+1)-b*c*(m+n+p*(j+n)+1),0] && 
  (GtQ[e,0] || IntegersQ[j]) && NeQ[m+j*p+1,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_.*x_^j_.+b_.*x_^jn_.)^p_*(c_+d_.*x_^n_.),x_Symbol] :=
  -e^(j-1)*(b*c-a*d)*(e*x)^(m-j+1)*(a*x^j+b*x^(j+n))^(p+1)/(a*b*n*(p+1)) - 
  e^j*(a*d*(m+j*p+1)-b*c*(m+n+p*(j+n)+1))/(a*b*n*(p+1)) \[Star] Int[(e*x)^(m-j)*(a*x^j+b*x^(j+n))^(p+1),x] /;
FreeQ[{a,b,c,d,e,j,m,n},x] && EqQ[jn,j+n] && Not[IntegerQ[p]] && NeQ[b*c-a*d,0] && LtQ[p,-1] && GtQ[j,0] && LeQ[j,m] && 
  (GtQ[e,0] || IntegerQ[j])


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_.*x_^j_.+b_.*x_^jn_.)^p_*(c_+d_.*x_^n_.),x_Symbol] :=
  c*e^(j-1)*(e*x)^(m-j+1)*(a*x^j+b*x^(j+n))^(p+1)/(a*(m+j*p+1)) + 
  (a*d*(m+j*p+1)-b*c*(m+n+p*(j+n)+1))/(a*e^n*(m+j*p+1)) \[Star] Int[(e*x)^(m+n)*(a*x^j+b*x^(j+n))^p,x] /;
FreeQ[{a,b,c,d,e,j,p},x] && EqQ[jn,j+n] && Not[IntegerQ[p]] && NeQ[b*c-a*d,0] && GtQ[n,0] && 
  (LtQ[m+j*p,-1] || IntegersQ[m-1/2,p-1/2] && LtQ[p,0] && LtQ[m,-n*p-1]) && 
  (GtQ[e,0] || IntegersQ[j,n]) && NeQ[m+j*p+1,0] && NeQ[m-n+j*p+1,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_.*x_^j_.+b_.*x_^jn_.)^p_*(c_+d_.*x_^n_.),x_Symbol] :=
  d*e^(j-1)*(e*x)^(m-j+1)*(a*x^j+b*x^(j+n))^(p+1)/(b*(m+n+p*(j+n)+1)) - 
  (a*d*(m+j*p+1)-b*c*(m+n+p*(j+n)+1))/(b*(m+n+p*(j+n)+1)) \[Star] Int[(e*x)^m*(a*x^j+b*x^(j+n))^p,x] /;
FreeQ[{a,b,c,d,e,j,m,n,p},x] && EqQ[jn,j+n] && Not[IntegerQ[p]] && NeQ[b*c-a*d,0] && NeQ[m+n+p*(j+n)+1,0] && (GtQ[e,0] || IntegerQ[j])


(* ::Code:: *)
Int[x_^m_.*(a_.*x_^j_+b_.*x_^k_.)^p_*(c_+d_.*x_^n_.)^q_.,x_Symbol] :=
  1/(m+1) \[Star] Subst[Int[(a*x^Simplify[j/(m+1)]+b*x^Simplify[k/(m+1)])^p*(c+d*x^Simplify[n/(m+1)])^q,x],x,x^(m+1)] /;
FreeQ[{a,b,c,d,j,k,m,n,p,q},x] && Not[IntegerQ[p]] && NeQ[k,j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && 
  NeQ[m,-1] && IntegerQ[Simplify[n/(m+1)]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(e_*x_)^m_.*(a_.*x_^j_+b_.*x_^k_.)^p_*(c_+d_.*x_^n_.)^q_.,x_Symbol] :=
  e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*(a*x^j+b*x^k)^p*(c+d*x^n)^q,x] /;
FreeQ[{a,b,c,d,e,j,k,m,n,p,q},x] && Not[IntegerQ[p]] && NeQ[k,j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && 
  NeQ[m,-1] && IntegerQ[Simplify[n/(m+1)]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_.*x_^j_.+b_.*x_^jn_.)^p_*(c_+d_.*x_^n_.)^q_.,x_Symbol] :=
  e^IntPart[m]*(e*x)^FracPart[m]*(a*x^j+b*x^(j+n))^FracPart[p]/
    (x^(FracPart[m]+j*FracPart[p])*(a+b*x^n)^FracPart[p]) \[Star] 
    Int[x^(m+j*p)*(a+b*x^n)^p*(c+d*x^n)^q,x] /;
FreeQ[{a,b,c,d,e,j,m,n,p,q},x] && EqQ[jn,j+n] && Not[IntegerQ[p]] && NeQ[b*c-a*d,0] && Not[EqQ[n,1] && EqQ[j,1]]



