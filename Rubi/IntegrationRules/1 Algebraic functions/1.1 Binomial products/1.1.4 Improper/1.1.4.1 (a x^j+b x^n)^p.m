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
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  (a*x^j+b*x^n)^(p+1)/(b*(n-j)*(p+1)*x^(n-1)) /;
FreeQ[{a,b,j,n,p},x] && Not[IntegerQ[p]] && NeQ[n,j] && EqQ[j*p-n+j+1,0]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  -(a*x^j+b*x^n)^(p+1)/(a*(n-j)*(p+1)*x^(j-1)) + 
  (n*p+n-j+1)/(a*(n-j)*(p+1)) \[Star] Int[(a*x^j+b*x^n)^(p+1)/x^j,x] /;
FreeQ[{a,b,j,n},x] && Not[IntegerQ[p]] && NeQ[n,j] && ILtQ[Simplify[(n*p+n-j+1)/(n-j)],0] && LtQ[p,-1]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  (a*x^j+b*x^n)^(p+1)/(a*(j*p+1)*x^(j-1)) - 
  b*(n*p+n-j+1)/(a*(j*p+1)) \[Star] Int[x^(n-j)*(a*x^j+b*x^n)^p,x] /;
FreeQ[{a,b,j,n,p},x] && Not[IntegerQ[p]] && NeQ[n,j] && ILtQ[Simplify[(n*p+n-j+1)/(n-j)],0] && NeQ[j*p+1,0]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  x*(a*x^j+b*x^n)^p/(j*p+1) - 
  b*(n-j)*p/(j*p+1) \[Star] Int[x^n*(a*x^j+b*x^n)^(p-1),x] /;
FreeQ[{a,b},x] && Not[IntegerQ[p]] && LtQ[0,j,n] && GtQ[p,0] && LtQ[j*p+1,0]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  x*(a*x^j+b*x^n)^p/(n*p+1) + 
  a*(n-j)*p/(n*p+1) \[Star] Int[x^j*(a*x^j+b*x^n)^(p-1),x] /;
FreeQ[{a,b},x] && Not[IntegerQ[p]] && LtQ[0,j,n] && GtQ[p,0] && NeQ[n*p+1,0]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  (a*x^j+b*x^n)^(p+1)/(b*(n-j)*(p+1)*x^(n-1)) - 
  (j*p-n+j+1)/(b*(n-j)*(p+1)) \[Star] Int[(a*x^j+b*x^n)^(p+1)/x^n,x] /;
FreeQ[{a,b},x] && Not[IntegerQ[p]] && LtQ[0,j,n] && LtQ[p,-1] && GtQ[j*p+1,n-j]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  -(a*x^j+b*x^n)^(p+1)/(a*(n-j)*(p+1)*x^(j-1)) + 
  (n*p+n-j+1)/(a*(n-j)*(p+1)) \[Star] Int[(a*x^j+b*x^n)^(p+1)/x^j,x] /;
FreeQ[{a,b},x] && Not[IntegerQ[p]] && LtQ[0,j,n] && LtQ[p,-1]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  x*(a*x^j+b*x^n)^p/(p*(n-j)) + a \[Star] Int[x^j*(a*x^j+b*x^n)^(p-1),x] /;
FreeQ[{a,b,j,n},x] && IGtQ[p+1/2,0] && NeQ[n,j] && EqQ[Simplify[j*p+1],0]


(* ::Code:: *)
Int[1/Sqrt[a_.*x_^2+b_.*x_^n_.],x_Symbol] :=
  2/(2-n) \[Star] Subst[Int[1/(1-a*x^2),x],x,x/Sqrt[a*x^2+b*x^n]] /;
FreeQ[{a,b,n},x] && NeQ[n,2]


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  -(a*x^j+b*x^n)^(p+1)/(a*(n-j)*(p+1)*x^(j-1)) + 
  (n*p+n-j+1)/(a*(n-j)*(p+1)) \[Star] Int[(a*x^j+b*x^n)^(p+1)/x^j,x] /;
FreeQ[{a,b,j,n},x] && ILtQ[p+1/2,0] && NeQ[n,j] && EqQ[Simplify[j*p+1],0]


(* ::Code:: *)
Int[1/Sqrt[a_.*x_^j_.+b_.*x_^n_.],x_Symbol] :=
  -2*Sqrt[a*x^j+b*x^n]/(b*(n-2)*x^(n-1)) - 
  a*(2*n-j-2)/(b*(n-2)) \[Star] Int[1/(x^(n-j)*Sqrt[a*x^j+b*x^n]),x] /;
FreeQ[{a,b},x] && LtQ[2*(n-1),j,n]


(* ::Code:: *)
(* Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  x*(a*x^j+b*x^n)^p/(p*(n-j)*((a*x^j+b*x^n)/(b*x^n))^p)*Hypergeometric2F1[-p,-p,1-p,-a/(b*x^(n-j))] /;
FreeQ[{a,b,j,n,p},x] && Not[IntegerQ[p]] && NeQ[n,j] && EqQ[j*p+1,0] *)


(* ::Code:: *)
(* Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  x*(a*x^j+b*x^n)^p/((j*p+1)*((a*x^j+b*x^n)/(a*x^j))^p)*
    Hypergeometric2F1[-p,(j*p+1)/(n-j),(j*p+1)/(n-j)+1,-b*x^(n-j)/a] /;
FreeQ[{a,b,j,n,p},x] && Not[IntegerQ[p]] && NeQ[n,j] && NeQ[j*p+1,0] *)


(* ::Code:: *)
Int[(a_.*x_^j_.+b_.*x_^n_.)^p_,x_Symbol] :=
  (a*x^j+b*x^n)^FracPart[p]/(x^(j*FracPart[p])*(a+b*x^(n-j))^FracPart[p]) \[Star] Int[x^(j*p)*(a+b*x^(n-j))^p,x] /;
FreeQ[{a,b,j,n,p},x] && Not[IntegerQ[p]] && NeQ[n,j] && PosQ[n-j]


(* ::Code:: *)
Int[(a_.*u_^j_.+b_.*u_^n_.)^p_,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(a*x^j+b*x^n)^p,x],x,u] /;
FreeQ[{a,b,j,n,p},x] && LinearQ[u,x] && NeQ[u,x]



