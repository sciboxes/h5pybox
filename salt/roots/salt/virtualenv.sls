libblas-dev:
  pkg:
    - installed

liblapack-dev:
  pkg:
    - installed

libgfortran3:
  pkg:
    - installed

libhdf5-dev:
  pkg:
    - installed

virtualenv:
  pip.installed:
    - require:
      - pkg: python-pip

numpy_virtualenv:
  virtualenv.managed:
    - name: /home/vagrant/env/
    - user: vagrant
    - no_chown: True
    - cwd: /home/vagrant/src
    - system_site_packages: False
    - requirements: /home/vagrant/src/requirements.txt
    - verbose: True
    - require:
      - pip: virtualenv
      - pkg: libblas-dev
      - pkg: liblapack-dev
      - pkg: libgfortran3
      - pkg: libhdf5-dev

