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
Int[(a_+b_.*x_^n_)^p_.*Sin[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Sin[c+d*x],(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d,n},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_.*Cos[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Cos[c+d*x],(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d,n},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  x^(-n+1)*(a+b*x^n)^(p+1)*Sin[c+d*x]/(b*n*(p+1)) - 
  (-n+1)/(b*n*(p+1)) \[Star] Int[x^(-n)*(a+b*x^n)^(p+1)*Sin[c+d*x],x] - 
  d/(b*n*(p+1)) \[Star] Int[x^(-n+1)*(a+b*x^n)^(p+1)*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[p,-1] && IGtQ[n,2]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  x^(-n+1)*(a+b*x^n)^(p+1)*Cos[c+d*x]/(b*n*(p+1)) - 
  (-n+1)/(b*n*(p+1)) \[Star] Int[x^(-n)*(a+b*x^n)^(p+1)*Cos[c+d*x],x] + 
  d/(b*n*(p+1)) \[Star] Int[x^(-n+1)*(a+b*x^n)^(p+1)*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[p,-1] && IGtQ[n,2]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Sin[c+d*x],(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[p,0] && IGtQ[n,0] && (EqQ[n,2] || EqQ[p,-1])


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Cos[c+d*x],(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[p,0] && IGtQ[n,0] && (EqQ[n,2] || EqQ[p,-1])


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  Int[x^(n*p)*(b+a*x^(-n))^p*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[p,0] && ILtQ[n,0]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  Int[x^(n*p)*(b+a*x^(-n))^p*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && ILtQ[p,0] && ILtQ[n,0]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  Unintegrable[(a+b*x^n)^p*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d,n,p},x]


(* ::Code:: *)
Int[(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  Unintegrable[(a+b*x^n)^p*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d,n,p},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_+b_.*x_^n_)^p_.*Sin[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Sin[c+d*x],(e*x)^m*(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d,e,m,n},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_+b_.*x_^n_)^p_.*Cos[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Cos[c+d*x],(e*x)^m*(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d,e,m,n},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  e^m*(a+b*x^n)^(p+1)*Sin[c+d*x]/(b*n*(p+1)) - 
  d*e^m/(b*n*(p+1)) \[Star] Int[(a+b*x^n)^(p+1)*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d,e,m,n},x] && ILtQ[p,-1] && EqQ[m,n-1] && (IntegerQ[n] || GtQ[e,0])


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  e^m*(a+b*x^n)^(p+1)*Cos[c+d*x]/(b*n*(p+1)) + 
  d*e^m/(b*n*(p+1)) \[Star] Int[(a+b*x^n)^(p+1)*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d,e,m,n},x] && ILtQ[p,-1] && EqQ[m,n-1] && (IntegerQ[n] || GtQ[e,0])


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  x^(m-n+1)*(a+b*x^n)^(p+1)*Sin[c+d*x]/(b*n*(p+1)) - 
  (m-n+1)/(b*n*(p+1)) \[Star] Int[x^(m-n)*(a+b*x^n)^(p+1)*Sin[c+d*x],x] - 
  d/(b*n*(p+1)) \[Star] Int[x^(m-n+1)*(a+b*x^n)^(p+1)*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d,m},x] && ILtQ[p,-1] && IGtQ[n,0] && (GtQ[m-n+1,0] || GtQ[n,2]) && RationalQ[m]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  x^(m-n+1)*(a+b*x^n)^(p+1)*Cos[c+d*x]/(b*n*(p+1)) - 
  (m-n+1)/(b*n*(p+1)) \[Star] Int[x^(m-n)*(a+b*x^n)^(p+1)*Cos[c+d*x],x] + 
  d/(b*n*(p+1)) \[Star] Int[x^(m-n+1)*(a+b*x^n)^(p+1)*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d,m},x] && ILtQ[p,-1] && IGtQ[n,0] && (GtQ[m-n+1,0] || GtQ[n,2]) && RationalQ[m]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Sin[c+d*x],x^m*(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d,m},x] && ILtQ[p,0] && IGtQ[n,0] && (EqQ[n,2] || EqQ[p,-1]) && IntegerQ[m]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  Int[ExpandIntegrand[Cos[c+d*x],x^m*(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,d,m},x] && ILtQ[p,0] && IGtQ[n,0] && (EqQ[n,2] || EqQ[p,-1]) && IntegerQ[m]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_*Sin[c_.+d_.*x_],x_Symbol] :=
  Int[x^(m+n*p)*(b+a*x^(-n))^p*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d,m},x] && ILtQ[p,0] && ILtQ[n,0]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_*Cos[c_.+d_.*x_],x_Symbol] :=
  Int[x^(m+n*p)*(b+a*x^(-n))^p*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d,m},x] && ILtQ[p,0] && ILtQ[n,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_+b_.*x_^n_)^p_.*Sin[c_.+d_.*x_],x_Symbol] :=
  Unintegrable[(e*x)^m*(a+b*x^n)^p*Sin[c+d*x],x] /;
FreeQ[{a,b,c,d,e,m,n,p},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(a_+b_.*x_^n_)^p_.*Cos[c_.+d_.*x_],x_Symbol] :=
  Unintegrable[(e*x)^m*(a+b*x^n)^p*Cos[c+d*x],x] /;
FreeQ[{a,b,c,d,e,m,n,p},x]



