-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 03:17 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_details`
--

CREATE TABLE `blog_details` (
  `b_id` int(50) NOT NULL,
  `b_title` text NOT NULL,
  `b_min_read` int(11) NOT NULL,
  `b_description` text NOT NULL,
  `b_date` datetime NOT NULL DEFAULT current_timestamp(),
  `b_category` int(11) NOT NULL,
  `category_tag` varchar(50) NOT NULL,
  `b_user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_details`
--

INSERT INTO `blog_details` (`b_id`, `b_title`, `b_min_read`, `b_description`, `b_date`, `b_category`, `category_tag`, `b_user_id`) VALUES
(1, 'The automorphisms of Petits algebras', 5, 'Let $ sigma$ be an automorphism of a field $K$ with fixed field $F$. We study  the automorphisms of nonassociative unital algebras which are canonical  generalizations of the associative quotient algebras $K[t; sigma]/fK[t; sigma]$  obtained when the twisted polynomial $f in K[t; sigma]$ is invariant, and were  first defined by Petit. We compute all their automorphisms if $ sigma$ commutes  with all automorphisms in $( rm Aut)_F(K)$ and $n geq m-1$, where $n$ is the  order of $ sigma$ and $m$ the degree of $f$,and obtain partial results for  $n<m-1$. In the case where $K/F$ is a finite Galois field extension, we obtain  more detailed information on the structure of the automorphism groups of these  nonassociative unital algebras over $F$. We also briefly investigate when two  such algebras are isomorphic.', '2023-10-05 11:17:01', 7, 'Other', 13),
(980, 'Big Universe, Big Data: Machine Learning and Image Analysis for Astronomy', 5, 'Astrophysics and cosmology are rich with data. The advent of wide-area  digital cameras on large aperture telescopes has led to ever more ambitious  surveys of the sky. Data volumes of entire surveys a decade ago can now be  acquired in a single night and real-time analysis is often desired. Thus,  modern astronomy requires big data know-how, in particular it demands highly  efficient machine learning and image analysis algorithms. But scalability is  not the only challenge: Astronomy applications touch several current machine  learning research questions, such as learning from biased data and dealing with  label and measurement noise. We argue that this makes astronomy a great domain  for computer science research, as it pushes the boundaries of data analysis. In  the following, we will present this exciting application area for data  scientists. We will focus on exemplary results, discuss main challenges, and  highlight some recent methodological advancements in machine learning and image  analysis triggered by astronomical applications.', '2023-10-05 11:17:01', 7, 'Other', 13),
(21033, 'Asymptotic and numerical analysis of a porous medium model for transpiration-driven sap flow in trees', 5, 'We develop a 3D porous medium model for sap flow within a tree stem, which  consists of a nonlinear parabolic partial differential equation with a suitable  transpiration source term. Using an asymptotic analysis, we derive approximate  series solutions for the liquid saturation and sap velocity for a general class  of coefficient functions. Several important non-dimensional parameters are  identified that can be used to characterize various flow regimes. We  investigate the relative importance of stem aspect ratio versus anisotropy in  the sapwood hydraulic conductivity, and how these two effects impact the radial  and vertical components of sap velocity. The analytical results are validated  by means of a second-order finite volume discretization of the governing  equations, and comparisons are drawn to experimental results on Norway spruce  trees.', '2022-11-14 02:30:01', 1, 'Travel', 1),
(21034, 'Risk Estimators for Choosing Regularization Parameters in Ill-Posed Problems - Properties and Limitations', 5, 'This paper discusses the properties of certain risk estimators recently  proposed to choose regularization parameters in ill-posed problems. A simple  approach is Steins unbiased risk estimator (SURE), which estimates the risk in  the data space, while a recent modification (GSURE) estimates the risk in the  space of the unknown variable. It seems intuitive that the latter is more  appropriate for ill-posed problems, since the properties in the data space do  not tell much about the quality of the reconstruction. We provide theoretical  studies of both estimators for linear Tikhonov regularization in a finite  dimensional setting and estimate the quality of the risk estimators, which also  leads to asymptotic convergence results as the dimension of the problem tends  to infinity. Unlike previous papers, who studied image processing problems with  a very low degree of ill-posedness, we are interested in the behavior of the  risk estimators for increasing ill-posedness. Interestingly, our theoretical  results indicate that the quality of the GSURE risk can deteriorate  asymptotically for ill-posed problems, which is confirmed by a detailed  numerical study. The latter shows that in many cases the GSURE estimator leads  to extremely small regularization parameters, which obviously cannot stabilize  the reconstruction. Similar but less severe issues with respect to robustness  also appear for the SURE estimator, which in comparison to the rather  conservative discrepancy principle leads to the conclusion that regularization  parameter choice based on unbiased risk estimation is not a reliable procedure  for ill-posed problems. A similar numerical study for sparsity regularization  demonstrates that the same issue appears in nonlinear variational  regularization approaches.', '2023-02-14 11:00:01', 2, 'Food', 401),
(21035, 'Analyzing Effects of Seasonal Variations in Wind Generation and Load on Voltage Profiles', 5, 'This paper presents a methodology for building daily profiles of wind  generation and load for different seasons to assess their impacts on voltage  violations. The measurement-based wind models showed very high accuracy when  validated against several years of actual wind power data. System load modeling  was carried out by analyzing the seasonal trends that occur in residential,  commercial, and industrial loads. When the proposed approach was implemented on  the IEEE 118-bus system, it could identify violations in bus voltage profiles  that the season-independent model could not capture. The results of the  proposed approach are expected to provide better visualization of the problems  that seasonal variations in wind power and load might cause to the electric  power grid.', '2018-02-28 04:17:01', 3, 'Technology', 79),
(21036, 'Imitation Learning from Imperfect Demonstration', 5, 'Imitation learning (IL) aims to learn an optimal policy from demonstrations.  However, such demonstrations are often imperfect since collecting optimal ones  is costly. To effectively learn from imperfect demonstrations, we propose a  novel approach that utilizes confidence scores, which describe the quality of  demonstrations. More specifically, we propose two confidence-based IL methods,  namely two-step importance weighting IL (2IWIL) and generative adversarial IL  with imperfect demonstration and confidence (IC-GAIL). We show that confidence  scores given only to a small portion of sub-optimal demonstrations  significantly improve the performance of IL both theoretically and empirically.', '2023-07-28 03:17:01', 4, 'Health', 960),
(21037, 'Some Bounds on Binary LCD Codes', 5, 'A linear code with a complementary dual (or LCD code) is defined to be a  linear code $C$ whose dual code $C^( perp)$ satisfies $C  cap C^( perp)$=  $ left (  mathbf(0) right ) $. Let $LCD([)n,k(])$ denote the maximum of  possible values of $d$ among $[n,k,d]$ binary LCD codes. We give exact values  of $LCD([)n,k(])$ for $1  le k  le n  le 12$.  We also show that $LCD[n,n-i]=2$ for any $i geq2$ and $n geq2^(i)$.  Furthermore, we show that $LCD[n,k] leq LCD[n,k-1]$ for $k$ odd and  $LCD[n,k] leq LCD[n,k-2]$ for $k$ even.', '2021-08-05 07:17:01', 5, 'Nature', 503),
(21038, 'Control-Oriented Learning on the Fly', 5, 'This paper focuses on developing a strategy for control of systems whose  dynamics are almost entirely unknown. This situation arises naturally in a  scenario where a system undergoes a critical failure. In that case, it is  imperative to retain the ability to satisfy basic control objectives in order  to avert an imminent catastrophe. A prime example of such an objective is the  reach-avoid problem, where a system needs to move to a certain state in a  constrained state space. To deal with limitations on our knowledge of system  dynamics, we develop a theory of myopic control. The primary goal of myopic  control is to, at any given time, optimize the current direction of the system  trajectory, given solely the information obtained about the system until that  time. We propose an algorithm that uses small perturbations in the control  effort to learn local dynamics while simultaneously ensuring that the system  moves in a direction that appears to be nearly optimal, and provide hard bounds  for its suboptimality. We additionally verify the usefulness of the algorithm  on a simulation of a damaged aircraft seeking to avoid a crash, as well as on  an example of a Van der Pol oscillator.', '2023-09-05 05:17:01', 6, 'Fitness', 702),
(21040, 'Matrix Completion from $O(n)$ Samples in Linear Time', 5, 'We consider the problem of reconstructing a rank-$k$ $n  times n$ matrix $M$  from a sampling of its entries. Under a certain incoherence assumption on $M$  and for the case when both the rank and the condition number of $M$ are  bounded, it was shown in  cite(CandesRecht2009, CandesTao2010, keshavan2010,  Recht2011, Jain2012, Hardt2014) that $M$ can be recovered exactly or  approximately (depending on some trade-off between accuracy and computational  complexity) using $O(n  ,  text(poly)( log n))$ samples in super-linear time  $O(n^(a)  ,  text(poly)( log n))$ for some constant $a  geq 1$.  In this paper, we propose a new matrix completion algorithm using a novel  sampling scheme based on a union of independent sparse random regular bipartite  graphs. We show that under the same conditions w.h.p. our algorithm recovers an  $ epsilon$-approximation of $M$ in terms of the Frobenius norm using $O(n   log^2(1/ epsilon))$ samples and in linear time $O(n  log^2(1/ epsilon))$. This  provides the best known bounds both on the sample complexity and computational  complexity for reconstructing (approximately) an unknown low-rank matrix.  The novelty of our algorithm is two new steps of thresholding singular values  and rescaling singular vectors in the application of the  vanilla  alternating  minimization algorithm. The structure of sparse random regular graphs is used  heavily for controlling the impact of these regularization steps.', '2023-10-05 11:17:01', 7, 'Other', 13),
(21041, 'Ingestion, Indexing and Retrieval of High-Velocity Multidimensional Sensor Data on a Single Node', 5, 'Multidimensional data are becoming more prevalent, partly due to the rise of  the Internet of Things (IoT), and with that the need to ingest and analyze data  streams at rates higher than before. Some industrial IoT applications require  ingesting millions of records per second, while processing queries on recently  ingested and historical data. Unfortunately, existing database systems suited  to multidimensional data exhibit low per-node ingestion performance, and even  if they can scale horizontally in distributed settings, they require large  number of nodes to meet such ingest demands. For this reason, in this paper we  evaluate a single-node multidimensional data store for high-velocity sensor  data. Its design centers around a two-level indexing structure, wherein the  global index is an in-memory R*-tree and the local indices are serialized  kd-trees. This study is confined to records with numerical indexing fields and  range queries, and covers ingest throughput, query response time, and storage  footprint. We show that the adopted design streamlines data ingestion and  offers ingress rates two orders of magnitude higher than those of Percona  Server, SQLite, and Druid. Our prototype also reports query response times  comparable to or better than those of Percona Server and Druid, and compares  favorably in terms of storage footprint. In addition, we evaluate a kd-tree  partitioning based scheme for grouping incoming streamed data records. Compared  to a random scheme, this scheme produces less overlap between groups of  streamed records, but contrary to what we expected, such reduced overlap does  not translate into better query performance. By contrast, the local indices  prove much more beneficial to query performance. We believe the experience  reported in this paper is valuable to practitioners and researchers alike  interested in building database systems for high-velocity multidimensional  data.', '2023-07-28 03:17:01', 4, 'Health', 2),
(21043, 'Ball in double hoop: demonstration model for numerical optimal control', 5, 'Ball and hoop system is a well-known model for the education of linear  control systems. In this paper, we have a look at this system from another  perspective and show that it is also suitable for demonstration of more  advanced control techniques. In contrast to the standard use, we describe the  dynamics of the system at full length; in addition to the mode where the ball  rolls on the (outer) hoop we also consider the mode where the ball drops out of  the hoop and enters a free-fall mode. Furthermore, we add another (inner) hoop  in the center upon which the ball can land from the free-fall mode. This  constitutes another mode of the hybrid description of the system. We present  two challenging tasks for this model and show how they can be solved by  trajectory generation and stabilization. We also describe how such a model can  be built and experimentally verify the validity of our approach solving the  proposed tasks.', '2022-11-14 02:30:01', 1, 'Travel', 1),
(21044, 'Forecasting market states', 5, 'We propose a novel methodology to define, analyse and forecast market states.  In our approach market states are identified by a reference sparse precision  matrix and a vector of expectation values. In our procedure each multivariate  observation is associated to a given market state accordingly to a penalized  likelihood maximization. The procedure is made computationally very efficient  and can be used with a large number of assets. We demonstrate that this  procedure successfully classifies different states of the markets in an  unsupervised manner. In particular, we describe an experiment with one hundred  log-returns and two states in which the methodology automatically associates  one state to periods with average positive returns and the other state to  periods with average negative returns, therefore discovering spontaneously the  common classification of  markets. In another experiment, with  again one hundred log-returns and two states, we demonstrate that this  procedure can be efficiently used to forecast off-sample future market states  with significant prediction accuracy. This methodology opens the way to a range  of applications in risk management and trading strategies where the correlation  structure plays a central role.', '2023-02-14 11:00:01', 2, 'Food', 401),
(21045, 'Planetary Ring Dynamics -- The Streamline Formalism -- 2. Theory of Narrow Rings and Sharp Edges', 5, 'The present material covers the features of large scale ring dynamics in  perturbed flows that were not addressed in part 1 (astro-ph/1606.007277); this  includes an extensive coverage of all kinds of ring modes dynamics (except  density waves which have been covered in part 1), the origin of ring  eccentricities and mode amplitudes, and the issue of ring/gap confinement. This  still leaves aside a number of important dynamical issues relating to the ring  small scale structure, most notably the dynamics of self-gravitational wakes,  of local viscous overstabilities and of ballistic transport processes.  As this material is designed to be self-contained, there is some 30% overlap  with part 1. This work constitutes a preprint of Chapter 11 of the forthcoming  Cambridge University book on rings (Planetary Ring Systems, Matt Tiscareno and  Carl Murray, eds).', '2018-02-28 04:17:01', 3, 'Technology', 79),
(21046, 'Parallel Streaming Wasserstein Barycenters', 5, 'Efficiently aggregating data from different sources is a challenging problem,  particularly when samples from each source are distributed differently. These  differences can be inherent to the inference task or present for other reasons:  sensors in a sensor network may be placed far apart, affecting their individual  measurements. Conversely, it is computationally advantageous to split Bayesian  inference tasks across subsets of data, but data need not be identically  distributed across subsets. One principled way to fuse probability  distributions is via the lens of optimal transport: the Wasserstein barycenter  is a single distribution that summarizes a collection of input measures while  respecting their geometry. However, computing the barycenter scales poorly and  requires discretization of all input distributions and the barycenter itself.  Improving on this situation, we present a scalable, communication-efficient,  parallel algorithm for computing the Wasserstein barycenter of arbitrary  distributions. Our algorithm can operate directly on continuous input  distributions and is optimized for streaming data. Our method is even robust to  nonstationary input distributions and produces a barycenter estimate that  tracks the input measures over time. The algorithm is semi-discrete, needing to  discretize only the barycenter estimate. To the best of our knowledge, we also  provide the first bounds on the quality of the approximate barycenter as the  discretization becomes finer. Finally, we demonstrate the practical  effectiveness of our method, both in tracking moving distributions on a sphere,  as well as in a large-scale Bayesian inference task.', '2023-07-28 03:17:01', 4, 'Health', 960),
(21047, 'Lecars visual comparison method to assess the randomness of Bodes law: an answer', 5, 'The usual main objection against any attempt in finding a physical cause for  the planet distance distribution is based on the assumption that similar  distance distribution could be obtained by sequences of random numbers. This  assumption was stated by Lecar in an old paper (27373). We show here how this  assumption is incorrect and how his visual comparison method is inappropriate.', '2021-08-05 07:17:01', 5, 'Nature', 503),
(21048, 'GoDP: Globally optimized dual pathway system for facial landmark localization in-the-wild', 5, 'Facial landmark localization is a fundamental module for pose-invariant face  recognition. The most common approach for facial landmark detection is cascaded  regression, which is composed of two steps: feature extraction and facial shape  regression. Recent methods employ deep convolutional networks to extract robust  features for each step, while the whole system could be regarded as a deep  cascaded regression architecture. In this work, instead of employing a deep  regression network, a Globally Optimized Dual-Pathway (GoDP) deep architecture  is proposed to identify the target pixels through solving a cascaded pixel  labeling problem without resorting to high-level inference models or complex  stacked architecture. The proposed end-to-end system relies on distance-aware  softmax functions and dual-pathway proposal-refinement architecture. Results  show that it outperforms the state-of-the-art cascaded regression-based methods  on multiple in-the-wild face alignment databases. The model achieves 1.84  normalized mean error (NME) on the AFLW database, which outperforms 3DDFA by  61.8%. Experiments on face identification demonstrate that GoDP, coupled with  DPM-headhunter, is able to improve rank-1 identification rate by 44.2% compared  to Dlib toolbox on a challenging database.', '2023-09-05 05:17:01', 6, 'Fitness', 702),
(21050, 'Cell growth rate dictates the onset of glass to fluid-like transition and long time super-diffusion in an evolving cell colony', 5, 'Collective migration dominates many phenomena, from cell movement in living  systems to abiotic self-propelling particles. Focusing on the early stages of  tumor evolution, we enunciate the principles involved in cell dynamics and  highlight their implications in understanding similar behavior in seemingly  unrelated soft glassy materials and possibly chemokine-induced migration of  CD8$^(+)$ T cells. We performed simulations of tumor invasion using a minimal  three dimensional model, accounting for cell elasticity and adhesive cell-cell  interactions as well as cell birth and death to establish that cell growth  rate-dependent tumor expansion results in the emergence of distinct topological  niches. Cells at the periphery move with higher velocity perpendicular to the  tumor boundary, while motion of interior cells is slower and isotropic. The  mean square displacement, $ Delta(t)$, of cells exhibits glassy behavior at  times comparable to the cell cycle time, while exhibiting super-diffusive  behavior, $ Delta (t)  approx t^( alpha)$ ($ alpha > 1$), at longer times. We  derive the value of $ alpha  approx 1.33$ using a field theoretic approach  based on stochastic quantization. In the process we establish the universality  of super-diffusion in a class of seemingly unrelated non-equilibrium systems.  Super diffusion at long times arises only if there is an imbalance between cell  birth and death rates. Our findings for the collective migration, which also  suggests that tumor evolution occurs in a polarized manner, are in quantitative  agreement with ( it in vitro) experiments. Although set in the context of tumor  invasion the findings should also hold in describing collective motion in  growing cells and in active systems where creation and annihilation of  particles play a role.', '2023-10-05 11:17:01', 7, 'Other', 13),
(21051, 'Distributed Average Tracking for Lipschitz-Type Nonlinear Dynamical Systems', 5, 'In this paper, a distributed average tracking problem is studied for  Lipschitz-type nonlinear dynamical systems. The objective is to design  distributed average tracking algorithms for locally interactive agents to track  the average of multiple reference signals. Here, in both the agents and the  reference signals dynamics, there is a nonlinear term satisfying the  Lipschitz-type condition. Three types of distributed average tracking  algorithms are designed. First, based on state-dependent-gain designing  approaches, a robust distributed average tracking algorithm is developed to  solve distributed average tracking problems without requiring the same initial  condition. Second, by using a gain adaption scheme, an adaptive distributed  average tracking algorithm is proposed in this paper to remove the requirement  that the Lipschitz constant is known for agents. Third, to reduce chattering  and make the algorithms easier to implement, a continuous distributed average  tracking algorithm based on a time-varying boundary layer is further designed  as a continuous approximation of the previous discontinuous distributed average  tracking algorithms.', '2023-07-28 03:17:01', 4, 'Health', 2),
(21053, 'A Potapov-type approach to a truncated matricial Stieltjes-type power moment problem', 5, 'The paper gives a parametrization of the solution set of a matricial  Stieltjes-type truncated power moment problem in the non-degenerate and  degenerate cases. The key role plays the solution of the corresponding system  of Potapovs fundamental matrix inequalities.', '2022-11-14 02:30:01', 1, 'Travel', 1),
(21054, 'The scaling limit of the KPZ equation in space dimension 3 and higher', 5, 'We study in the present article the Kardar-Parisi-Zhang (KPZ) equation $$   partial_t h(t,x)=  u Delta h(t,x)+ lambda |  abla h(t,x)|^2 + sqrt(D) ,   eta(t,x),  qquad (t,x) in mathbb(R)_+ times mathbb(R)^d $$ in $d ge 3$  dimensions in the perturbative regime, i.e. for $ lambda>0$ small enough and a  smooth, bounded, integrable initial condition $h_0=h(t=0, cdot)$. The forcing  term $ eta$ in the right-hand side is a regularized space-time white noise. The  exponential of $h$ -- its so-called Cole-Hopf transform -- is known to satisfy  a linear PDE with multiplicative noise. We prove a large-scale diffusive limit  for the solution, in particular a time-integrated heat-kernel behavior for the  covariance in a parabolic scaling.  The proof is based on a rigorous implementation of K. Wilsons  renormalization group scheme. A double cluster/momentum-decoupling expansion  allows for perturbative estimates of the bare resolvent of the Cole-Hopf linear  PDE in the small-field region where the noise is not too large, following the  broad lines of Iagolnitzer-Magnen. Standard large deviation estimates for  $ eta$ make it possible to extend the above estimates to the large-field  region. Finally, we show, by resumming all the by-products of the expansion,  that the solution $h$ may be written in the large-scale limit (after a suitable  Galilei transformation) as a small perturbation of the solution of the  underlying linear Edwards-Wilkinson model ($ lambda=0$) with renormalized  coefficients $  u_(eff)=  u+O( lambda^2),D_(eff)=D+O( lambda^2)$.', '2023-02-14 11:00:01', 2, 'Food', 401),
(21055, 'Beyond Free Riding: Quality of Indicators for Assessing Participation in Information Sharing for Threat Intelligence', 5, 'Threat intelligence sharing has become a growing concept, whereby entities  can exchange patterns of threats with each other, in the form of indicators, to  a community of trust for threat analysis and incident response. However,  sharing threat-related information have posed various risks to an organization  that pertains to its security, privacy, and competitiveness. Given the  coinciding benefits and risks of threat information sharing, some entities have  adopted an elusive behavior of  free-riding  so that they can acquire the  benefits of sharing without contributing much to the community. So far,  understanding the effectiveness of sharing has been viewed from the perspective  of the amount of information exchanged as opposed to its quality. In this  paper, we introduce the notion of quality of indicators ( qoi) for the  assessment of the level of contribution by participants in information sharing  for threat intelligence. We exemplify this notion through various metrics,  including correctness, relevance, utility, and uniqueness of indicators. In  order to realize the notion of  qoi, we conducted an empirical study and taken  a benchmark approach to define quality metrics, then we obtained a reference  dataset and utilized tools from the machine learning literature for quality  assessment. We compared these results against a model that only considers the  volume of information as a metric for contribution, and unveiled various  interesting observations, including the ability to spot low quality  contributions that are synonym to free riding in threat information sharing.', '2018-02-28 04:17:01', 3, 'Technology', 79),
(21056, 'On the Design of LQR Kernels for Efficient Controller Learning', 5, 'Finding optimal feedback controllers for nonlinear dynamic systems from data  is hard. Recently, Bayesian optimization (BO) has been proposed as a powerful  framework for direct controller tuning from experimental trials. For selecting  the next query point and finding the global optimum, BO relies on a  probabilistic description of the latent objective function, typically a  Gaussian process (GP). As is shown herein, GPs with a common kernel choice can,  however, lead to poor learning outcomes on standard quadratic control problems.  For a first-order system, we construct two kernels that specifically leverage  the structure of the well-known Linear Quadratic Regulator (LQR), yet retain  the flexibility of Bayesian nonparametric learning. Simulations of uncertain  linear and nonlinear systems demonstrate that the LQR kernels yield superior  learning performance.', '2023-07-28 03:17:01', 4, 'Health', 960),
(21057, 'How does propaganda influence the opinion dynamics of a population ?', 5, 'The evolution of opinions in a population of individuals who constantly  interact with a common source of user-generated content (i.e. the internet) and  are also subject to propaganda is analyzed using computer simulations. The  model is based on the bounded confidence approach. In the absence of  propaganda, computer simulations show that the online population as a whole is  either fragmented, polarized or in perfect harmony on a certain issue or  ideology depending on the uncertainty of individuals in accepting opinions not  closer to theirs. On applying the model to simulate radicalization, a  proportion of the online population, subject to extremist propaganda radicalize  depending on their pre-conceived opinions and opinion uncertainty. It is found  that an optimal counter propaganda that prevents radicalization is not  necessarily centrist.', '2021-08-05 07:17:01', 5, 'Nature', 503),
(21058, 'Explicit Solution for Constrained Stochastic Linear-Quadratic Control with Multiplicative Noise', 5, 'We study in this paper a class of constrained linear-quadratic (LQ) optimal  control problem formulations for the scalar-state stochastic system with  multiplicative noise, which has various applications, especially in the  financial risk management. The linear constraint on both the control and state  variables considered in our model destroys the elegant structure of the  conventional LQ formulation and has blocked the derivation of an explicit  control policy so far in the literature. We successfully derive in this paper  the analytical control policy for such a class of problems by utilizing the  state separation property induced from its structure. We reveal that the  optimal control policy is a piece-wise affine function of the state and can be  computed off-line efficiently by solving two coupled Riccati equations. Under  some mild conditions, we also obtain the stationary control policy for infinite  time horizon. We demonstrate the implementation of our method via some  illustrative examples and show how to calibrate our model to solve dynamic  constrained portfolio optimization problems.', '2023-09-05 05:17:01', 6, 'Fitness', 702),
(21060, 'Geophysical tests for habitability in ice-covered ocean worlds', 5, 'Geophysical measurements can reveal the structure of icy ocean worlds and  cycling of volatiles. The associated density, temperature, sound speed, and  electrical conductivity of such worlds thus characterizes their habitability.  To explore the variability and correlation of these parameters, and to provide  tools for planning and data analyses, we develop 1-D calculations of internal  structure, which use available constraints on the thermodynamics of aqueous  MgSO$_4$, NaCl (as seawater), and NH$_3$, water ices, and silicate content.  Limits in available thermodynamic data narrow the parameter space that can be  explored: insufficient coverage in pressure, temperature, and composition for  end-member salinities of MgSO$_4$ and NaCl, and for relevant water ices; and a  dearth of suitable data for aqueous mixtures of Na-Mg-Cl-SO$_4$-NH$_3$. For  Europa, ocean compositions that are oxidized and dominated by MgSO$_4$, vs  reduced (NaCl), illustrate these gaps, but also show the potential for  diagnostic and measurable combinations of geophysical parameters. The  low-density rocky core of Enceladus may comprise hydrated minerals, or anydrous  minerals with high porosity comparable to Earths upper mantle. Titans ocean  must be dense, but not necessarily saline, as previously noted, and may have  little or no high-pressure ice at its base. Ganymedes silicious interior is  deepest among all known ocean worlds, and may contain multiple phases of  high-pressure ice, which will become buoyant if the ocean is sufficiently  salty. Callistos likely near-eutectic ocean cannot be adequately modeled using  available data. Callisto may also lack high-pressure ices, but this cannot be  confirmed due to uncertainty in its moment of inertia.', '2023-10-05 11:17:01', 7, 'Other', 13),
(202720, 'Driver Identification Using Automobile Sensor Data from a Single Turn', 5, 'As automotive electronics continue to advance, cars are becoming more and  more reliant on sensors to perform everyday driving operations. These sensors  are omnipresent and help the car navigate, reduce accidents, and provide  comfortable rides. However, they can also be used to learn about the drivers  themselves. In this paper, we propose a method to predict, from sensor data  collected at a single turn, the identity of a driver out of a given set of  individuals. We cast the problem in terms of time series classification, where  our dataset contains sensor readings at one turn, repeated several times by  multiple drivers. We build a classifier to find unique patterns in each  individuals driving style, which are visible in the data even on such a short  road segment. To test our approach, we analyze a new dataset collected by AUDI  AG and Audi Electronics Venture, where a fleet of test vehicles was equipped  with automotive data loggers storing all sensor readings on real roads. We show  that turns are particularly well-suited for detecting variations across  drivers, especially when compared to straightaways. We then focus on the 12  most frequently made turns in the dataset, which include rural, urban, highway  on-ramps, and more, obtaining accurate identification results and learning  useful insights about driver behavior in a variety of settings.', '2023-10-05 11:17:01', 7, 'Other', 13),
(202721, 'Same-different problems strain convolutional neural networks', 5, 'The robust and efficient recognition of visual relations in images is a  hallmark of biological vision. We argue that, despite recent progress in visual  recognition, modern machine vision algorithms are severely limited in their  ability to learn visual relations. Through controlled experiments, we  demonstrate that visual-relation problems strain convolutional neural networks  (CNNs). The networks eventually break altogether when rote memorization becomes  impossible, as when intra-class variability exceeds network capacity. Motivated  by the comparable success of biological vision, we argue that feedback  mechanisms including attention and perceptual grouping may be the key  computational components underlying abstract visual reasoning. ', '2023-07-28 03:17:01', 4, 'Health', 2),
(202723, 'The Inner Structure of Time-Dependent Signals', 5, 'This paper shows how a time series of measurements of an evolving system can  be processed to create an inner time series that is unaffected by any  instantaneous invertible, possibly nonlinear transformation of the  measurements. An inner time series contains information that does not depend on  the nature of the sensors, which the observer chose to monitor the system.  Instead, it encodes information that is intrinsic to the evolution of the  observed system. Because of its sensor-independence, an inner time series may  produce fewer false negatives when it is used to detect events in the presence  of sensor drift. Furthermore, if the observed physical system is comprised of  non-interacting subsystems, its inner time series is separable; i.e., it  consists of a collection of time series, each one being the inner time series  of an isolated subsystem. Because of this property, an inner time series can be  used to detect a specific behavior of one of the independent subsystems without  using blind source separation to disentangle that subsystem from the others.  The method is illustrated by applying it to: 1) an analytic example; 2) the  audio waveform of one speaker; 3) video images from a moving camera; 4)  mixtures of audio waveforms of two speakers.', '2022-11-14 02:30:01', 1, 'Travel', 1),
(202724, 'Classical properties of the leading eigenstates of quantum dissipative systems', 5, 'By analyzing a paradigmatic example of the theory of dissipative systems --  the classical and quantum dissipative standard map -- we are able to explain  the main features of the decay to the quantum equilibrium state. The classical  isoperiodic stable structures typically present in the parameter space of these  kind of systems play a fundamental role. In fact, we have found that the period  of stable structures that are near in this space determines the phase of the  leading eigenstates of the corresponding quantum superoperator. Moreover, the  eigenvectors show a strong localization on the corresponding periodic orbits  (limit cycles). We show that this sort of scarring phenomenon (an established  property of Hamiltonian and projectively open systems) is present in the  dissipative case and it is of extreme simplicity.', '2023-02-14 11:00:01', 2, 'Food', 401),
(202725, 'Towards Binary-Valued Gates for Robust LSTM Training', 5, 'Long Short-Term Memory (LSTM) is one of the most widely used recurrent  structures in sequence modeling. It aims to use gates to control information  flow (e.g., whether to skip some information or not) in the recurrent  computations, although its practical implementation based on soft gates only  partially achieves this goal. In this paper, we propose a new way for LSTM  training, which pushes the output values of the gates towards 0 or 1. By doing  so, we can better control the information flow: the gates are mostly open or  closed, instead of in a middle state, which makes the results more  interpretable. Empirical studies show that (1) Although it seems that we  restrict the model capacity, there is no performance drop: we achieve better or  comparable performances due to its better generalization ability; (2) The  outputs of gates are not sensitive to their inputs: we can easily compress the  LSTM unit in multiple ways, e.g., low-rank approximation and low-precision  approximation. The compressed models are even better than the baseline models  without compression.', '2018-02-28 04:17:01', 3, 'Technology', 79),
(202726, 'GUB Covers and Power-Indexed formulations for Wireless Network Design', 5, 'We propose a pure 0-1 formulation for the wireless network design problem,  i.e. the problem of configuring a set of transmitters to provide service  coverage to a set of receivers. In contrast with classical mixed integer  formulations, where power emissions are represented by continuous variables, we  consider only a finite set of powers values. This has two major advantages: it  better fits the usual practice and eliminates the sources of numerical problems  which heavily affect continuous models. A crucial ingredient of our approach is  an effective basic formulation for the single knapsack problem representing the  coverage condition of a receiver. This formulation is based on the GUB cover  inequalities introduced by Wolsey (12720) and its core is an extension of the  exact formulation of the GUB knapsack polytope with two GUB constraints. This  special case corresponds to the very common practical situation where only one  major interferer is present. We assess the effectiveness of our formulation by  comprehensive computational results over realistic instances of two typical  technologies, namely WiMAX and DVB-T.', '2023-07-28 03:17:01', 4, 'Health', 960),
(202727, 'Orbital contributions to the electron g-factor in semiconductor nanowires', 5, 'Recent experiments on Majorana fermions in semiconductor nanowires [Albrecht  et al., Nat. 531, 206 (2016)] revealed a surprisingly large electronic Land??  g-factor, several times larger than the bulk value - contrary to the  expectation that confinement reduces the g-factor. Here we assess the role of  orbital contributions to the electron g-factor in nanowires and quantum dots.  We show that an LS coupling in higher subbands leads to an enhancement of the  g-factor of an order of magnitude or more for small effective mass  semiconductors. We validate our theoretical finding with simulations of InAs  and InSb, showing that the effect persists even if cylindrical symmetry is  broken. A huge anisotropy of the enhanced g-factors under magnetic field  rotation allows for a straightforward experimental test of this theory.', '2021-08-05 07:17:01', 5, 'Nature', 503),
(202728, 'Comprehensive routing strategy on multilayer networks', 5, 'Designing an efficient routing strategy is of great importance to alleviate  traffic congestion in multilayer networks. In this work, we design an effective  routing strategy for multilayer networks by comprehensively considering the  roles of nodes local structures in micro-level, as well as the macro-level  differences in transmission speeds between different layers. Both numerical and  analytical results indicate that our proposed routing strategy can reasonably  redistribute the traffic load of the low speed layer to the high speed layer,  and thus the traffic capacity of multilayer networks are significantly enhanced  compared with the monolayer low speed networks. There is an optimal combination  of macro- and micro-level control parameters at which can remarkably alleviate  the congestion and thus maximize the traffic capacity for a given multilayer  network. Moreover, we find that increasing the size and the average degree of  the high speed layer can enhance the traffic capacity of multilayer networks  more effectively. We finally verify that real-world network topology does not  invalidate the results. The theoretical predictions agree well with the  numerical simulations.', '2023-09-05 05:17:01', 6, 'Fitness', 702),
(210273, 'Community Detection on Euclidean Random Graphs', 5, 'We study the problem of community detection (CD) on Euclidean random  geometric graphs where each vertex has two latent variables: a binary community  label and a $ mathbb(R)^d$ valued location label which forms the support of a  Poisson point process of intensity $ lambda$. A random graph is then drawn with  edge probabilities dependent on both the community and location labels. In  contrast to the stochastic block model (SBM) that has no location labels, the  resulting random graph contains many more short loops due to the geometric  embedding. We consider the recovery of the community labels, partial and exact,  using the random graph and the location labels. We establish phase transitions  for both sparse and logarithmic degree regimes, and provide bounds on the  location of the thresholds, conjectured to be tight in the case of exact  recovery. We also show that the threshold of the distinguishability problem,  i.e., the testing between our model and the null model without community labels  exhibits no phase-transition and in particular, does not match the weak  recovery threshold (in contrast to the SBM).', '2023-10-05 11:17:01', 7, 'Other', 13),
(210276, 'A function with support of finite measure and  small  spectrum', 5, 'We construct a function on the real line supported on a set of finite measure  whose spectrum has density zero.', '2023-10-05 11:17:01', 7, 'Other', 13),
(210277, 'Viewpoint Selection for Photographing Architectures', 5, 'This paper studies the problem of how to choose good viewpoints for taking  photographs of architectures. We achieve this by learning from professional  photographs of world famous landmarks that are available on the Internet.  Unlike previous efforts devoted to photo quality assessment which mainly rely  on 2D image features, we show in this paper combining 2D image features  extracted from images with 3D geometric features computed on the 3D models can  result in more reliable evaluation of viewpoint quality. Specifically, we  collect a set of photographs for each of 15 world famous architectures as well  as their 3D models from the Internet. Viewpoint recovery for images is carried  out through an image-model registration process, after which a newly proposed  viewpoint clustering strategy is exploited to validate user viewpoint  preferences when photographing landmarks. Finally, we extract a number of 2D  and 3D features for each image based on multiple visual and geometric cues and  perform viewpoint recommendation by learning from both 2D and 3D features using  a specifically designed SVM-2K multi-view learner, achieving superior  performance over using solely 2D or 3D features. We show the effectiveness of  the proposed approach through extensive experiments. The experiments also  demonstrate that our system can be used to recommend viewpoints for rendering  textured 3D models of buildings for the use of architectural design, in  addition to viewpoint evaluation of photographs and recommendation of  viewpoints for photographing architectures in practice.', '2023-10-05 11:17:01', 7, 'Other', 13),
(212371, 'Conservation of spin supercurrents in superconductors', 5, 'We demonstrate that spin supercurrents are conserved upon transmission  through a conventional superconductor, even in the presence of spin-dependent  scattering by impurities with magnetic moments or spin-orbit coupling. This is  fundamentally different from conventional spin currents, which decay in the  presence of such scattering, and this has important implications for the usage  of superconducting materials in spintronic hybrid structures.', '2023-10-05 11:17:01', 7, 'Other', 13),
(2027274, 'Long short-term memory and learning-to-learn in networks of spiking neurons', 5, 'Recurrent networks of spiking neurons (RSNNs) underlie the astounding  computing and learning capabilities of the brain. But computing and learning  capabilities of RSNN models have remained poor, at least in comparison with  artificial neural networks (ANNs). We address two possible reasons for that.  One is that RSNNs in the brain are not randomly connected or designed according  to simple rules, and they do not start learning as a tabula rasa network.  Rather, RSNNs in the brain were optimized for their tasks through evolution,  development, and prior experience. Details of these optimization processes are  largely unknown. But their functional contribution can be approximated through  powerful optimization methods, such as backpropagation through time (BPTT).  A second major mismatch between RSNNs in the brain and models is that the  latter only show a small fraction of the dynamics of neurons and synapses in  the brain. We include neurons in our RSNN model that reproduce one prominent  dynamical process of biological neurons that takes place at the behaviourally  relevant time scale of seconds: neuronal adaptation. We denote these networks  as LSNNs because of their Long short-term memory. The inclusion of adapting  neurons drastically increases the computing and learning capability of RSNNs if  they are trained and configured by deep learning (BPTT combined with a rewiring  algorithm that optimizes the network architecture). In fact, the computational  performance of these RSNNs approaches for the first time that of LSTM networks.  In addition RSNNs with adapting neurons can acquire abstract knowledge from  prior learning in a Learning-to-Learn (L2L) scheme, and transfer that knowledge  in order to learn new but related tasks from very few examples. We demonstrate  this for supervised learning and reinforcement learning.', '2023-10-05 11:17:01', 7, 'Other', 13),
(2027276, 'Food', 1, 'Food the essential part of life.', '2023-08-02 18:23:09', 0, '', 2023967),
(2027277, 'Seeds for garden', 3, 'Do you grow peas, beans or other legumes in your backyard or garden? Have you ever heard about seed inoculation and how you can use it to produce more yield? Letâ€™s learn about this and get the most out of your plants.\r\n\r\nSeed inoculation can be understood as adding or mixing the useful bacteria to garden seeds. (Farmers also use inoculated seeds on farms!) The purpose of mixing is that correct type of bacteria can establish a successful symbiosis with the plant to fix atmospheric nitrogen for the plant so that you do not have to apply more fertilizer. Inoculation can also create better growth and yield of the crop.\r\n\r\nSeed treatment is a bit different than seed inoculation. Seed treatment is when you expose seed to heat, cold, and soak it in water. Chemicals are then applied that will protect the growing plant from pests or for better seed germination.\r\n\r\nInoculation is important specially if the legume you are planting is in soil where it was not planted in previous years. Then the inoculant will help in increasing the population of bacteria which will act in symbiosis with the plant to fix nitrogen for the plant.', '2023-08-02 18:39:02', 0, '', 2023968);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `cat_name`) VALUES
(1, 'Travel'),
(2, 'Food'),
(3, 'Technology'),
(4, 'Health'),
(5, 'Nature'),
(6, 'Fitness'),
(7, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` int(8) NOT NULL,
  `c_desc` text NOT NULL,
  `c_user_id` int(50) NOT NULL,
  `c_post_id` int(10) NOT NULL,
  `c_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `c_desc`, `c_user_id`, `c_post_id`, `c_date`) VALUES
(1, 'Good!!!', 1, 1, '0000-00-00 00:00:00'),
(3, 'nice', 1, 212371, '2023-08-02 10:33:27'),
(4, 'hjvjyifghvjjuf', 1, 21035, '2023-08-02 11:09:37'),
(5, 'jbjkwwf', 1, 21035, '2023-08-02 11:09:41'),
(6, '', 1, 21035, '2023-08-02 11:11:44'),
(7, 'jbjkwwf', 1, 21035, '2023-08-02 11:12:43'),
(8, '', 1, 21035, '2023-08-02 11:12:49'),
(9, 'jdcnicnlei', 1, 21035, '2023-08-02 11:13:49'),
(10, 'jrngdboksegmk woengkor', 1, 21035, '2023-08-02 11:13:55'),
(11, 'jrngdboksegmk woengkor', 1, 21035, '2023-08-02 11:14:51'),
(12, 'jrngdboksegmk woengkor', 1, 21035, '2023-08-02 11:24:17'),
(13, 'jrngdboksegmk woengkor', 1, 21035, '2023-08-02 11:24:22'),
(14, 'jwfioodflkdf', 1, 21035, '2023-08-02 11:24:27'),
(15, 'jwfioodflkdf', 1, 21035, '2023-08-02 11:24:57'),
(16, 'jwfioodflkdf', 1, 21035, '2023-08-02 11:25:52'),
(17, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:33:28'),
(18, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:36:05'),
(19, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:40:06'),
(20, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:42:32'),
(21, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:43:39'),
(22, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:44:25'),
(23, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:46:45'),
(24, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:47:32'),
(25, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:53:45'),
(26, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:54:02'),
(27, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:55:02'),
(28, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:56:48'),
(29, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:59:00'),
(30, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:59:44'),
(31, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 11:59:56'),
(32, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 12:00:21'),
(33, 'hghvtfcvg fyghvguutuyfg', 1, 2027274, '2023-08-02 12:01:44'),
(34, 'wow', 1, 2027274, '2023-08-02 12:01:52'),
(35, 'wow', 1, 2027274, '2023-08-02 12:02:20'),
(36, 'wow', 1, 2027274, '2023-08-02 12:03:00'),
(37, 'Nice blog', 2023964, 2027274, '2023-08-02 18:08:57'),
(38, 'Liked this one', 2023964, 21060, '2023-08-02 18:09:27'),
(39, 'Liked this one', 2023965, 210277, '2023-08-02 18:12:48'),
(40, 'Please comment on this blog', 2023965, 2027275, '2023-08-02 18:14:18'),
(41, 'Good', 2023967, 212371, '2023-08-02 18:22:03'),
(42, 'Please comment on this blog', 2023967, 2027276, '2023-08-02 18:23:27'),
(43, 'Nice blog', 2023968, 212371, '2023-08-02 18:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `signup_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `date` datetime(6) NOT NULL,
  `location` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`signup_id`, `user_name`, `user_email`, `date`, `location`, `password`) VALUES
(1, 'Nisha Sahu', 'ns@gmail.com', '2023-08-01 11:31:04.131251', 'Raipur', '1'),
(2, 'shekhar', 's@s.com', '2023-08-01 11:31:04.131251', 'Delhi', '1'),
(3, 'Bhawana Verma', ' fd@gmail.com', '2023-08-01 11:31:04.131251', 'Raipur', '$2y$10$8YU'),
(13, 'Rajim Sahu', 'raj@g.com', '2023-08-01 11:31:04.131251', 'Raipur', '$2y$10$52t'),
(15, 'Mahi Sahu', 'mahi@g.com', '2023-08-01 11:31:04.131251', 'Raipur', '$2y$10$gYM'),
(17, 'Princi D\'Cruz', 'p@g.com', '2023-08-01 11:35:32.000000', 'Raipur', '123'),
(58, 'Harley Dodson', 'harleydodsondg@blog.com', '2023-07-27 16:34:26.000000', 'Kinsman, Ohio', '1'),
(79, 'Trent Bullock', 'bullockaplzt@blog.com', '2023-07-27 16:01:55.000000', 'Pakistan', '1'),
(96, 'Tobi Horton', 'tobivnvl@blog.com', '2023-07-27 16:24:25.000000', 'Great Grimsby England', '1'),
(135, 'Verda Quinn', 'verdaquinnil@blog.com', '2023-07-27 15:28:29.000000', 'Kowloon, Hong Kong', '1'),
(149, 'Kandi Baird', 'kandilgl@blog.com', '2023-07-27 15:29:37.000000', 'jln bangka 3a', '1'),
(152, 'Cicely Parsons', 'parsonsmvcpu@blog.com', '2023-07-27 15:33:32.000000', 'Fricken Ocean', '1'),
(223, 'Eulalia Woodard', 'woodardbv@blog.com', '2023-07-27 16:02:16.000000', 'São Paulo - SP', '1'),
(260, 'Frankie Diaz', 'frankiediazzjxv@blog.com', '2023-07-27 16:01:04.000000', 'Chicago', '1'),
(278, 'Margurite Rogers', 'marguritekqkrh@blog.com', '2023-07-27 16:18:42.000000', 'Greensboro, NC', '1'),
(295, 'Willie Harper', 'williezyee@blog.com', '2023-07-27 16:34:41.000000', 'WORLDWIDE BABY', '1'),
(318, 'Maya Patterson', 'mayazgvw@blog.com', '2023-07-27 15:32:48.000000', 'Bournemouth', '1'),
(319, 'Roxana Malone', 'roxanamalonezlr@blog.com', '2023-07-27 16:19:34.000000', 'studio', '1'),
(324, 'Cassidy Becker', 'cassidyuhx@blog.com', '2023-07-27 15:32:50.000000', 'Quezon City / Spain / China', '1'),
(338, 'Warren Harrison', 'warreniob@blog.com', '2023-07-27 16:01:02.000000', 'Stoke on Trent', '1'),
(345, 'Brittni Cameron', 'cameronvjh@blog.com', '2023-07-27 15:32:41.000000', 'Bálsamo - SP - Brasil', '1'),
(389, 'Martha Hill', 'marthahillxip@blog.com', '2023-07-27 16:26:07.000000', 'Sittin PRETTY', '1'),
(401, 'Pat Pittman', 'pittmanld@blog.com', '2023-07-27 15:30:09.000000', 'Brasil - São Paulo/SP', '1'),
(447, 'Chasity Acevedo', 'acevedodemsq@blog.com', '2023-07-27 15:33:02.000000', 'WHERE EVER THE CASH AT', '1'),
(503, 'Roma Stout', 'romastoutzox@blog.com', '2023-07-27 15:58:04.000000', 'Detroit/ Nationwide', '1'),
(512, 'Christal Mcdaniel', 'christalmcdan@blog.com', '2023-07-27 15:57:57.000000', 'Tweeting from the Grave', '1'),
(568, 'Rosaura Cherry', 'rosaurache@blog.com', '2023-07-27 16:09:19.000000', 'Galleria', '1'),
(570, 'Angeline Dean', 'angelinehc@blog.com', '2023-07-27 15:29:08.000000', 'Tampa, Fl', '1'),
(579, 'Jennefer Workman', 'jenneferovraz@blog.com', '2023-07-27 15:32:54.000000', 'CandyLand !', '1'),
(621, 'Lakenya Bean', 'lakenyacjlu@blog.com', '2023-07-27 15:33:05.000000', 'Fricken Ocean', '1'),
(630, 'Lavone Humphrey', 'lavonehump@blog.com', '2023-07-27 16:03:23.000000', ':homenation: :inhome:', '1'),
(642, 'Rowena Solis', 'rowenavm@blog.com', '2023-07-27 15:29:12.000000', 'India', '1'),
(659, 'Chris Hahn', 'hahnctz@blog.com', '2023-07-27 15:30:24.000000', 'Fort Myers, Florida', '1'),
(669, 'Kali Sparks', 'kalisparkscqej@blog.com', '2023-07-27 16:03:50.000000', 'Mexico', '1'),
(702, 'Cyril Branch', 'branchya@blog.com', '2023-07-27 15:33:01.000000', 'The Internet', '1'),
(776, 'Connie Bush', 'bushxbrp@blog.com', '2023-07-27 16:01:27.000000', 'LA California', '1'),
(782, 'Blair Booker', 'bookerqqt@blog.com', '2023-07-27 15:57:56.000000', 'detroit eastside', '1'),
(808, 'Leila Walls', 'wallswzp@blog.com', '2023-07-27 16:02:45.000000', 'Worldwide', '1'),
(815, 'Brandie Meyer', 'meyeryxyp@blog.com', '2023-07-27 15:58:16.000000', 'Califórnia', '1'),
(842, 'Kelly Oneal', 'kellyuzrx@blog.com', '2023-07-27 16:01:46.000000', 'Brazil', '1'),
(848, 'Sheila Marshall', 'sheilamarshal@blog.com', '2023-07-27 16:01:47.000000', 'in the editing room', '1'),
(884, 'Xiomara Chavez', 'xiomarakw@blog.com', '2023-07-27 16:01:46.000000', 'Laredo Tx Baby!', '1'),
(888, 'Sacha Dillard', 'sachadillardhn@blog.com', '2023-07-27 16:00:25.000000', 'Indaiatuba / SP', '1'),
(909, 'Salvatore Pacheco', 'salvatorewn@blog.com', '2023-07-27 16:00:31.000000', 'Cincinnati, OH', '1'),
(960, 'Evelyne Keller', 'evelynewtjkg@blog.com', '2023-07-27 15:33:26.000000', 'ATLANTA', '1'),
(2023053, 'Darron Bullock', 'bullockbtua@blog.com', '2023-07-27 15:57:28.000000', 'Georgiiiia.', '1'),
(2023058, 'Harley Dodson', 'harleydodsondg@blog.com', '2023-07-27 16:34:26.000000', 'Kinsman, Ohio', '1'),
(2023079, 'Trent Bullock', 'bullockaplzt@blog.com', '2023-07-27 16:01:55.000000', '?????g?????', '1'),
(2023096, 'Tobi Horton', 'tobivnvl@blog.com', '2023-07-27 16:24:25.000000', 'Great Grimsby England', '1'),
(2023135, 'Verda Quinn', 'verdaquinnil@blog.com', '2023-07-27 15:28:29.000000', 'Kowloon, Hong Kong', '1'),
(2023149, 'Kandi Baird', 'kandilgl@blog.com', '2023-07-27 15:29:37.000000', 'jln bangka 3a', '1'),
(2023152, 'Cicely Parsons', 'parsonsmvcpu@blog.com', '2023-07-27 15:33:32.000000', 'Fricken Ocean', '1'),
(2023223, 'Eulalia Woodard', 'woodardbv@blog.com', '2023-07-27 16:02:16.000000', 'São Paulo - SP', '1'),
(2023251, 'Starr Whitley', 'starrcez@blog.com', '2023-07-27 15:57:31.000000', 'Nation Of Pinkslam', '1'),
(2023257, 'Sanjuana Martin', 'sanjuanamar@blog.com', '2023-07-27 15:57:32.000000', 'Shaker Heights', '1'),
(2023260, 'Frankie Diaz', 'frankiediazzjxv@blog.com', '2023-07-27 16:01:04.000000', 'Chicago', '1'),
(2023278, 'Margurite Rogers', 'marguritekqkrh@blog.com', '2023-07-27 16:18:42.000000', 'Greensboro, NC', '1'),
(2023295, 'Willie Harper', 'williezyee@blog.com', '2023-07-27 16:34:41.000000', 'WORLDWIDE BABY', '1'),
(2023318, 'Maya Patterson', 'mayazgvw@blog.com', '2023-07-27 15:32:48.000000', 'Bournemouth', '1'),
(2023319, 'Roxana Malone', 'roxanamalonezlr@blog.com', '2023-07-27 16:19:34.000000', 'studio', '1'),
(2023324, 'Cassidy Becker', 'cassidyuhx@blog.com', '2023-07-27 15:32:50.000000', 'Quezon City / Spain / China', '1'),
(2023338, 'Warren Harrison', 'warreniob@blog.com', '2023-07-27 16:01:02.000000', 'Stoke on Trent', '1'),
(2023345, 'Brittni Cameron', 'cameronvjh@blog.com', '2023-07-27 15:32:41.000000', 'Bálsamo - SP - Brasil', '1'),
(2023375, 'Brande Hubbard', 'brandeolmy@blog.com', '2023-07-27 15:56:30.000000', 'Bloemfontein', '1'),
(2023389, 'Martha Hill', 'marthahillxip@blog.com', '2023-07-27 16:26:07.000000', 'Sittin PRETTY', '1'),
(2023401, 'Pat Pittman', 'pittmanld@blog.com', '2023-07-27 15:30:09.000000', 'Brasil - São Paulo/SP', '1'),
(2023447, 'Chasity Acevedo', 'acevedodemsq@blog.com', '2023-07-27 15:33:02.000000', 'WHERE EVER THE CASH AT', '1'),
(2023499, 'Lisha Dunn', 'lishadunn@blog.com', '2023-07-27 15:56:37.000000', 'Far Far Away', '1'),
(2023503, 'Roma Stout', 'romastoutzox@blog.com', '2023-07-27 15:58:04.000000', 'Detroit/ Nationwide', '1'),
(2023512, 'Christal Mcdaniel', 'christalmcdan@blog.com', '2023-07-27 15:57:57.000000', 'Tweeting from the Grave', '1'),
(2023544, 'Chiquita Meyer', 'chiquitadl@blog.com', '2023-07-27 16:02:48.000000', 'New York', '1'),
(2023558, 'George Ochoa', 'georgeochoatx@blog.com', '2023-07-27 15:56:32.000000', 'U.S.A', '1'),
(2023564, 'Rosendo Parsons', 'rosendoparsons@blog.com', '2023-07-27 15:56:38.000000', 'Türkiye', '1'),
(2023565, 'Lavelle Alexander', 'lavellegbkp@blog.com', '2023-07-27 16:02:12.000000', 'Illinois', '1'),
(2023568, 'Rosaura Cherry', 'rosaurache@blog.com', '2023-07-27 16:09:19.000000', 'Galleria', '1'),
(2023570, 'Angeline Dean', 'angelinehc@blog.com', '2023-07-27 15:29:08.000000', 'Tampa, Fl', '1'),
(2023579, 'Jennefer Workman', 'jenneferovraz@blog.com', '2023-07-27 15:32:54.000000', 'CandyLand !', '1'),
(2023585, 'Man Best', 'mansjalp@blog.com', '2023-07-27 15:56:31.000000', 'philippines', '1'),
(2023621, 'Lakenya Bean', 'lakenyacjlu@blog.com', '2023-07-27 15:33:05.000000', 'Fricken Ocean', '1'),
(2023630, 'Lavone Humphrey', 'lavonehump@blog.com', '2023-07-27 16:03:23.000000', ':homenation: :inhome:', '1'),
(2023642, 'Rowena Solis', 'rowenavm@blog.com', '2023-07-27 15:29:12.000000', 'India', '1'),
(2023654, 'Marcelino Stuart', 'marcelinocbkdt@blog.com', '2023-07-27 15:56:54.000000', 'CATANDUVA-SP', '1'),
(2023659, 'Chris Hahn', 'hahnctz@blog.com', '2023-07-27 15:30:24.000000', 'Fort Myers, Florida', '1'),
(2023669, 'Kali Sparks', 'kalisparkscqej@blog.com', '2023-07-27 16:03:50.000000', 'Mexico', '1'),
(2023691, 'An Little', 'littlescgii@blog.com', '2023-07-27 16:02:19.000000', 'Richmond, Va', '1'),
(2023702, 'Cyril Branch', 'branchya@blog.com', '2023-07-27 15:33:01.000000', 'The Internet', '1'),
(2023776, 'Connie Bush', 'bushxbrp@blog.com', '2023-07-27 16:01:27.000000', 'LA California', '1'),
(2023782, 'Blair Booker', 'bookerqqt@blog.com', '2023-07-27 15:57:56.000000', 'detroit eastside', '1'),
(2023795, 'Rolanda Henson', 'rolandahensonqs@blog.com', '2023-07-27 15:56:50.000000', 'Saudade do Iguaçu-pr', '1'),
(2023808, 'Leila Walls', 'wallswzp@blog.com', '2023-07-27 16:02:45.000000', 'Worldwide', '1'),
(2023842, 'Kelly Oneal', 'kellyuzrx@blog.com', '2023-07-27 16:01:46.000000', 'Brazil', '1'),
(2023848, 'Sheila Marshall', 'sheilamarshal@blog.com', '2023-07-27 16:01:47.000000', 'in the editing room', '1'),
(2023875, 'Brandie Meyer', 'meyeryxyp@blog.com', '2023-07-27 15:58:16.000000', 'Califórnia', '1'),
(2023884, 'Xiomara Chavez', 'xiomarakw@blog.com', '2023-07-27 16:01:46.000000', 'Laredo Tx Baby!', '1'),
(2023888, 'Sacha Dillard', 'sachadillardhn@blog.com', '2023-07-27 16:00:25.000000', 'Indaiatuba / SP', '1'),
(2023909, 'Salvatore Pacheco', 'salvatorewn@blog.com', '2023-07-27 16:00:31.000000', 'Cincinnati, OH', '1'),
(2023960, 'Evelyne Keller', 'evelynewtjkg@blog.com', '2023-07-27 15:33:26.000000', 'ATLANTA', '1'),
(2023966, 'Nisha Sahu', 'nsahu.@gmail.com', '0000-00-00 00:00:00.000000', '', '$2y$10$4wH'),
(2023967, 'Nisha Sahu', 'nsahu00@gmail.com', '0000-00-00 00:00:00.000000', '', '$2y$10$kDH'),
(2023968, 'Nisha Sahu', 'ns123@g.com', '0000-00-00 00:00:00.000000', '', '$2y$10$c1e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_details`
--
ALTER TABLE `blog_details`
  ADD PRIMARY KEY (`b_id`);
ALTER TABLE `blog_details` ADD FULLTEXT KEY `b_title` (`b_title`,`b_description`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`signup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_details`
--
ALTER TABLE `blog_details`
  MODIFY `b_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2027278;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `signup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023969;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
