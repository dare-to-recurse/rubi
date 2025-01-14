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
Int[sin[d_.+e_.*x_]^m_*(a_+b_.*cos[d_.+e_.*x_]^p_+c_.*sin[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Cot[d+e*x],x]},
  -f/e \[Star] Subst[Int[ExpandToSum[c+b*(1+f^2*x^2)^(q/2-p/2)+a*(1+f^2*x^2)^(q/2),x]^n/(1+f^2*x^2)^(m/2+n*q/2+1),x],x,Cot[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && GtQ[p,0] && LeQ[p,q]


(* ::Code:: *)
Int[cos[d_.+e_.*x_]^m_*(a_+b_.*sin[d_.+e_.*x_]^p_+c_.*cos[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Tan[d+e*x],x]},
  f/e \[Star] Subst[Int[ExpandToSum[c+b*(1+f^2*x^2)^(q/2-p/2)+a*(1+f^2*x^2)^(q/2),x]^n/(1+f^2*x^2)^(m/2+n*q/2+1),x],x,Tan[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && GtQ[p,0] && LeQ[p,q]


(* ::Code:: *)
Int[sin[d_.+e_.*x_]^m_*(a_+b_.*cos[d_.+e_.*x_]^p_+c_.*sin[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Cot[d+e*x],x]},
  -f/e \[Star] Subst[Int[ExpandToSum[a*(1+f^2*x^2)^(p/2)+b*f^p*x^p+c*(1+f^2*x^2)^(p/2-q/2),x]^n/(1+f^2*x^2)^(m/2+n*p/2+1),x],x,
    Cot[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && LtQ[0,q,p]


(* ::Code:: *)
Int[cos[d_.+e_.*x_]^m_*(a_+b_.*sin[d_.+e_.*x_]^p_+c_.*cos[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Tan[d+e*x],x]},
  f/e \[Star] Subst[Int[ExpandToSum[a*(1+f^2*x^2)^(p/2)+b*f^p*x^p+c*(1+f^2*x^2)^(p/2-q/2),x]^n/(1+f^2*x^2)^(m/2+n*p/2+1),x],x,
    Tan[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && LtQ[0,q,p]


(* ::Code:: *)
Int[sin[d_.+e_.*x_]^m_*(a_+b_.*cos[d_.+e_.*x_]^p_+c_.*sin[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Cot[d+e*x],x]},
  -f/e \[Star] Subst[Int[ExpandToSum[c+b*(1+f^2*x^2)^(q/2-p/2)+a*(1+f^2*x^2)^(q/2),x]^n/(1+f^2*x^2)^(m/2+n*q/2+1),x],x,Cot[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && GtQ[p,0] && LeQ[p,q]


(* ::Code:: *)
Int[cos[d_.+e_.*x_]^m_*(a_+b_.*sin[d_.+e_.*x_]^p_+c_.*cos[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Tan[d+e*x],x]},
  f/e \[Star] Subst[Int[ExpandToSum[c+b*(1+f^2*x^2)^(q/2-p/2)+a*(1+f^2*x^2)^(q/2),x]^n/(1+f^2*x^2)^(m/2+n*q/2+1),x],x,Tan[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && GtQ[p,0] && LeQ[p,q]


(* ::Code:: *)
Int[sin[d_.+e_.*x_]^m_*(a_+b_.*cos[d_.+e_.*x_]^p_+c_.*sin[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Cot[d+e*x],x]},
  -f/e \[Star] Subst[Int[ExpandToSum[a*(1+f^2*x^2)^(p/2)+b*f^p*x^p+c*(1+f^2*x^2)^(p/2-q/2),x]^n/(1+f^2*x^2)^(m/2+n*p/2+1),x],x,
    Cot[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && LtQ[0,q,p]


(* ::Code:: *)
Int[cos[d_.+e_.*x_]^m_*(a_+b_.*sin[d_.+e_.*x_]^p_+c_.*cos[d_.+e_.*x_]^q_)^n_,x_Symbol] :=
  Module[{f=FreeFactors[Tan[d+e*x],x]},
  f/e \[Star] Subst[Int[ExpandToSum[a*(1+f^2*x^2)^(p/2)+b*f^p*x^p+c*(1+f^2*x^2)^(p/2-q/2),x]^n/(1+f^2*x^2)^(m/2+n*p/2+1),x],x,
    Tan[d+e*x]/f]] /;
FreeQ[{a,b,c,d,e},x] && IntegerQ[m/2] && IntegerQ[p/2] && IntegerQ[q/2] && IntegerQ[n] && LtQ[0,q,p]



