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
Int[u_*(c_.*cot[a_.+b_.*x_])^m_.*(d_.*tan[a_.+b_.*x_])^n_.,x_Symbol] :=
  (c*Cot[a+b*x])^m*(d*Tan[a+b*x])^m \[Star] Int[ActivateTrig[u]*(d*Tan[a+b*x])^(n-m),x] /;
FreeQ[{a,b,c,d,m,n},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(c_.*tan[a_.+b_.*x_])^m_.*(d_.*cos[a_.+b_.*x_])^n_.,x_Symbol] :=
  (c*Tan[a+b*x])^m*(d*Cos[a+b*x])^m/(d*Sin[a+b*x])^m \[Star] Int[ActivateTrig[u]*(d*Sin[a+b*x])^m/(d*Cos[a+b*x])^(m-n),x] /;
FreeQ[{a,b,c,d,m,n},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(c_.*cot[a_.+b_.*x_])^m_.,x_Symbol] :=
  (c*Cot[a+b*x])^m*(c*Tan[a+b*x])^m \[Star] Int[ActivateTrig[u]/(c*Tan[a+b*x])^m,x] /;
FreeQ[{a,b,c,m},x] && Not[IntegerQ[m]] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(c_.*tan[a_.+b_.*x_])^m_.,x_Symbol] :=
  (c*Cot[a+b*x])^m*(c*Tan[a+b*x])^m \[Star] Int[ActivateTrig[u]/(c*Cot[a+b*x])^m,x] /;
FreeQ[{a,b,c,m},x] && Not[IntegerQ[m]] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(c_.*tan[a_.+b_.*x_])^n_.*(A_+B_.*cot[a_.+b_.*x_]),x_Symbol] :=
  c \[Star] Int[ActivateTrig[u]*(c*Tan[a+b*x])^(n-1)*(B+A*Tan[a+b*x]),x] /;
FreeQ[{a,b,c,A,B,n},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(c_.*cot[a_.+b_.*x_])^n_.*(A_+B_.*tan[a_.+b_.*x_]),x_Symbol] :=
  c \[Star] Int[ActivateTrig[u]*(c*Cot[a+b*x])^(n-1)*(B+A*Cot[a+b*x]),x] /;
FreeQ[{a,b,c,A,B,n},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_+B_.*cot[a_.+b_.*x_]),x_Symbol] :=
  Int[ActivateTrig[u]*(B+A*Tan[a+b*x])/Tan[a+b*x],x] /;
FreeQ[{a,b,A,B},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_+B_.*tan[a_.+b_.*x_]),x_Symbol] :=
  Int[ActivateTrig[u]*(B+A*Cot[a+b*x])/Cot[a+b*x],x] /;
FreeQ[{a,b,A,B},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_.*(c_.*tan[a_.+b_.*x_])^n_.*(A_.+B_.*cot[a_.+b_.*x_]+C_.*cot[a_.+b_.*x_]^2),x_Symbol] :=
  c^2 \[Star] Int[ActivateTrig[u]*(c*Tan[a+b*x])^(n-2)*(C+B*Tan[a+b*x]+A*Tan[a+b*x]^2),x] /;
FreeQ[{a,b,c,A,B,C,n},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_.*(c_.*cot[a_.+b_.*x_])^n_.*(A_.+B_.*tan[a_.+b_.*x_]+C_.*tan[a_.+b_.*x_]^2),x_Symbol] :=
  c^2 \[Star] Int[ActivateTrig[u]*(c*Cot[a+b*x])^(n-2)*(C+B*Cot[a+b*x]+A*Cot[a+b*x]^2),x] /;
FreeQ[{a,b,c,A,B,C,n},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_.*(c_.*tan[a_.+b_.*x_])^n_.*(A_+C_.*cot[a_.+b_.*x_]^2),x_Symbol] :=
  c^2 \[Star] Int[ActivateTrig[u]*(c*Tan[a+b*x])^(n-2)*(C+A*Tan[a+b*x]^2),x] /;
FreeQ[{a,b,c,A,C,n},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_.*(c_.*cot[a_.+b_.*x_])^n_.*(A_+C_.*tan[a_.+b_.*x_]^2),x_Symbol] :=
  c^2 \[Star] Int[ActivateTrig[u]*(c*Cot[a+b*x])^(n-2)*(C+A*Cot[a+b*x]^2),x] /;
FreeQ[{a,b,c,A,C,n},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_.+B_.*cot[a_.+b_.*x_]+C_.*cot[a_.+b_.*x_]^2),x_Symbol] :=
  Int[ActivateTrig[u]*(C+B*Tan[a+b*x]+A*Tan[a+b*x]^2)/Tan[a+b*x]^2,x] /;
FreeQ[{a,b,A,B,C},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_.+B_.*tan[a_.+b_.*x_]+C_.*tan[a_.+b_.*x_]^2),x_Symbol] :=
  Int[ActivateTrig[u]*(C+B*Cot[a+b*x]+A*Cot[a+b*x]^2)/Cot[a+b*x]^2,x] /;
FreeQ[{a,b,A,B,C},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_+C_.*cot[a_.+b_.*x_]^2),x_Symbol] :=
  Int[ActivateTrig[u]*(C+A*Tan[a+b*x]^2)/Tan[a+b*x]^2,x] /;
FreeQ[{a,b,A,C},x] && KnownTangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_+C_.*tan[a_.+b_.*x_]^2),x_Symbol] :=
  Int[ActivateTrig[u]*(C+A*Cot[a+b*x]^2)/Cot[a+b*x]^2,x] /;
FreeQ[{a,b,A,C},x] && KnownCotangentIntegrandQ[u,x]


(* ::Code:: *)
Int[u_*(A_.+B_.*tan[a_.+b_.*x_]+C_.*cot[a_.+b_.*x_]),x_Symbol] :=
  Int[ActivateTrig[u]*(C+A*Tan[a+b*x]+B*Tan[a+b*x]^2)/Tan[a+b*x],x] /;
FreeQ[{a,b,A,B,C},x]


(* ::Code:: *)
Int[u_*(A_.*tan[a_.+b_.*x_]^n_.+B_.*tan[a_.+b_.*x_]^n1_+C_.*tan[a_.+b_.*x_]^n2_),x_Symbol] :=
  Int[ActivateTrig[u]*Tan[a+b*x]^n*(A+B*Tan[a+b*x]+C*Tan[a+b*x]^2),x] /;
FreeQ[{a,b,A,B,C,n},x] && EqQ[n1,n+1] && EqQ[n2,n+2]


(* ::Code:: *)
Int[u_*(A_.*cot[a_.+b_.*x_]^n_.+B_.*cot[a_.+b_.*x_]^n1_+C_.*cot[a_.+b_.*x_]^n2_),x_Symbol] :=
  Int[ActivateTrig[u]*Cot[a+b*x]^n*(A+B*Cot[a+b*x]+C*Cot[a+b*x]^2),x] /;
FreeQ[{a,b,A,B,C,n},x] && EqQ[n1,n+1] && EqQ[n2,n+2]



