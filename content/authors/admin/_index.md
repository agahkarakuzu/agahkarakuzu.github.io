---
authors:
- admin
bio: ""
education: ""
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
  <summary>1. <b>Hardware Integration - Standardized MRI Acquisitions</b></summary>

Multicenter MRI data becomes vulnerable to overfitting when the variability caused by differences between scanners is captured by (deep learning, biophysical, or signal representation) models.

<details>
  <summary>See further context</summary>
  <i>Clinical MRI scanners commonly used in research are not designed as precise measurement devices. However, it is possible to relate raw MRI signals to specific physical properties by estimating numerical parameters from a set of MR images. Since such "quantitative" approach is not the intended use of commercially available scanners, relying on vendor-provided acquisition software (i.e., pulse sequences) can significantly compromise the reliability of these measurements, undermining the clinical value of imaging biomarkers.</i>
</details>

Vendor-neutral pulse sequence development is an emerging open-source approach that offers an alternative to relying on proprietary vendor-native sequences and acquisition controllers. I am interested in applying this approach to standardize acquisitions for various MRI applications (primarily qMRI) with the goal of minimizing non-biological variability at the signal source across scanners from different vendors (e.g., `Siemens`, `GE`, `Philips`, and `Canon`).

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
  <summary><b>4. Interoperability - An International qMRI Data Standard</b></summary>

I am the lead developer of https://neurolibre.org, an open-source platform for publishing reproducible preprints written in [MyST Markdown](https://mystmd.org/) and [Jupyter Book](https://jupyterbook.org/en/stable/intro.html). It is quite an involved project which helped me gain development experience with the following tools: 
* Kubernetes on baremetal (to host BinderHub)
* Ruby on Rails (OpenJournals editorial manager) 
* OpenStack & OpenNebula
* Terraform
* Flask/Celery/NGINX based full-stack server
* GitHub actions development
* Academic publishing workflows  


</details>
<br>

To extend the scope of transparency from scanner to publication, I am leading the development of [NeuroLibre](https://neurolibre.org), an open-source publication platform that offers reproducibility as a service with cutting-edge authoring tools and live compute.

I am an active contributor to several open-source neuroimaging initiatives ([BrainHack](https://brainhack.org/), [MRathon](https://mrathon.github.io), [Open MR](https://openmrbenelux.github.io/), [MRI Together](https://mritogether.esmrmb.org/), [OHBM OSR](https://ohbm.github.io/osr)), as well as to science communication/publication platforms ([MRM Highlights](https://blog.ismrm.org/category/highlights/), [OHBM Blog](https://www.ohbmbrainmappingblog.com), and [ISMRM MR Pulse](https://blog.ismrm.org/), [MRPub](https://ismrm.github.io/mrpub)).