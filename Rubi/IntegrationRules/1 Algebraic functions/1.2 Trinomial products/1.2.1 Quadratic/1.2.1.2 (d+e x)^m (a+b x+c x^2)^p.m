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
Int[(d_.+e_.*x_)^m_.*(a_+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  1/c^p \[Star] Int[(d+e*x)^m*(b/2+c*x)^(2*p),x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[b^2-4*a*c,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e^m*(a+b*x+c*x^2)^(p+(m+1)/2)/(c^((m+1)/2)*(m+2*p+1)) /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[b^2-4*a*c,0] && EqQ[2*c*d-b*e,0] && IntegerQ[(m-1)/2]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(a+b*x+c*x^2)^(p+1)/(2*c*(p+1)) + (2*c*d-b*e)/(2*c) \[Star] Int[(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[x_^m_*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (a+b*x+c*x^2)^FracPart[p]/(c^IntPart[p]*(b/2+c*x)^(2*FracPart[p])) \[Star] Int[ExpandLinearProduct[(b/2+c*x)^(2*p),x^m,b/2,c,x],x] /;
FreeQ[{a,b,c,m,p},x] && EqQ[b^2-4*a*c,0] && IGtQ[m,0] && EqQ[m-2*p+1,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (a+b*x+c*x^2)^FracPart[p]/(c^IntPart[p]*(b/2+c*x)^(2*FracPart[p])) \[Star] Int[(d+e*x)^m*(b/2+c*x)^(2*p),x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[b^2-4*a*c,0]


(* ::Code:: *)
(* Int[(d_+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  d/b \[Star] Subst[Int[x^p,x],x,a+b*x+c*x^2] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[2*c*d-b*e,0] *)


(* ::Code:: *)
Int[(d_+e_.*x_)/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  d*Log[RemoveContent[a+b*x+c*x^2,x]]/b /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0]


(* ::Code:: *)
Int[(d_+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  d*(a+b*x+c*x^2)^(p+1)/(b*(p+1)) /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[2*c*d-b*e,0]


(* ::Code:: *)
Int[1/((d_+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)),x_Symbol] :=
  -4*b*c/(d*(b^2-4*a*c)) \[Star] Int[1/(b+2*c*x),x] + 
  b^2/(d^2*(b^2-4*a*c)) \[Star] Int[(d+e*x)/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  2*c*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(e*(p+1)*(b^2-4*a*c)) /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[2*c*d-b*e,0] && EqQ[m+2*p+3,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*(a+b*x+c*x^2)^p,x],x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[2*c*d-b*e,0] && IGtQ[p,0] && Not[EqQ[m,3] && NeQ[p,1]]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e*(m+1)) - 
  b*p/(d*e*(m+1)) \[Star] Int[(d+e*x)^(m+2)*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0] && NeQ[m+2*p+3,0] && GtQ[p,0] && LtQ[m,-1] && 
  Not[IntegerQ[m/2] && LtQ[m+2*p+3,0]] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e*(m+2*p+1)) - 
  d*p*(b^2-4*a*c)/(b*e*(m+2*p+1)) \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[2*c*d-b*e,0] && NeQ[m+2*p+3,0] && GtQ[p,0] && 
  Not[LtQ[m,-1]] && Not[IGtQ[(m-1)/2,0] && (Not[IntegerQ[p]] || LtQ[m,2*p])] && RationalQ[m] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  d*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(b*(p+1)) - 
  d*e*(m-1)/(b*(p+1)) \[Star] Int[(d+e*x)^(m-2)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0] && NeQ[m+2*p+3,0] && LtQ[p,-1] && GtQ[m,1] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  2*c*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(e*(p+1)*(b^2-4*a*c)) - 
  2*c*e*(m+2*p+3)/(e*(p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[2*c*d-b*e,0] && NeQ[m+2*p+3,0] && LtQ[p,-1] && Not[GtQ[m,1]] && RationalQ[m] && IntegerQ[2*p]


(* ::Code:: *)
Int[1/((d_+e_.*x_)*Sqrt[a_.+b_.*x_+c_.*x_^2]),x_Symbol] :=
  4*c \[Star] Subst[Int[1/(b^2*e-4*a*c*e+4*c*e*x^2),x],x,Sqrt[a+b*x+c*x^2]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0]


(* ::Code:: *)
Int[1/(Sqrt[d_+e_.*x_]*Sqrt[a_.+b_.*x_+c_.*x_^2]),x_Symbol] :=
  4/e*Sqrt[-c/(b^2-4*a*c)] \[Star] Subst[Int[1/Sqrt[Simp[1-b^2*x^4/(d^2*(b^2-4*a*c)),x]],x],x,Sqrt[d+e*x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0] && LtQ[c/(b^2-4*a*c),0]


(* ::Code:: *)
Int[Sqrt[d_+e_.*x_]/Sqrt[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  4/e*Sqrt[-c/(b^2-4*a*c)] \[Star] Subst[Int[x^2/Sqrt[Simp[1-b^2*x^4/(d^2*(b^2-4*a*c)),x]],x],x,Sqrt[d+e*x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0] && LtQ[c/(b^2-4*a*c),0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_/Sqrt[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Sqrt[-c*(a+b*x+c*x^2)/(b^2-4*a*c)]/Sqrt[a+b*x+c*x^2] \[Star] 
    Int[(d+e*x)^m/Sqrt[-a*c/(b^2-4*a*c)-b*c*x/(b^2-4*a*c)-c^2*x^2/(b^2-4*a*c)],x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[2*c*d-b*e,0] && EqQ[m^2,1/4]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  2*d*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(b*(m+2*p+1)) + 
  d^2*(m-1)*(b^2-4*a*c)/(b^2*(m+2*p+1)) \[Star] Int[(d+e*x)^(m-2)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[2*c*d-b*e,0] && NeQ[m+2*p+3,0] && GtQ[m,1] && 
  NeQ[m+2*p+1,0] && (IntegerQ[2*p] || IntegerQ[m] && RationalQ[p] || OddQ[m])


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  -2*b*d*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(d^2*(m+1)*(b^2-4*a*c)) + 
  b^2*(m+2*p+3)/(d^2*(m+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m+2)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[2*c*d-b*e,0] && NeQ[m+2*p+3,0] && LtQ[m,-1] && 
  (IntegerQ[2*p] || IntegerQ[m] && RationalQ[p] || IntegerQ[(m+2*p+3)/2])


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  1/e \[Star] Subst[Int[x^m*(a-b^2/(4*c)+(c*x^2)/e^2)^p,x],x,d+e*x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[2*c*d-b*e,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  1/e^p \[Star] Int[(e*x)^(m+p)*(b+c*x)^p,x] /;
FreeQ[{b,c,e,m},x] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+p)*(a/d+c/e*x)^p,x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[p] && (EqQ[m+p,0] || EqQ[m+2*p+2,0])


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^(m+p)*(a/d+c/e*x)^p,x],x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && (IntegerQ[p] || GtQ[a,0] && GtQ[d,0] && LtQ[c,0])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(c*(p+1)) /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && EqQ[m+p,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/((p+1)*(2*c*d-b*e)) /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && EqQ[m+2*p+2,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_./(a_.+b_.*x_+c_.*x_^2)^(3/2),x_Symbol] :=
  -2*e*(2*c*d-b*e)^(m-2)*(d+e*x)/(c^(m-1)*Sqrt[a+b*x+c*x^2]) + 
  e^2/c^(m-1) \[Star] Int[1/Sqrt[a+b*x+c*x^2]*ExpandToSum[((2*c*d-b*e)^(m-1)-c^(m-1)*(d+e*x)^(m-1))/(c*d-b*e-c*e*x),x],x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -2*e^(2*m+3)*Sqrt[a+b*x+c*x^2]/((-2*c*d+b*e)^(m+2)*(d+e*x)) - 
  e^(2*m+2) \[Star] Int[1/Sqrt[a+b*x+c*x^2]*ExpandToSum[((-2*c*d+b*e)^(-m-1)-(-c*d+b*e+c*e*x)^(-m-1))/(d+e*x),x],x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[m,0] && EqQ[m+p,-3/2]


(* ::Code:: *)
Int[(d_.+e_.*x_)^2*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)*(a+b*x+c*x^2)^(p+1)/(c*(p+1)) - e^2*(p+2)/(c*(p+1)) \[Star] Int[(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  Int[(a+b*x+c*x^2)^(m+p)/(a/d+c*x/e)^m,x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[m] && 
  RationalQ[p] && (LtQ[0,-m,p] || LtQ[p,-m,0]) && NeQ[m,2] && NeQ[m,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(c*(m+2*p+1)) + 
  Simplify[m+p]*(2*c*d-b*e)/(c*(m+2*p+1)) \[Star] Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[Simplify[m+p],0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -e*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/((m+p+1)*(2*c*d-b*e)) + 
  c*Simplify[m+2*p+2]/((m+p+1)*(2*c*d-b*e)) \[Star] Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[Simplify[m+2*p+2],0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e*(m+p+1)) - 
  c*p/(e^2*(m+p+1)) \[Star] Int[(d+e*x)^(m+2)*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && GtQ[p,0] && (LtQ[m,-2] || EqQ[m+2*p+1,0]) && NeQ[m+p+1,0] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e*(m+2*p+1)) - 
  p*(2*c*d-b*e)/(e^2*(m+2*p+1)) \[Star] Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && GtQ[p,0] && (LeQ[-2,m,0] || EqQ[m+p+1,0]) && NeQ[m+2*p+1,0] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (2*c*d-b*e)*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(e*(p+1)*(b^2-4*a*c)) - 
  (2*c*d-b*e)*(m+2*p+2)/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && LtQ[0,m,1] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(c*(p+1)) - 
  e^2*(m+p)/(c*(p+1)) \[Star] Int[(d+e*x)^(m-2)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && GtQ[m,1] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(c*(m+2*p+1)) + 
  (m+p)*(2*c*d-b*e)/(c*(m+2*p+1)) \[Star] Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && GtQ[m,1] && NeQ[m+2*p+1,0] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -e*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/((m+p+1)*(2*c*d-b*e)) + 
  c*(m+2*p+2)/((m+p+1)*(2*c*d-b*e)) \[Star] Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && LtQ[m,0] && NeQ[m+p+1,0] && IntegerQ[2*p]


(* ::Code:: *)
Int[1/(Sqrt[d_.+e_.*x_]*Sqrt[a_.+b_.*x_+c_.*x_^2]),x_Symbol] :=
  2*e \[Star] Subst[Int[1/(2*c*d-b*e+e^2*x^2),x],x,Sqrt[a+b*x+c*x^2]/Sqrt[d+e*x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[(e_.*x_)^m_*(b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (e*x)^m*(b*x+c*x^2)^p/(x^(m+p)*(b+c*x)^p) \[Star] Int[x^(m+p)*(b+c*x)^p,x] /;
FreeQ[{b,c,e,m},x]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  d^m*(a+b*x+c*x^2)^FracPart[p]/((1+e*x/d)^FracPart[p]*(a/d+(c*x)/e)^FracPart[p]) \[Star] Int[(1+e*x/d)^(m+p)*(a/d+c/e*x)^p,x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && (IntegerQ[m] || GtQ[d,0]) && 
  Not[IGtQ[m,0] && (IntegerQ[3*p] || IntegerQ[4*p])]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  d^IntPart[m]*(d+e*x)^FracPart[m]/(1+e*x/d)^FracPart[m] \[Star] Int[(1+e*x/d)^m*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m},x] && EqQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[m] || GtQ[d,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*(a+b*x+c*x^2)^p,x],x] /;
FreeQ[{a,b,c,d,e,m},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
    1/c^p \[Star] Int[ExpandIntegrand[(d+e*x)^m*(b/2-q/2+c*x)^p*(b/2+q/2+c*x)^p,x],x] /;
 EqQ[p,-1] || Not[FractionalPowerFactorQ[q]]] /;
FreeQ[{a,b,c,d,e},x] && ILtQ[p,0] && IntegerQ[m] && NiceSqrtQ[b^2-4*a*c]


(* ::Code:: *)
Int[(d_.+e_.*x_)/(a_+b_.*x_+c_.*x_^2),x_Symbol] :=
  (2*c*d-b*e)/(2*c) \[Star] Int[1/(a+b*x+c*x^2),x] + e/(2*c) \[Star] Int[(b+2*c*x)/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/(a_+b_.*x_+c_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m/(a+b*x+c*x^2),x],x] /;
FreeQ[{a,b,c,d,e},x] && IGtQ[m,1]


(* ::Code:: *)
Int[1/((d_.+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)),x_Symbol] :=
  e*Log[RemoveContent[d+e*x,x]]/(c*d^2-b*d*e+a*e^2) + 
  1/(c*d^2-b*d*e+a*e^2) \[Star] Int[(c*d-b*e-c*e*x)/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/(a_+b_.*x_+c_.*x_^2),x_Symbol] :=
  e*(d+e*x)^(m+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/(c*d^2-b*d*e+a*e^2) \[Star] Int[(d+e*x)^(m+1)*Simp[c*d-b*e-c*e*x,x]/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e},x] && ILtQ[m,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  e*(d+e*x)^(m-1)/(c*(m-1)) + 
  1/c \[Star] Int[(d+e*x)^(m-2)*Simp[c*d^2-a*e^2+e*(2*c*d-b*e)*x,x]/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e},x] && GtQ[m,1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  e*(d+e*x)^(m+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/(c*d^2-b*d*e+a*e^2) \[Star] Int[(d+e*x)^(m+1)*Simp[c*d-b*e-c*e*x,x]/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e,m},x] && LtQ[m,-1]


(* ::Code:: *)
(* Int[Sqrt[d_.+e_.*x_]/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  With[{q=Rt[(c*d^2-b*d*e+a*e^2)/c,2]},
  1/2 \[Star] Int[(d+q+e*x)/(Sqrt[d+e*x]*(a+b*x+c*x^2)),x] + 
  1/2 \[Star] Int[(d-q+e*x)/(Sqrt[d+e*x]*(a+b*x+c*x^2)),x]] /;
FreeQ[{a,b,c,d,e},x] && LtQ[b^2-4*a*c,0] *)


(* ::Code:: *)
(* Int[Sqrt[d_.+e_.*x_]/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (2*c*d-b*e+e*q)/q \[Star] Int[1/(Sqrt[d+e*x]*(b-q+2*c*x)),x] - 
  (2*c*d-b*e-e*q)/q \[Star] Int[1/(Sqrt[d+e*x]*(b+q+2*c*x)),x]] /;
FreeQ[{a,b,c,d,e},x] (* && Not[LtQ[b^2-4*a*c,0]] *) *)


(* ::Code:: *)
Int[Sqrt[d_.+e_.*x_]/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  2*e \[Star] Subst[Int[x^2/(c*d^2-b*d*e+a*e^2-(2*c*d-b*e)*x^2+c*x^4),x],x,Sqrt[d+e*x]] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
(* Int[1/(Sqrt[d_.+e_.*x_]*(a_.+b_.*x_+c_.*x_^2)),x_Symbol] :=
  With[{q=Rt[(c*d^2-b*d*e+a*e^2)/c,2]},
  1/(2*q) \[Star] Int[(d+q+e*x)/(Sqrt[d+e*x]*(a+b*x+c*x^2)),x] - 
  1/(2*q) \[Star] Int[(d-q+e*x)/(Sqrt[d+e*x]*(a+b*x+c*x^2)),x]] /;
FreeQ[{a,b,c,d,e},x] && LtQ[b^2-4*a*c,0] *)


(* ::Code:: *)
(* Int[1/(Sqrt[d_.+e_.*x_]*(a_.+b_.*x_+c_.*x_^2)),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  2*c/q \[Star] Int[1/(Sqrt[d+e*x]*(b-q+2*c*x)),x] - 
  2*c/q \[Star] Int[1/(Sqrt[d+e*x]*(b+q+2*c*x)),x]] /;
FreeQ[{a,b,c,d,e},x] (* && Not[LtQ[b^2-4*a*c,0]] *) *)


(* ::Code:: *)
Int[1/(Sqrt[d_.+e_.*x_]*(a_.+b_.*x_+c_.*x_^2)),x_Symbol] :=
  2*e \[Star] Subst[Int[1/(c*d^2-b*d*e+a*e^2-(2*c*d-b*e)*x^2+c*x^4),x],x,Sqrt[d+e*x]] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m,1/(a+b*x+c*x^2),x],x] /;
FreeQ[{a,b,c,d,e,m},x] && Not[IntegerQ[2*m]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^FracPart[p]*(a+b*x+c*x^2)^FracPart[p]/(a*d+c*e*x^3)^FracPart[p] \[Star] Int[(d+e*x)^(m-p)*(a*d+c*e*x^3)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[b*d+a*e,0] && EqQ[c*d+b*e,0] && IGtQ[m-p+1,0] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -(d+e*x)^(m+1)*(d*b-2*a*e+(2*c*d-b*e)*x)*(a+b*x+c*x^2)^p/(2*(m+1)*(c*d^2-b*d*e+a*e^2)) + 
  p*(b^2-4*a*c)/(2*(m+1)*(c*d^2-b*d*e+a*e^2)) \[Star] Int[(d+e*x)^(m+2)*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[m+2*p+2,0] && GtQ[p,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m-1)*(d*b-2*a*e+(2*c*d-b*e)*x)*(a+b*x+c*x^2)^(p+1)/((p+1)*(b^2-4*a*c)) - 
  2*(2*p+3)*(c*d^2-b*d*e+a*e^2)/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m-2)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[m+2*p+2,0] && LtQ[p,-1]


(* ::Code:: *)
Int[1/((d_.+e_.*x_)*Sqrt[a_.+b_.*x_+c_.*x_^2]),x_Symbol] :=
  -2 \[Star] Subst[Int[1/(4*c*d^2-4*b*d*e+4*a*e^2-x^2),x],x,(2*a*e-b*d-(2*c*d-b*e)*x)/Sqrt[a+b*x+c*x^2]] /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  -(b-q+2*c*x)*(d+e*x)^(m+1)*(a+b*x+c*x^2)^p/
    ((m+1)*(2*c*d-b*e+e*q)*((2*c*d-b*e+e*q)*(b+q+2*c*x)/((2*c*d-b*e-e*q)*(b-q+2*c*x)))^p)*
    Hypergeometric2F1[m+1,-p,m+2,-4*c*q*(d+e*x)/((2*c*d-b*e-e*q)*(b-q+2*c*x))]] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[m+2*p+2,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^m*(b+2*c*x)*(a+b*x+c*x^2)^(p+1)/((p+1)*(b^2-4*a*c)) + 
  m*(2*c*d-b*e)/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[m+2*p+3,0] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  (2*c*d-b*e)/(2*(c*d^2-b*d*e+a*e^2)) \[Star] Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && EqQ[m+2*p+3,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)/(a_.+b_.*x_+c_.*x_^2)^(3/2),x_Symbol] :=
  -2*(b*d-2*a*e+(2*c*d-b*e)*x)/((b^2-4*a*c)*Sqrt[a+b*x+c*x^2]) /;
FreeQ[{a,b,c,d,e},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (b*d-2*a*e+(2*c*d-b*e)*x)/((p+1)*(b^2-4*a*c))*(a+b*x+c*x^2)^(p+1) - 
  (2*p+3)*(2*c*d-b*e)/((p+1)*(b^2-4*a*c)) \[Star] Int[(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && LtQ[p,-1] && NeQ[p,-3/2]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(a+b*x+c*x^2)^(p+1)/(2*c*(p+1)) + (2*c*d-b*e)/(2*c) \[Star] Int[(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,p},x] && NeQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e*(m+1)) - 
  p/(e*(m+1)) \[Star] Int[(d+e*x)^(m+1)*(b+2*c*x)*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e,m},x] && GtQ[p,0] && (IntegerQ[p] || LtQ[m,-1]) && NeQ[m,-1] && Not[ILtQ[m+2*p+1,0]] && IntQuadraticQ[a,b,c,d,e,m,p,x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e*(m+2*p+1)) - 
  p/(e*(m+2*p+1)) \[Star] Int[(d+e*x)^m*Simp[b*d-2*a*e+(2*c*d-b*e)*x,x]*(a+b*x+c*x^2)^(p-1),x] /;
FreeQ[{a,b,c,d,e,m},x] && GtQ[p,0] && NeQ[m+2*p+1,0] && (Not[RationalQ[m]] || LtQ[m,1]) && Not[ILtQ[m+2*p,0]] && IntQuadraticQ[a,b,c,d,e,m,p,x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^m*(b+2*c*x)*(a+b*x+c*x^2)^(p+1)/((p+1)*(b^2-4*a*c)) - 
  1/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m-1)*(b*e*m+2*c*d*(2*p+3)+2*c*e*(m+2*p+3)*x)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && LtQ[p,-1] && GtQ[m,0] && (LtQ[m,1] || ILtQ[m+2*p+3,0] && NeQ[m,2]) && IntQuadraticQ[a,b,c,d,e,m,p,x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m-1)*(d*b-2*a*e+(2*c*d-b*e)*x)*(a+b*x+c*x^2)^(p+1)/((p+1)*(b^2-4*a*c)) + 
  1/((p+1)*(b^2-4*a*c)) \[Star] 
    Int[(d+e*x)^(m-2)*
      Simp[e*(2*a*e*(m-1)+b*d*(2*p-m+4))-2*c*d^2*(2*p+3)+e*(b*e-2*d*c)*(m+2*p+2)*x,x]*
      (a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && LtQ[p,-1] && GtQ[m,1] && IntQuadraticQ[a,b,c,d,e,m,p,x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m+1)*(b*c*d-b^2*e+2*a*c*e+c*(2*c*d-b*e)*x)*(a+b*x+c*x^2)^(p+1)/((p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)) + 
  1/((p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)) \[Star] 
    Int[(d+e*x)^m*
      Simp[b*c*d*e*(2*p-m+2)+b^2*e^2*(m+p+2)-2*c^2*d^2*(2*p+3)-2*a*c*e^2*(m+2*p+3)-c*e*(2*c*d-b*e)*(m+2*p+4)*x,x]*
      (a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,m},x] && LtQ[p,-1] && IntQuadraticQ[a,b,c,d,e,m,p,x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)/(c*(m+2*p+1)) + 
  1/(c*(m+2*p+1)) \[Star] 
    Int[(d+e*x)^(m-2)*
      Simp[c*d^2*(m+2*p+1)-e*(a*e*(m-1)+b*d*(p+1))+e*(2*c*d-b*e)*(m+p)*x,x]*
      (a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && If[RationalQ[m], GtQ[m,1], SumSimplerQ[m,-2]] && NeQ[m+2*p+1,0] && IntQuadraticQ[a,b,c,d,e,m,p,x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  e*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/((m+1)*(c*d^2-b*d*e+a*e^2)) \[Star] 
    Int[(d+e*x)^(m+1)*Simp[c*d*(m+1)-b*e*(m+p+2)-c*e*(m+2*p+3)*x,x]*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && NeQ[m,-1] && (LtQ[m,-1] && IntQuadraticQ[a,b,c,d,e,m,p,x] || SumSimplerQ[m,1] && IntegerQ[p] || ILtQ[Simplify[m+2*p+3],0])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/Sqrt[b_.*x_+c_.*x_^2],x_Symbol] :=
  Int[(d+e*x)^m/(Sqrt[b*x]*Sqrt[1+c/b*x]),x] /;
FreeQ[{b,c,d,e},x] && NeQ[c*d-b*e,0] && EqQ[m^2,1/4] && LtQ[c,0] && RationalQ[b]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/Sqrt[b_.*x_+c_.*x_^2],x_Symbol] :=
  Sqrt[x]*Sqrt[b+c*x]/Sqrt[b*x+c*x^2] \[Star] Int[(d+e*x)^m/(Sqrt[x]*Sqrt[b+c*x]),x] /;
FreeQ[{b,c,d,e},x] && NeQ[c*d-b*e,0] && EqQ[m^2,1/4]


(* ::Code:: *)
Int[x_^m_/Sqrt[a_+b_.*x_+c_.*x_^2],x_Symbol] :=
  2 \[Star] Subst[Int[x^(2*m+1)/Sqrt[a+b*x^2+c*x^4],x],x,Sqrt[x]] /;
FreeQ[{a,b,c},x] && EqQ[m^2,1/4]


(* ::Code:: *)
Int[(e_*x_)^m_/Sqrt[a_+b_.*x_+c_.*x_^2],x_Symbol] :=
  (e*x)^m/x^m \[Star] Int[x^m/Sqrt[a+b*x+c*x^2], x] /;
FreeQ[{a,b,c,e},x] && EqQ[m^2,1/4]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_/Sqrt[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  2*Rt[b^2-4*a*c,2]*(d+e*x)^m*Sqrt[-c*(a+b*x+c*x^2)/(b^2-4*a*c)]/
    (c*Sqrt[a+b*x+c*x^2]*(2*c*(d+e*x)/(2*c*d-b*e-e*Rt[b^2-4*a*c,2]))^m) \[Star] 
    Subst[Int[(1+2*e*Rt[b^2-4*a*c,2]*x^2/(2*c*d-b*e-e*Rt[b^2-4*a*c,2]))^m/Sqrt[1-x^2],x],x,
      Sqrt[(b+Rt[b^2-4*a*c,2]+2*c*x)/(2*Rt[b^2-4*a*c,2])]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[m^2,1/4]


(* ::Code:: *)
Int[(a_.+b_.*x_+c_.*x_^2)^p_/(d_.+e_.*x_),x_Symbol] :=
  1/(-4*c/(b^2-4*a*c))^p \[Star] Subst[Int[Simp[1-x^2/(b^2-4*a*c),x]^p/Simp[2*c*d-b*e+e*x,x],x],x,b+2*c*x] /;
FreeQ[{a,b,c,d,e,p},x] && GtQ[4*a-b^2/c,0] && IntegerQ[4*p]


(* ::Code:: *)
Int[(a_.+b_.*x_+c_.*x_^2)^p_/(d_.+e_.*x_),x_Symbol] :=
  (a+b*x+c*x^2)^p/(-c*(a+b*x+c*x^2)/(b^2-4*a*c))^p \[Star] 
    Int[(-a*c/(b^2-4*a*c)-b*c*x/(b^2-4*a*c)-c^2*x^2/(b^2-4*a*c))^p/(d+e*x),x] /;
FreeQ[{a,b,c,d,e,p},x] && Not[GtQ[4*a-b^2/c,0]] && IntegerQ[4*p]


(* ::Code:: *)
Int[1/((d_.+e_.*x_)*(a_+b_.*x_+c_.*x_^2)^(1/3)),x_Symbol] :=
  With[{q=Rt[3*c*e^2*(2*c*d-b*e),3]},
  -Sqrt[3]*c*e*ArcTan[1/Sqrt[3]+2*(c*d-b*e-c*e*x)/(Sqrt[3]*q*(a+b*x+c*x^2)^(1/3))]/q^2 - 
  3*c*e*Log[d+e*x]/(2*q^2) + 
  3*c*e*Log[c*d-b*e-c*e*x-q*(a+b*x+c*x^2)^(1/3)]/(2*q^2)] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d^2-b*c*d*e+b^2*e^2-3*a*c*e^2,0] && PosQ[c*e^2*(2*c*d-b*e)]


(* ::Code:: *)
Int[1/((d_.+e_.*x_)*(a_+b_.*x_+c_.*x_^2)^(1/3)),x_Symbol] :=
  With[{q=Rt[-3*c*e^2*(2*c*d-b*e),3]},
  -Sqrt[3]*c*e*ArcTan[1/Sqrt[3]-2*(c*d-b*e-c*e*x)/(Sqrt[3]*q*(a+b*x+c*x^2)^(1/3))]/q^2 - 
  3*c*e*Log[d+e*x]/(2*q^2) + 
  3*c*e*Log[c*d-b*e-c*e*x+q*(a+b*x+c*x^2)^(1/3)]/(2*q^2)] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d^2-b*c*d*e+b^2*e^2-3*a*c*e^2,0] && NegQ[c*e^2*(2*c*d-b*e)]


(* ::Code:: *)
Int[1/((d_.+e_.*x_)*(a_+b_.*x_+c_.*x_^2)^(1/3)),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (b+q+2*c*x)^(1/3)*(b-q+2*c*x)^(1/3)/(a+b*x+c*x^2)^(1/3) \[Star] Int[1/((d+e*x)*(b+q+2*c*x)^(1/3)*(b-q+2*c*x)^(1/3)),x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d^2-b*c*d*e-2*b^2*e^2+9*a*c*e^2,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  -(1/(d+e*x))^(2*p)*(a+b*x+c*x^2)^p/(e*(e*(b-q+2*c*x)/(2*c*(d+e*x)))^p*(e*(b+q+2*c*x)/(2*c*(d+e*x)))^p) \[Star] 
    Subst[Int[x^(-m-2*(p+1))*Simp[1-(d-e*(b-q)/(2*c))*x,x]^p*Simp[1-(d-e*(b+q)/(2*c))*x,x]^p,x],x,1/(d+e*x)]] /;
FreeQ[{a,b,c,d,e,p},x] && ILtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (a+b*x+c*x^2)^p/(e*(1-(d+e*x)/(d-e*(b-q)/(2*c)))^p*(1-(d+e*x)/(d-e*(b+q)/(2*c)))^p) \[Star] 
    Subst[Int[x^m*Simp[1-x/(d-e*(b-q)/(2*c)),x]^p*Simp[1-x/(d-e*(b+q)/(2*c)),x]^p,x],x,d+e*x]] /;
FreeQ[{a,b,c,d,e,m,p},x]


(* ::Code:: *)
Int[(d_.+e_.*u_)^m_.*(a_+b_.*u_+c_.*u_^2)^p_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(d+e*x)^m*(a+b*x+c*x^2)^p,x],x,u] /;
FreeQ[{a,b,c,d,e,m,p},x] && LinearQ[u,x] && NeQ[u,x]


(* ::Code:: *)
(* IntQuadraticQ[a,b,c,d,e,m,p,x] returns True if (d+e*x)^m*(a+b*x+c*x^2)^p is integrable wrt x in terms of non-Appell functions. *)
IntQuadraticQ[a_,b_,c_,d_,e_,m_,p_,x_] :=
  IntegerQ[p] || IGtQ[m,0] || IntegersQ[2*m,2*p] || IntegersQ[m,4*p] || 
  IntegersQ[m,p+1/3] && (EqQ[c^2*d^2-b*c*d*e+b^2*e^2-3*a*c*e^2,0] || EqQ[c^2*d^2-b*c*d*e-2*b^2*e^2+9*a*c*e^2,0])
