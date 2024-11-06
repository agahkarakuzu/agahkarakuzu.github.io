---
authors:
- admin
bio: ""
email: "agahkarakuzu@gmail.com"
name: Agah Karakuzu
organizations:
- name: "Polytechnique Montréal"
  url: ""
role: "Biomedical Engineer, PhD"
social:
- icon: envelope
  icon_pack: fas
  link: '#contact'
- icon: x-twitter
  icon_pack: fab
  link: https://x.com/agahkarakuzu
- icon: google-scholar
  icon_pack: ai
  link: https://scholar.google.com/citations?user=tVvzWVMAAAAJ&hl=en&oi=ao
- icon: github
  icon_pack: fab
  link: https://github.com/agahkarakuzu
superuser: true
user_groups:
- Researchers
- Visitors
---

<div style="display: flex; flex-wrap: nowrap; gap: 4px;">
  <img src="https://img.shields.io/badge/MRI%20Physics-8A2BE2" />
  <img src="https://img.shields.io/badge/Medical%20Imaging-33efff" />
  <img src="https://img.shields.io/badge/qMRI%20Metrology-e20c4e" />
  <img src="https://img.shields.io/badge/Open–source%20Software-ff5d33" />
</div>
<div style="display: flex; flex-wrap: nowrap; gap: 4px;margin-top: 4px;margin-bottom: 10px;">
  <img src="https://img.shields.io/badge/Data%20Standards-3389ff" />
  <img src="https://img.shields.io/badge/Reproducible%20Science-10c34e" />
  <img src="https://img.shields.io/badge/Workflows-c31084" />
  <img src="https://img.shields.io/badge/Biomechanics-cfe20c" />
</div>


I am a Postdoctoral Research Associate at [NeuroPoly Lab](https://neuro.polymtl.ca) at [Polytechnique Montreal](https://www.polymtl.ca/) and a Junior Fellow of the [ISMRM](https://ismrm.org). I have a background in MRI physics, software development, biomedical applications of signal theory, and musculoskeletal biomechanics. 

My current research focuses on developing end-to-end measurement workflows for advanced quantitative MRI (qMRI) applications in neuroimaging, including multiparametric mapping and biophysics-driven microstructural imaging. _My primary motivation is to elevate qMRI to a metrological standard, enabling the quantification of measurement uncertainty within a reproducible multi-vendor framework._ 

This rigorous aim necessitates addressing the issue of reproducibility through a layered process, with each following research theme contributing to a comprehensive solution.

<details>
  <summary>1. <b>Hardware Integration - Vendor-neutral pulse sequences</b></summary>

Multicenter MRI data becomes vulnerable to overfitting when the variability caused by differences between scanners is captured by (deep learning, biophysical, or signal representation) models.

<details>
  <summary>See further context</summary>
  <i>Clinical MRI scanners commonly used in research are not designed as precise measurement devices. However, it is possible to relate raw MRI signals to specific physical properties by estimating numerical parameters from a set of MR images. Since such "quantitative" approach is not the intended use of commercially available scanners, relying on vendor-provided acquisition software (i.e., pulse sequences) can significantly compromise the reliability of these measurements, undermining the clinical value of imaging biomarkers.</i>
</details>

Vendor-neutral pulse sequence development is an emerging open-source approach that offers an alternative to relying on proprietary vendor-native sequences and acquisition controllers. I am interested in applying this approach to standardize acquisitions for various MRI applications (primarily qMRI) with the goal of minimizing non-biological variability at the signal source across scanners from different vendors (e.g., `Siemens`, `GE`, `Philips`, and `Canon`).

<center>
  <img src="https://qmrlab.org/VENUS/_images/banner.jpg" alt="EMFT" style="width: 80%; height: auto;">
</center>

I have experience developing vendor-neutral sequences using both [RTHawk](https://vista.ai/products/research-rthawk/) (`JavaScript`, `C++`) and [Pulseq](https://pulseq.github.io) (`MATLAB`, `Python`) platforms.

#### [🔗](https://doi.org/10.1002/mrm.29292) Relevant article in MRM

**⭐️ Significance** _First empirical evidence supporting the use of vendor-neutral acquisitions to reduce measurement variability across scanners from different vendors._

<details>
      <summary> GitHub Repositories</summary>
      <ul>
          <li>
              <img src="https://img.shields.io/badge/-e20c4e?&logo=javascript&logoColor=white" alt="JavaScript logo">
              <a href="https://github.com/qmrlab/mt_sat">Magnetization transfer and T1 mapping sequence</a>
          </li>
          <li>
              <img src="https://img.shields.io/badge/-e20c4e?&logo=javascript&logoColor=white" alt="JavaScript logo">
              <a href="https://github.com/qmrlab/b1_afi">AFI B1 mapping sequence</a>
          </li>
          <li>
              <img src="https://img.shields.io/badge/-e20c4e?&logo=javascript&logoColor=white" alt="JavaScript logo">
              <a href="https://github.com/qmrlab/physical">PHYSICAL calibration sequence</a>
          </li>
          <li>
              <img src="https://img.shields.io/badge/-e20c4e?&logo=octave&logoColor=white" alt="Octave logo">
              <a href="https://github.com/agahkarakuzu/pulseq-mp2rage">MP2RAGE pulseq</a>
          </li>
      </ul>
  </details>
  <details>
      <summary> 🖇️ Other Resources</summary>
      <ul>
          <li>
              <a href="https://qmrlab.org/VENUS/">Interactive publication with live compute</a>
          </li>
          <li>
              <a href="https://osf.io/5n3cu/">Dataset</a>
          </li>
          <li>
              <a href="https://blog.ismrm.org/2023/03/10/qa-with-agah-karakuzu-and-nikola-stikov">MRM Editor's pick interview</a>
          </li>
      </ul>
  </details>
</details>
<details>
  <summary>2. <b>Signals and Models - Unified Parameter Estimation Implementations</b></summary>

Whether based on MRI signal representations (e.g., Bloch equation that governs a multi-echo spin-echo experiment) or biophysical models (e.g., restricted intracellular diffusion), most qMRI parameter estimation and correction methods are developed and maintained in-house.

<details>
  <summary>See further context</summary>
  <i>Analytical variability encompasses differences in i) algorithms, ii) software, iii) software versions, and iv) the computational environments in which the software is executed. Such variability can lead to discrepancies between quantitative parameters that are intended to be identical. This underscores the need for a community-driven, collaborative codebase that facilitates the integration of new tools and enables systematic comparisons.


In addition to this variability, degeneracies in parameter estimation must be well understood within the context of the specific qMRI experiment. To address this, simulations and real-world applications should be able to use the same models to assess the accuracy and robustness of parameter estimation, ensuring consistency across different studies and improving the reproducibility of qMRI results.</i>
</details>

  <center>
    <img src="https://www.researchgate.net/profile/Agah-Karakuzu/publication/345922515/figure/fig1/AS:962163275468800@1606409009008/qMRLab-is-an-open-source-software-for-quantitative-MRI-analysis-It-provides-a-myriad-of.ppm" alt="EMFT" style="width: 80%; height: auto;">
  </center>
<br>

To address this challenge, I developed [qMRLab](https://qmrlab.org), an open-source software package offering a comprehensive suite of qMRI methods for data fitting, simulation, and protocol optimization. qMRLab consolidates diverse qMRI implementations into a single platform, enhancing accessibility through extensive documentation, online executable notebooks, a user-friendly graphical interface, interactive tutorials, and informative blog posts.

#### [🔗](https://doi.org/10.21105/joss.02343) Relevant article in JOSS

**⭐️ Significance:** The most popular qMRI toolbox on GitHub, with 157 stargazers, standardizing over 24 qMRI methods across 8 different categories. 

<details>
      <summary> GitHub Repositories</summary>
      <ul>
          <li>
              <img src="https://img.shields.io/badge/-ff5d33?&logo=octave&logoColor=white" alt="JavaScript logo">
              <a href="https://github.com/qmrlab/qMRLab">qMRLab main codebase</a>
          </li>
            <li>
              <img src="https://img.shields.io/badge/-ff5d33?&logo=github&logoColor=white" alt="JavaScript logo">
              <a href="https://github.com/qmrlab">qMRLab GitHub Organization</a>
          </li>
      </ul>
  </details>
  <details>
      <summary>🖇️ Other Resources</summary>
      <ul>
          <li>
              <a href="https://qmrlab.org/">qMRLab website</a>
          </li>
          <li>
              <a href="https://osf.io/tmdfu/wiki/home/">Example datasets</a>
          </li>
          <li>
              <a href="https://qmrlab.readthedocs.io">Documentation</a>
          </li>
      </ul>
  </details>
</details>

<details>
  <summary>3. <b>Reproducibility - End-to-end Workflows that are Portable</b></summary>

Navigating a diverse range of open-source toolboxes for image reconstruction, as well as pre- and post-processing is needed to facilitate the practical use of vendor-neutral acquisitions.

<details>
  <summary>See further context</summary>
  <i>The number of open-source software toolboxes grows in proportion to the complexity of image reconstruction algorithms and the model implementations required for parameter estimation. Most of these toolboxes are developed by independent labs with varying research interests. Unlike industry-grade software, which adheres to established standards for interoperability with other software, many of these open-source toolboxes lack standardized protocols, making integration and consistency challenging across different platforms and applications.</i>
</details>

These workflows, written in DSL2, are designed so that each step producing a derivative is defined as an independent process, mapped to a corresponding container provided by qMRFlow. By adhering to data standards for both k-space and image data, and leveraging Nextflow's platform-agnostic executors, these workflows can be seamlessly deployed across cloud environments, high-performance computing (HPC) systems at scale, or workstations on any operating system at the scanner site.
</details>
       
<details>
  <summary>4. <b>Interoperability - An International qMRI Data Standard</b></summary>

To enhance data accessibility, promote large-scale collaborations, and accelerate progress in any application that could benefit from qMRI, I led the development of [qMRI-BIDS](https://bids-specification.readthedocs.io/en/stable/), collaborating with over 30 researchers worldwide. The initial version of this BIDS extension standardized the units, metadata, and naming conventions of 18 parametric maps, and since then, other researchers have actively contributed data descriptions for new qMRI methods. This collaborative effort establishes qMRI-BIDS as a common ground for achieving interoperability in qMRI, enabling seamless integration and comparison of data across diverse studies and platforms.

qMRI-BIDS has unified access to thousands of datasets through platforms such as Zenodo, the Open Science Framework, and OpenNeuro. 

Additionally, it has inspired enhancements to open-source data converters, such as [ezBIDS](https://brainlife.io/ezbids/), which now support converting DICOM images generated by various vendors according to the qMRI-BIDS specifications.

By offering free and standardized access to these datasets, qMRI-BIDS has transformed data sharing practices and promoted equity in the field, enabling researchers worldwide to benefit from valuable resources, regardless of their local infrastructure. 

#### [🔗](https://www.nature.com/articles/s41597-022-01571-4) Relevant article in Scientific Data

</details>
<br>

As the lead developer of [NeuroLibre](https://neurolibre.org), I've architected and implemented a complex distributed system that handles reproducible scientific computing at scale. 

It is the first open-source platform to offer reproducibility as a service for academic publications by enabling articles to integrate and reuse each other's code and data. This creates an innovative paradigm for researchers to build upon one another's work (e.g., [paperception](https://agah.dev/paperception)). 

<details>
  <summary><b>Details of the NeuroLibre tech stack</b></summary>

<ul style="list-style-type: none; padding-left: 0;">
  <li style="margin-bottom: 15px;">
    <strong>Container Orchestration:</strong> Designed and managed a Kubernetes cluster on bare metal to power our BinderHub deployment
  </li>
  <li style="margin-bottom: 15px;">
    <strong>Cloud Infrastructure:</strong> Implemented multi-cloud architecture using OpenStack & OpenNebula with Terraform for infrastructure as code
  </li>
  <li style="margin-bottom: 15px;">
    <strong>Web Development:</strong> Built full-stack applications using:
    <ul style="list-style-type: none; padding-left: 20px; margin-top: 5px;">
      <li>Ruby on Rails for our editorial management system</li>
      <li>Flask/Celery/NGINX stack for high-performance API services</li>
      <li>Modern CI/CD practices with extensive GitHub Actions workflows</li>
    </ul>
  </li>
  <li style="margin-bottom: 15px;">
    <strong>DevOps:</strong> Established monitoring, logging, and automated deployment pipelines
  </li>
  <li style="margin-bottom: 15px;">
    <strong>System Design:</strong> Architected scalable solutions for compute-intensive scientific workloads
  </li>
</ul>

</details> 
<br>

I hold a second PhD in Biomedical Engineering from [Bogazici University](https://www.boun.edu.tr/en), where I developed novel MRI methods for the assessment of muscle structure and function, in-vivo (thesis [here](https://tez.yok.gov.tr/UlusalTezMerkezi/TezGoster?key=WBc656i315e2eV6-EZV1oieEoX22ihUylnjE_lEdgA5ILgVkGM2WFCTni-MKgmzM)). 

<details>
  <summary><b>Research from my second PhD</b></summary>
  
  Epimuscular myofascial force transmission ([EMFT](https://pubmed.ncbi.nlm.nih.gov/20577061/)) is a novel theory on how muscles transmit force through inter- and extramuscular medium, in addition to the myotendinous structures.

  In-vivo studies on this theory is challenging due to the lack of non-invasive methods that can encode mechanical information at different joint angles or during muscle contraction. 

  To address this challenge, I developed a novel MRI method that combines diffusion tensor imaging (DTI) tractography with non-rigid registration of high-resolution anatomical images to quantify strain in the muscle fiber direction. One of the key findings from this work is heteregeneous strain distribution in the muscle fiber direction, which is a hallmark of EMFT effects, as well as an important determinant of muscle range of active force production.

<center>
  <img src="https://ars.els-cdn.com/content/image/1-s2.0-S1751616123000346-ga1_lrg.jpg" alt="EMFT" style="width: 80%; height: auto;">
</center>
  
  Such comprehensive understanding of in-vivo mechanical interactions is crucial for the development of novel rehabilitation protocols and assistive devices. This knowledge has important implications both in sports science for optimizing athletic performance and in clinical conditions such as spastic cerebral palsy, where altered mechanical tissue properties significantly impact movement.

  My recent work explores how qMRI can reveal key microstructural properties of muscle tissue, including extracellular volume fraction and collagen content. This multi-parametric approach provides complementary insights into the relationship between muscle structure and function.


  <summary><b>Articles</b></summary>
  <ul>
    <li><a href="https://www.sciencedirect.com/science/article/abs/pii/S0021929017301896">Submaximal plantarflexion</a></li>
    <li><a href="https://www.sciencedirect.com/science/article/abs/pii/S1751616116302077">Passive knee extension</a></li>
    <li><a href="https://www.sciencedirect.com/science/article/abs/pii/S1751616123000346">Robustness analysis</a></li>
  </ul>
  </details>
<br>

I am an active contributor to several open-source neuroimaging initiatives ([BrainHack](https://brainhack.org/), [MRathon](https://mrathon.github.io), [Open MR](https://openmrbenelux.github.io/), [MRI Together](https://mritogether.esmrmb.org/), [OHBM OSR](https://ohbm.github.io/osr)), as well as to science communication/publication platforms ([MRM Highlights](https://blog.ismrm.org/category/highlights/), [OHBM Blog](https://www.ohbmbrainmappingblog.com), and [ISMRM MR Pulse](https://blog.ismrm.org/), [MRPub](https://ismrm.github.io/mrpub)).


