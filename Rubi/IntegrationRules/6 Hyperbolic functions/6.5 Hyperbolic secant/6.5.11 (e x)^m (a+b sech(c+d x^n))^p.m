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
Int[(a_.+b_.*Sech[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  1/n \[Star] Subst[Int[x^(1/n-1)*(a+b*Sech[c+d*x])^p,x],x,x^n] /;
FreeQ[{a,b,c,d,p},x] && IGtQ[1/n,0] && IntegerQ[p]


(* ::Code:: *)
Int[(a_.+b_.*Csch[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  1/n \[Star] Subst[Int[x^(1/n-1)*(a+b*Csch[c+d*x])^p,x],x,x^n] /;
FreeQ[{a,b,c,d,p},x] && IGtQ[1/n,0] && IntegerQ[p]


(* ::Code:: *)
Int[(a_.+b_.*Sech[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  Unintegrable[(a+b*Sech[c+d*x^n])^p,x] /;
FreeQ[{a,b,c,d,n,p},x]


(* ::Code:: *)
Int[(a_.+b_.*Csch[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  Unintegrable[(a+b*Csch[c+d*x^n])^p,x] /;
FreeQ[{a,b,c,d,n,p},x]


(* ::Code:: *)
Int[(a_.+b_.*Sech[c_.+d_.*u_^n_])^p_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(a+b*Sech[c+d*x^n])^p,x],x,u] /;
FreeQ[{a,b,c,d,n,p},x] && LinearQ[u,x] && NeQ[u,x]


(* ::Code:: *)
Int[(a_.+b_.*Csch[c_.+d_.*u_^n_])^p_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(a+b*Csch[c+d*x^n])^p,x],x,u] /;
FreeQ[{a,b,c,d,n,p},x] && LinearQ[u,x] && NeQ[u,x]


(* ::Code:: *)
Int[(a_.+b_.*Sech[u_])^p_.,x_Symbol] :=
  Int[(a+b*Sech[ExpandToSum[u,x]])^p,x] /;
FreeQ[{a,b,p},x] && BinomialQ[u,x] && Not[BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(a_.+b_.*Csch[u_])^p_.,x_Symbol] :=
  Int[(a+b*Csch[ExpandToSum[u,x]])^p,x] /;
FreeQ[{a,b,p},x] && BinomialQ[u,x] && Not[BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[x_^m_.*(a_.+b_.*Sech[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  1/n \[Star] Subst[Int[x^(Simplify[(m+1)/n]-1)*(a+b*Sech[c+d*x])^p,x],x,x^n] /;
FreeQ[{a,b,c,d,m,n,p},x] && IGtQ[Simplify[(m+1)/n],0] && IntegerQ[p]


(* ::Code:: *)
Int[x_^m_.*(a_.+b_.*Csch[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  1/n \[Star] Subst[Int[x^(Simplify[(m+1)/n]-1)*(a+b*Csch[c+d*x])^p,x],x,x^n] /;
FreeQ[{a,b,c,d,m,n,p},x] && IGtQ[Simplify[(m+1)/n],0] && IntegerQ[p]


(* ::Code:: *)
Int[x_^m_.*(a_.+b_.*Sech[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  Unintegrable[x^m*(a+b*Sech[c+d*x^n])^p,x] /;
FreeQ[{a,b,c,d,m,n,p},x]


(* ::Code:: *)
Int[x_^m_.*(a_.+b_.*Csch[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  Unintegrable[x^m*(a+b*Csch[c+d*x^n])^p,x] /;
FreeQ[{a,b,c,d,m,n,p},x]


(* ::Code:: *)
Int[(e_*x_)^m_.*(a_.+b_.*Sech[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*(a+b*Sech[c+d*x^n])^p,x] /;
FreeQ[{a,b,c,d,e,m,n,p},x]


(* ::Code:: *)
Int[(e_*x_)^m_.*(a_.+b_.*Csch[c_.+d_.*x_^n_])^p_.,x_Symbol] :=
  e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*(a+b*Csch[c+d*x^n])^p,x] /;
FreeQ[{a,b,c,d,e,m,n,p},x]


(* ::Code:: *)
Int[(e_*x_)^m_.*(a_.+b_.*Sech[u_])^p_.,x_Symbol] :=
  Int[(e*x)^m*(a+b*Sech[ExpandToSum[u,x]])^p,x] /;
FreeQ[{a,b,e,m,p},x] && BinomialQ[u,x] && Not[BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(e_*x_)^m_.*(a_.+b_.*Csch[u_])^p_.,x_Symbol] :=
  Int[(e*x)^m*(a+b*Csch[ExpandToSum[u,x]])^p,x] /;
FreeQ[{a,b,e,m,p},x] && BinomialQ[u,x] && Not[BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[x_^m_.*Sech[a_.+b_.*x_^n_.]^p_*Sinh[a_.+b_.*x_^n_.],x_Symbol] :=
  -x^(m-n+1)*Sech[a+b*x^n]^(p-1)/(b*n*(p-1)) +
  (m-n+1)/(b*n*(p-1)) \[Star] Int[x^(m-n)*Sech[a+b*x^n]^(p-1),x] /;
FreeQ[{a,b,p},x] && IntegerQ[n] && GeQ[m-n,0] && NeQ[p,1]


(* ::Code:: *)
Int[x_^m_.*Csch[a_.+b_.*x_^n_.]^p_*Cosh[a_.+b_.*x_^n_.],x_Symbol] :=
  -x^(m-n+1)*Csch[a+b*x^n]^(p-1)/(b*n*(p-1)) +
  (m-n+1)/(b*n*(p-1)) \[Star] Int[x^(m-n)*Csch[a+b*x^n]^(p-1),x] /;
FreeQ[{a,b,p},x] && IntegerQ[n] && GeQ[m-n,0] && NeQ[p,1]



