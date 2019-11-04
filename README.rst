Herosheet Project
===================
Definition
----------
This project was created as an amateur idea, a group of friends
willing to gather information from their HeroQuest games on an
non-official, non-profit web.

Technology
----------
The Herosheet website is written in Ruby on Sinatra_ with a fake-DB in YAML_,
using Bootstrap_ as HTML web framework with Slim_ (lightweight template engine).

.. _Sinatra: http://www.sinatrarb.com/
.. _Bootstrap: http://getbootstrap.com/
.. _YAML: http://yaml.org/
.. _Slim: http://slim-lang.com/

QA Dashboard
============

Architecture
------------
+----------------+------------------+
| **Technology** | **Release date** |
+================+==================+
| |ruby|         | 2019/04/17       |
+----------------+------------------+

.. |ruby| image:: https://img.shields.io/static/v1.svg?logo=ruby&label=ruby&message=v.2.6.5&color=red
   :target: https://www.ruby-lang.org/en/news/2019/10/01/ruby-2-6-5-released/

Vulnerabilities Report
----------------------
+--------------+-------------------+
| **Platform** | **Badge**         |
+==============+===================+
| snyk         | |Vulnerabilities| |
+--------------+-------------------+

.. |Vulnerabilities| image:: https://snyk.io/test/github/borja/herocalf/badge.svg
   :target: https://snyk.io/test/github/borja/herocalf

Build Status
------------

+--------------+-------------------+
| **Platform** | **Badge**         |
+==============+===================+
| Travis CI    | |Travis Status|   |
+--------------+-------------------+
| Circle CI    | |CircleCi Status| |
+--------------+-------------------+
| CodeShip     | |CodeShip|        |
+--------------+-------------------+
| Appveyor     | |Appveyor|        |
+--------------+-------------------+
| Scrutinizer  | |ScrutCI|         |
+--------------+-------------------+

.. |Travis Status| image:: https://travis-ci.org/borja/herocalf.svg?branch=master
   :target: https://travis-ci.org/borja/herocalf
.. |CircleCi Status| image:: https://circleci.com/gh/borja/herocalf.svg?style=shield
   :target: https://circleci.com/gh/borja/herocalf
.. |CodeShip| image:: https://app.codeship.com/projects/62d62e60-2116-0136-eafd-669e1e370d60/status?branch=master
   :target: https://codeship.com/projects/285831
.. |Appveyor| image:: https://ci.appveyor.com/api/projects/status/1idf8cg04yjmowgx?svg=true
   :target: https://ci.appveyor.com/project/borja/herocalf
.. |ScrutCI| image:: https://scrutinizer-ci.com/g/borja/herocalf/badges/build.png?b=master
   :target: https://scrutinizer-ci.com/g/borja/herocalf/build-status/master

Deployment Status
-----------------
+------------------------+-----------------+
| **Production Website** | |Heroku Status| |
+------------------------+-----------------+
| **Project model**      | |Gemnasium|     |
+------------------------+-----------------+

.. |Gemnasium| image:: https://gemnasium.com/borja/herocalf.svg
   :target: https://gemnasium.com/borja/herocalf
.. |Heroku Status| image:: http://heroku-badge.herokuapp.com/?app=heroquest&style=flat&svg=1
   :target: http://heroquest.herokuapp.com/

Quality Grades
--------------
+--------------+----------------+-------------------+
| Platform     | Grade          | Coverage          |
+==============+================+===================+
| Code Climate | |Code Climate| | |CC Coverage|     |
+--------------+----------------+-------------------+
| Codacy       | |Codacy Badge| | |Codacy Coverage| |
+--------------+----------------+-------------------+
| CodeBeat     | |CodeBeat|     |  Not set yet      |
+--------------+----------------+-------------------+
| Coveralls    |                | |Coveralls|       |
+--------------+----------------+-------------------+
| CodeCov      |                | |CodeCov|         |
+--------------+----------------+-------------------+
| Scrutinizer  | |Scrutinizer|  | |ScrutCov|        |
+--------------+----------------+-------------------+
| SonarCloud   | |Sonarcloud|   |                   |
+--------------+----------------+-------------------+

.. |Code Climate| image:: https://codeclimate.com/github/borja/herocalf/badges/gpa.svg
   :target: https://codeclimate.com/github/borja/herocalf
.. |Codacy Badge| image:: https://api.codacy.com/project/badge/Grade/f2559f1e733d4a4c854fdcc84804c047
   :target: https://www.codacy.com/app/borja/herocalf?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=borja/herocalf&amp;utm_campaign=Badge_Grade
.. |CC Coverage| image:: https://codeclimate.com/github/borja/herocalf/badges/coverage.svg
   :target: https://codeclimate.com/github/borja/herocalf/coverage
.. |Codacy Coverage| image:: https://api.codacy.com/project/badge/Coverage/f2559f1e733d4a4c854fdcc84804c047
   :target: https://www.codacy.com/app/borja/herocalf?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=borja/herocalf&amp;utm_campaign=Badge_Coverage
.. |Coveralls| image:: https://coveralls.io/repos/github/borja/herocalf/badge.svg?branch=master
   :target: https://coveralls.io/github/borja/herocalf?branch=master
.. |CodeCov| image:: https://codecov.io/gh/borja/herocalf/branch/master/graph/badge.svg
  :target: https://codecov.io/gh/borja/herocalf
.. |Scrutinizer| image:: https://scrutinizer-ci.com/g/borja/herocalf/badges/quality-score.png?b=master
  :target: https://scrutinizer-ci.com/g/borja/herocalf/
.. |ScrutCov| image:: https://scrutinizer-ci.com/g/borja/herocalf/badges/coverage.png?b=master
  :target: https://scrutinizer-ci.com/g/borja/herocalf/
.. |CodeBeat| image:: https://codebeat.co/badges/92dcb70d-4a69-4d0f-a39b-5043b1fd4b56
  :target: https://codebeat.co/projects/github-com-borja-herocalf-master
.. |Sonarcloud| image:: https://sonarcloud.io/api/project_badges/measure?project=borja_herocalf&metric=alert_status
  :target: https://sonarcloud.io/dashboard?id=borja_herocalf

Documentation
-------------
+------------------------+------------------+-----------------------------------------------------+
| Platform               | Badge            | Description                                         |
+========================+==================+=====================================================+
| **Inline Docs**        | |Inline docs|    | *Evaluation of the project's documentation (chunk)* |
+------------------------+------------------+-----------------------------------------------------+
| **Read the Docs**      | |readthedocs|    | *Sphinx HTML documentation*                         |
+------------------------+------------------+-----------------------------------------------------+
| **CII Best Practices** | |Best Practices| | *FLOSS Best practices of this project*              |
+------------------------+------------------+-----------------------------------------------------+

.. |Inline docs| image:: http://inch-ci.org/github/borja/herocalf.svg
   :target: http://inch-ci.org/github/borja/herocalf
.. |readthedocs| image:: https://readthedocs.org/projects/herocalf/badge/?version=latest
   :target: http://herocalf.readthedocs.io/es/latest/?badge=latest
.. |Best Practices| image:: https://bestpractices.coreinfrastructure.org/projects/1637/badge
   :target: https://bestpractices.coreinfrastructure.org/projects/1637

Non-supported building platforms
--------------------------------
+-------------+------------+-------------------------------+
| Platform    | Badge      | Issue                         |
+=============+============+===============================+
| Semaphore   | |Semaphore|| *Ruby >v.2.6.1 not supported* |
+-------------+------------+-------------------------------+

.. |Semaphore| image:: https://semaphoreci.com/api/v1/borja/herocalf/branches/master/shields_badge.svg
   :target: https://semaphoreci.com/borja/herocalf

DIY & Manual Configuration
==========================
+---------------------+-----------------+-------------------------------+
| **PasS**:           | |Heroku Deploy| | *1 click to deploy*           |
+---------------------+-----------------+-------------------------------+
| **Docker Registry** | |DockerHub|     | *Docker image repository*     |
+---------------------+-----------------+-------------------------------+

Just click the heroku button to start a new website.
(your-app-name.herokuapp.com) Enjoy!

.. |DockerHub| image:: https://img.shields.io/badge/%E2%86%91_DockerHub-borjamartin/herocalf-blue.svg
   :target: https://hub.docker.com/r/borjamartin/herocalf/
.. |Heroku Deploy| image:: https://img.shields.io/badge/%E2%86%91_Deploy_to-Heroku-7056bf.svg
   :target: https://heroku.com/deploy

Running this application locally
----------------------------------
To run this application locally, run:

.. code:: console

    bundle install
    bundle exec ruby -S rackup -w config.ru
