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
(* Int[u_.*(v_+w_)^p_.,x_Symbol] :=
  Int[u*w^p,x] /;
FreeQ[p,x] && EqQ[v,0] *)


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_.)^p_.,x_Symbol] :=
  Int[u*(b*x^n)^p,x] /;
FreeQ[{a,b,n,p},x] && EqQ[a,0]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_.)^p_.,x_Symbol] :=
  Int[u*a^p,x] /;
FreeQ[{a,b,n,p},x] && EqQ[b,0]


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[u*(b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,n,p},x] && EqQ[j,2*n] && EqQ[a,0]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[u*(a+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,n,p},x] && EqQ[j,2*n] && EqQ[b,0]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[u*(a+b*x^n)^p,x] /;
FreeQ[{a,b,c,n,p},x] && EqQ[j,2*n] && EqQ[c,0]


(* ::Code:: *)
Int[u_.*(v_.+a_.*Fx_+b_.*Fx_)^p_.,x_Symbol] :=
  Int[u*(v+(a+b)*Fx)^p,x] /;
FreeQ[{a,b},x] && Not[FreeQ[Fx,x]]


(* ::Code:: *)
Int[u_.*Px_^p_,x_Symbol] :=
  Int[u*Px^Simplify[p],x] /;
PolyQ[Px,x] && Not[RationalQ[p]] && FreeQ[p,x] && RationalQ[Simplify[p]]


(* ::Code:: *)
Int[u_.*x_^m_.*(a_.*x_)^p_,x_Symbol] :=
  1/a^m \[Star] Int[u*(a*x)^(m+p),x] /;
FreeQ[{a,m,p},x] && IntegerQ[m]


(* ::Code:: *)
Int[u_.*(e_.*x_)^m_.*Px_^p_.,x_Symbol] :=
  With[{r=Expon[Px,x,Min]},
  1/e^(p*r) \[Star] Int[u*(e*x)^(m+p*r)*ExpandToSum[Px/x^r,x]^p,x] /;
 IGtQ[r,0]] /;
FreeQ[{e,m},x] && PolyQ[Px,x] && IntegerQ[p] && Not[MonomialQ[Px,x]]


(* ::Code:: *)
Int[u_.*(e_.*x_)^m_.*(a_.*x_^r_.+b_.*x_^s_.)^p_.,x_Symbol] :=
  1/e^(p*r) \[Star] Int[u*(e*x)^(m+p*r)*(a+b*x^(s-r))^p,x] /;
FreeQ[{a,b,e,m,r,s},x] && IntegerQ[p] && (IntegerQ[p*r] || GtQ[e,0]) && PosQ[s-r]


(* ::Code:: *)
Int[u_.*(e_.*x_)^m_.*(a_.*x_^r_.+b_.*x_^s_.+c_.*x_^t_.)^p_.,x_Symbol] :=
  1/e^(p*r) \[Star] Int[u*(e*x)^(m+p*r)*(a+b*x^(s-r)+c*x^(t-r))^p,x] /;
FreeQ[{a,b,c,e,m,r,s,t},x] && IntegerQ[p] && (IntegerQ[p*r] || GtQ[e,0]) && PosQ[s-r] && PosQ[t-r]


(* ::Code:: *)
Int[u_.*(e_.*x_)^m_.*(a_.*x_^r_.+b_.*x_^s_.+c_.*x_^t_.+d_.*x_^q_.)^p_.,x_Symbol] :=
  1/e^(p*r) \[Star] Int[u*(e*x)^(m+p*r)*(a+b*x^(s-r)+c*x^(t-r)+d*x^(q-r))^p,x] /;
FreeQ[{a,b,c,d,e,m,r,s,t,q},x] && IntegerQ[p] && (IntegerQ[p*r] || GtQ[e,0]) && PosQ[s-r] && PosQ[t-r] && PosQ[q-r]


(* ::Code:: *)
Int[u_.*(v_.*(a_+b_.*x_^n_.)^mm_.*(c_+d_.*x_^n2_.)^m_.)^p_,x_Symbol] :=
  Int[u*(v*c^m/a^(2*m)*(a-b*x^n)^m)^p,x] /;
FreeQ[{a,b,c,d,n,p},x] && EqQ[n2,2*n] && EqQ[b^2*c+a^2*d,0] && IntegersQ[m,mm] && EqQ[m+mm,0]


(* ::Code:: *)
Int[a_./x_,x_Symbol] :=
  a*Log[x] /;
FreeQ[a,x]


(* ::Code:: *)
Int[a_.*x_^m_.,x_Symbol] :=
  a*x^(m+1)/(m+1) /;
FreeQ[{a,m},x] && NeQ[m,-1]


(* ::Code:: *)
(* Int[1/(a_+b_.*x_),x_Symbol] :=
  With[{g=GCD[a,b]}, 1/g \[Star] Int[1/(a/g+b/g*x),x] /;
 NeQ[g,1]] /;
RationalQ[a,b] *)


(* ::Code:: *)
(* Int[1/(a1_.*a2_.+b1_.*b2_.*x_),x_Symbol] :=
  With[{g=GCD[a1,b1]}, 1/g \[Star] Int[1/(a1*a2/g+b1*b2/g*x),x] /;
 NeQ[g,1]] /;
RationalQ[a1,b1] && FreeQ[{a2,b2},x] *)


(* ::Code:: *)
(* Int[1/(a_.*c_^m_.+b_.*c_^n_.*x_),x_Symbol] :=
  1/c^n \[Star] Int[1/(a*c^(m-n)+b*x),x] /;
FreeQ[{a,b,c},x] && IntegersQ[m,n] && GeQ[m-n,0] *)


(* ::Code:: *)
(* Int[1/(a_.*c_^m_.+b_.*c_^n_.*x_),x_Symbol] :=
  1/c^m \[Star] Int[1/(a+b*c^(n-m)*x),x] /;
FreeQ[{a,b,c},x] && IntegersQ[m,n] && GtQ[n-m,0] *)


(* ::Code:: *)
(* Int[1/(a_+b_.*x_),x_Symbol] :=
  Log[a+b*x]/b /;
FreeQ[{a,b},x] *)


(* ::Code:: *)
Int[c_./(a_.+b_.*x_),x_Symbol] :=
  c*Log[RemoveContent[a+b*x,x]]/b /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[c_.*(a_.+b_.*x_)^m_.,x_Symbol] :=
  c*(a+b*x)^(m+1)/(b*(m+1)) /;
FreeQ[{a,b,c,m},x] && NeQ[m,-1]


(* ::Code:: *)
Int[c_.*(a_.+b_.*u_)^m_,x_Symbol] :=
  1/D[u,x] \[Star] Subst[Int[c*(a+b*x)^m,x],x,u] /;
FreeQ[{a,b,c,m},x] && LinearQ[u,x] && NeQ[u,x]


(* ::Code:: *)
Int[(a_./x_)^p_,x_Symbol] :=
  -a*(a/x)^(p-1)/(p-1) /;
FreeQ[{a,p},x] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(a_.*x_^n_)^p_,x_Symbol] :=
  (a*x^n)^p/x^(n*p) \[Star] Int[x^(n*p),x] /;
FreeQ[{a,n,p},x] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[x_^m_.*(a_.*x_^n_)^p_,x_Symbol] :=
  1/(n*a^(Simplify[(m+1)/n]-1)) \[Star] Subst[Int[(a*x)^(Simplify[(m+1)/n]+p-1),x],x,x^n] /;
FreeQ[{a,m,n,p},x] && IntegerQ[Simplify[(m+1)/n]]


(* ::Code:: *)
Int[x_^m_.*(a_.*x_^n_.)^p_,x_Symbol] :=
  1/a^(m/n) \[Star] Int[(a*x^n)^(p+m/n),x] /;
FreeQ[{a,m,n,p},x] && IntegerQ[m/n] && LtQ[p*m/n,0]


(* ::Code:: *)
Int[x_^m_.*(a_.*x_^n_.)^p_,x_Symbol] :=
  (a*x^n)^p/x^(n*p) \[Star] Int[x^(m+n*p),x] /;
FreeQ[{a,m,n,p},x]


(* ::Code:: *)
Int[a_,x_Symbol] :=
   a*x /;
FreeQ[a,x]


(* ::Code:: *)
Int[-Fx_,x_Symbol] :=
  Identity[-1] \[Star] Int[Fx,x]


(* ::Code:: *)
Int[Complex[0,a_]*Fx_,x_Symbol] :=
  Complex[Identity[0],a] \[Star] Int[Fx,x] /;
FreeQ[a,x] && EqQ[a^2,1]


(* ::Code:: *)
Int[a_*Fx_,x_Symbol] :=
  a \[Star] Int[Fx,x] /;
FreeQ[a,x] && Not[MatchQ[Fx, b_*Gx_ /; FreeQ[b,x]]]


(* ::Code:: *)
Int[u_.*(a_.*x_)^m_.*(b_.*x_^i_.)^p_.*(c_.*x_^j_.)^q_.*(d_.*x_^k_.)^r_.,x_Symbol] :=
  (b*x^i)^p*(c*x^j)^q*(d*x^k)^r/(a*x)^(i*p+j*q+k*r) \[Star] Int[u*(a*x)^(m+i*p+j*q+k*r),x] /;
FreeQ[{a,b,c,d,i,j,k,m,p,q,r},x]


(* ::Code:: *)
Int[u_.*(a_.*x_)^m_.*(b_.*x_^i_.)^p_.*(c_.*x_^j_.)^q_.,x_Symbol] :=
  (b*x^i)^p*(c*x^j)^q/(a*x)^(i*p+j*q) \[Star] Int[u*(a*x)^(m+i*p+j*q),x] /;
FreeQ[{a,b,c,i,j,m,p,q},x]


(* ::Code:: *)
Int[u_.*(a_.*x_)^m_.*(b_.*x_^i_.)^p_,x_Symbol] :=
  b^IntPart[p]*(b*x^i)^FracPart[p]/(a^(i*IntPart[p])*(a*x)^(i*FracPart[p])) \[Star] Int[u*(a*x)^(m+i*p),x] /;
FreeQ[{a,b,i,m,p},x] && IntegerQ[i] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[u_.*(a_.*x_)^m_.*(b_.*x_^i_.)^p_,x_Symbol] :=
  (b*x^i)^p/(a*x)^(i*p) \[Star] Int[u*(a*x)^(m+i*p),x] /;
FreeQ[{a,b,i,m,p},x] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[u_.*(a_.*x_^m_)^p_.*(b_.*x_^n_)^q_.*(c_.*x_^k_)^r_.,x_Symbol] :=
  (a*x^m)^p*(b*x^n)^q*(c*x^k)^r/x^(m*p+n*q+k*r) \[Star] Int[u*x^(m*p+n*q+k*r),x] /;
FreeQ[{a,b,c,m,n,k,p,q,r},x]


(* ::Code:: *)
Int[u_.*(a_.*x_^m_)^p_.*(b_.*x_^n_)^q_.,x_Symbol] :=
  a^IntPart[p]*b^IntPart[q]*(a*x^m)^FracPart[p]*(b*x^n)^FracPart[q]/x^(m*FracPart[p]+n*FracPart[q]) \[Star] Int[u*x^(m*p+n*q),x] /;
FreeQ[{a,b,m,n,p,q},x]


(* ::Code:: *)
Int[u_.*(a_.*x_^m_)^p_,x_Symbol] :=
  a^IntPart[p]*(a*x^m)^FracPart[p]/x^(m*FracPart[p]) \[Star] Int[u*x^(m*p),x] /;
FreeQ[{a,m,p},x] && Not[IntegerQ[p]]



