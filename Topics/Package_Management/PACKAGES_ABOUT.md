# Package Management

Learning Objectives

- Explain why software package managment systems are necessary
- Understand the function of both binary and source packages
- Enumerate the main available package management systems
- Understand why two levels of utilities are needed: 
one that deals with just bare packages, and one that deals with dependencies among packages
- Explain how creating your own package enhances the controls you have over exactly what goes in software and how
it is installed
- Understand the role of source control system, and fit in particular

Key Words:

Repositiories


## Package Management Systems

Allows systems administrators to automate installing, upgrading, configuring and removing software packages in a known, predictable and consistent manner.

- Gather and compress associated software files into a single package, which may require one or more other package to be installed first
- Allow for easy software installation or removeal 
- Can verify file integrity via an internal database
- Can authenticate the origin of packages
- Facilitate upgades
- Group packages by logical features
- Manage dependencies between packages

Features:

- Automation
- Scalability
- Repeatability and predictability
- Security and auditing

Packages come in serveral types:

- Binary
- Source
- Architecture
- Meta-packages

Two levels to packaging systems:

- Low Level Utility (rpm, dpkg)
- High Level Utility (yum, dnfm apt)

