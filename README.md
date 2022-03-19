Pip package for spotcot: https://test.pypi.org/project/spotcot/2.0.2/


# Demo - How to build and upload pip package for spotcot (short)
```
$ cat /etc/centos-release
CentOS Linux release 7.9.2009 (Core)

$ yum install git make -y && git clone https://github.com/riteshja88/spotcot.git && cd spotcot && git checkout pip_riteshja88

$ make build_and_upload_pip

# package is ready to be installed via pypi test repository

```



# Demo - How to install pip package for spotcot (short)
```
$ cat /etc/centos-release
CentOS Linux release 7.9.2009 (Core)

$ yum install -y python3 && python3 -m pip install --index-url https://test.pypi.org/simple/ --extra-index-url https://pypi.python.org/simple/ spotcot

$ spotcot -h
usage: spotcot [-h] -U COT_URL [-S COT_STALE] -k API_KEY [-i INTERVAL]
               [-p PASSWORD]

optional arguments:
  -h, --help            show this help message and exit
  -U COT_URL, --cot_url COT_URL
                        URL to CoT Destination.
  -S COT_STALE, --cot_stale COT_STALE
                        CoT Stale period, in seconds
  -k API_KEY, --api_key API_KEY
                        Spot API Key ("XML Feed Id").
  -i INTERVAL, --interval INTERVAL
                        Spot API Query Interval.
  -p PASSWORD, --password PASSWORD
                        Spot Feed Password for private feeds.
```



# Demo - How to build and upload pip package for spotcot (detailed)
```
$ docker run --rm --name pip-spotcot -it centos:7

[root@3cac1675a46c /]# cat /etc/centos-release
CentOS Linux release 7.9.2009 (Core)

[root@3cac1675a46c /]# yum install -y python3 && python3 -m pip install --index-url https://test.pypi.org/simple/ --extra-index-url https://pypi.python.org/simple/ spotcot
Loaded plugins: fastestmirror, ovl
Determining fastest mirrors
 * base: centos.mirrors.estointernet.in
 * extras: centos.mirrors.estointernet.in
 * updates: centos.mirrors.estointernet.in
base                                                                                                                                                                                                                                   | 3.6 kB  00:00:00
extras                                                                                                                                                                                                                                 | 2.9 kB  00:00:00
updates                                                                                                                                                                                                                                | 2.9 kB  00:00:00
(1/4): base/7/x86_64/group_gz                                                                                                                                                                                                          | 153 kB  00:00:00
(2/4): extras/7/x86_64/primary_db                                                                                                                                                                                                      | 246 kB  00:00:00
(3/4): updates/7/x86_64/primary_db                                                                                                                                                                                                     |  14 MB  00:00:01
(4/4): base/7/x86_64/primary_db                                                                                                                                                                                                        | 6.1 MB  00:00:03
Resolving Dependencies
--> Running transaction check
---> Package python3.x86_64 0:3.6.8-18.el7 will be installed
--> Processing Dependency: python3-libs(x86-64) = 3.6.8-18.el7 for package: python3-3.6.8-18.el7.x86_64
--> Processing Dependency: python3-setuptools for package: python3-3.6.8-18.el7.x86_64
--> Processing Dependency: python3-pip for package: python3-3.6.8-18.el7.x86_64
--> Processing Dependency: libpython3.6m.so.1.0()(64bit) for package: python3-3.6.8-18.el7.x86_64
--> Running transaction check
---> Package python3-libs.x86_64 0:3.6.8-18.el7 will be installed
--> Processing Dependency: libtirpc.so.1()(64bit) for package: python3-libs-3.6.8-18.el7.x86_64
---> Package python3-pip.noarch 0:9.0.3-8.el7 will be installed
---> Package python3-setuptools.noarch 0:39.2.0-10.el7 will be installed
--> Running transaction check
---> Package libtirpc.x86_64 0:0.2.4-0.16.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==============================================================================================================================================================================================================================================================
 Package                                                             Arch                                                    Version                                                           Repository                                                Size
==============================================================================================================================================================================================================================================================
Installing:
 python3                                                             x86_64                                                  3.6.8-18.el7                                                      updates                                                   70 k
Installing for dependencies:
 libtirpc                                                            x86_64                                                  0.2.4-0.16.el7                                                    base                                                      89 k
 python3-libs                                                        x86_64                                                  3.6.8-18.el7                                                      updates                                                  6.9 M
 python3-pip                                                         noarch                                                  9.0.3-8.el7                                                       base                                                     1.6 M
 python3-setuptools                                                  noarch                                                  39.2.0-10.el7                                                     base                                                     629 k

Transaction Summary
==============================================================================================================================================================================================================================================================
Install  1 Package (+4 Dependent packages)

Total download size: 9.3 M
Installed size: 48 M
Downloading packages:
warning: /var/cache/yum/x86_64/7/updates/packages/python3-3.6.8-18.el7.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID f4a80eb5: NOKEY
Public key for python3-3.6.8-18.el7.x86_64.rpm is not installed
(1/5): python3-3.6.8-18.el7.x86_64.rpm                                                                                                                                                                                                 |  70 kB  00:00:00
Public key for libtirpc-0.2.4-0.16.el7.x86_64.rpm is not installed
(2/5): libtirpc-0.2.4-0.16.el7.x86_64.rpm                                                                                                                                                                                              |  89 kB  00:00:00
(3/5): python3-setuptools-39.2.0-10.el7.noarch.rpm                                                                                                                                                                                     | 629 kB  00:00:00
(4/5): python3-libs-3.6.8-18.el7.x86_64.rpm                                                                                                                                                                                            | 6.9 MB  00:00:00
(5/5): python3-pip-9.0.3-8.el7.noarch.rpm                                                                                                                                                                                              | 1.6 MB  00:00:00
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                                                                          30 MB/s | 9.3 MB  00:00:00
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Importing GPG key 0xF4A80EB5:
 Userid     : "CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org>"
 Fingerprint: 6341 ab27 53d7 8a78 a7c2 7bb1 24c6 a8a7 f4a8 0eb5
 Package    : centos-release-7-9.2009.0.el7.centos.x86_64 (@CentOS)
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : libtirpc-0.2.4-0.16.el7.x86_64                                                                                                                                                                                                             1/5
  Installing : python3-setuptools-39.2.0-10.el7.noarch                                                                                                                                                                                                    2/5
  Installing : python3-pip-9.0.3-8.el7.noarch                                                                                                                                                                                                             3/5
  Installing : python3-3.6.8-18.el7.x86_64                                                                                                                                                                                                                4/5
  Installing : python3-libs-3.6.8-18.el7.x86_64                                                                                                                                                                                                           5/5
  Verifying  : libtirpc-0.2.4-0.16.el7.x86_64                                                                                                                                                                                                             1/5
  Verifying  : python3-setuptools-39.2.0-10.el7.noarch                                                                                                                                                                                                    2/5
  Verifying  : python3-libs-3.6.8-18.el7.x86_64                                                                                                                                                                                                           3/5
  Verifying  : python3-3.6.8-18.el7.x86_64                                                                                                                                                                                                                4/5
  Verifying  : python3-pip-9.0.3-8.el7.noarch                                                                                                                                                                                                             5/5

Installed:
  python3.x86_64 0:3.6.8-18.el7

Dependency Installed:
  libtirpc.x86_64 0:0.2.4-0.16.el7                            python3-libs.x86_64 0:3.6.8-18.el7                            python3-pip.noarch 0:9.0.3-8.el7                            python3-setuptools.noarch 0:39.2.0-10.el7

Complete!
WARNING: Running pip install with root privileges is generally not a good idea. Try `__main__.py install --user` instead.
Collecting spotcot
  Downloading https://test-files.pythonhosted.org/packages/0b/35/4c5506beea410c56ad06f90c70230eabfed1dc7a6a4eaeff30c444e04ae7/spotcot-2.0.2-py3-none-any.whl
Collecting aiohttp (from spotcot)
  Downloading https://files.pythonhosted.org/packages/f6/3b/2e3b8a5b19cdceb532c61d83077a09afe1f120cb876fb771b0ce577cc0ea/aiohttp-3.8.1-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl (1.1MB)
    100% |################################| 1.1MB 765kB/s
Collecting pycot>=2.5.0 (from spotcot)
  Downloading https://files.pythonhosted.org/packages/ac/aa/04309e4d27cb5119ca4798c4aaebb6afb7a9ca5e254930be2baacb92a4ca/pycot-2.5.0.tar.gz
Collecting pytak>=3.0.0 (from spotcot)
  Downloading https://files.pythonhosted.org/packages/8e/03/297859ddeb167aec85dc52d3708f21070382441281a5954cc46d61b58bbc/pytak-3.5.2-py3-none-any.whl
Collecting aiosignal>=1.1.2 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/3b/87/fe94898f2d44a93a35d5aa74671ed28094d80753a1113d68b799fab6dc22/aiosignal-1.2.0-py3-none-any.whl
Collecting yarl<2.0,>=1.0 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/fa/cb/8791922f5ec97b9ebec516d062c0e113da963568ffe2c7c04d8187ab7cc3/yarl-1.7.2-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl (270kB)
    100% |################################| 276kB 2.7MB/s
Collecting async-timeout<5.0,>=4.0.0a3 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/d6/c1/8991e7c5385b897b8c020cdaad718c5b087a6626d1d11a23e1ea87e325a7/async_timeout-4.0.2-py3-none-any.whl
Collecting charset-normalizer<3.0,>=2.0 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/06/b3/24afc8868eba069a7f03650ac750a778862dc34941a4bebeb58706715726/charset_normalizer-2.0.12-py3-none-any.whl
Collecting frozenlist>=1.1.1 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/51/3f/f67395ff0090b9f2835838a1f61c3e840baac70fd65bae762095dead48b2/frozenlist-1.2.0-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl (191kB)
    100% |################################| 194kB 4.1MB/s
Collecting asynctest==0.13.0; python_version < "3.8" (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/e8/b6/8d17e169d577ca7678b11cd0d3ceebb0a6089a7f4a2de4b945fe4b1c86db/asynctest-0.13.0-py3-none-any.whl
Collecting idna-ssl>=1.0; python_version < "3.7" (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/46/03/07c4894aae38b0de52b52586b24bf189bb83e4ddabfe2e2c8f2419eec6f4/idna-ssl-1.1.0.tar.gz
Collecting multidict<7.0,>=4.5 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/82/43/81ddfbcfbdfaeaa0624f36dcb715dc8135562377b3292e93b0315a861e92/multidict-5.2.0-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl (159kB)
    100% |################################| 163kB 996kB/s
Collecting attrs>=17.3.0 (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/be/be/7abce643bfdf8ca01c48afa2ddf8308c2308b0c3b239a44e57d020afa0ef/attrs-21.4.0-py2.py3-none-any.whl (60kB)
    100% |################################| 61kB 4.8MB/s
Collecting typing-extensions>=3.7.4; python_version < "3.8" (from aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/45/6b/44f7f8f1e110027cf88956b59f2fad776cca7e1704396d043f89effd3a0e/typing_extensions-4.1.1-py3-none-any.whl
Collecting gexml>=1.0.0 (from pycot>=2.5.0->spotcot)
  Downloading https://files.pythonhosted.org/packages/0a/e8/551e297f7fafb35d3408c213e6d2a01e87c711e091b9bb907742f9cdcdd1/gexml-1.2.0.tar.gz
Collecting idna>=2.0 (from yarl<2.0,>=1.0->aiohttp->spotcot)
  Downloading https://files.pythonhosted.org/packages/04/a2/d918dcd22354d8958fe113e1a3630137e0fc8b44859ade3063982eacd2a4/idna-3.3-py3-none-any.whl (61kB)
    100% |################################| 61kB 4.9MB/s
Installing collected packages: frozenlist, aiosignal, typing-extensions, multidict, idna, yarl, async-timeout, charset-normalizer, asynctest, idna-ssl, attrs, aiohttp, gexml, pycot, pytak, spotcot
  Running setup.py install for idna-ssl ... done
  Running setup.py install for gexml ... done
  Running setup.py install for pycot ... done
Successfully installed aiohttp-3.8.1 aiosignal-1.2.0 async-timeout-4.0.2 asynctest-0.13.0 attrs-21.4.0 charset-normalizer-2.0.12 frozenlist-1.2.0 gexml-1.2.0 idna-3.3 idna-ssl-1.1.0 multidict-5.2.0 pycot-2.5.0 pytak-3.5.2 spotcot-2.0.2 typing-extensions-4.1.1 yarl-1.7.2

[root@3cac1675a46c /]# spotcot -h
usage: spotcot [-h] -U COT_URL [-S COT_STALE] -k API_KEY [-i INTERVAL]
               [-p PASSWORD]

optional arguments:
  -h, --help            show this help message and exit
  -U COT_URL, --cot_url COT_URL
                        URL to CoT Destination.
  -S COT_STALE, --cot_stale COT_STALE
                        CoT Stale period, in seconds
  -k API_KEY, --api_key API_KEY
                        Spot API Key ("XML Feed Id").
  -i INTERVAL, --interval INTERVAL
                        Spot API Query Interval.
  -p PASSWORD, --password PASSWORD
                        Spot Feed Password for private feeds.

[root@3cac1675a46c /]# whereis spotcot
spotcot: /usr/local/bin/spotcot

[root@3cac1675a46c /]# ls -l /usr/local/lib/python3.6/site-packages/
total 208
drwxr-xr-x 2 root root   4096 Mar 19 09:21 __pycache__
drwxr-xr-x 3 root root   4096 Mar 19 09:21 aiosignal
drwxr-xr-x 2 root root   4096 Mar 19 09:21 aiosignal-1.2.0.dist-info
drwxr-xr-x 3 root root   4096 Mar 19 09:21 async_timeout
drwxr-xr-x 2 root root   4096 Mar 19 09:21 async_timeout-4.0.2.dist-info
drwxr-xr-x 3 root root   4096 Mar 19 09:21 asynctest
drwxr-xr-x 2 root root   4096 Mar 19 09:21 asynctest-0.13.0.dist-info
drwxr-xr-x 3 root root   4096 Mar 19 09:21 attr
drwxr-xr-x 3 root root   4096 Mar 19 09:21 attrs
drwxr-xr-x 2 root root   4096 Mar 19 09:21 attrs-21.4.0.dist-info
drwxr-xr-x 5 root root   4096 Mar 19 09:21 charset_normalizer
drwxr-xr-x 2 root root   4096 Mar 19 09:21 charset_normalizer-2.0.12.dist-info
drwxr-xr-x 3 root root   4096 Mar 19 09:21 gexml
drwxr-xr-x 2 root root   4096 Mar 19 09:21 gexml-1.2.0-py3.6.egg-info
drwxr-xr-x 3 root root   4096 Mar 19 09:21 idna
drwxr-xr-x 2 root root   4096 Mar 19 09:21 idna-3.3.dist-info
drwxr-xr-x 2 root root   4096 Mar 19 09:21 idna_ssl-1.1.0-py3.6.egg-info
-rw-r--r-- 1 root root    779 Jul  5  2018 idna_ssl.py
drwxr-xr-x 3 root root   4096 Mar 19 09:21 pycot
drwxr-xr-x 2 root root   4096 Mar 19 09:21 pycot-2.5.0-py3.6.egg-info
drwxr-xr-x 4 root root   4096 Mar 19 09:21 pytak
drwxr-xr-x 2 root root   4096 Mar 19 09:21 pytak-3.5.2.dist-info
drwxr-xr-x 3 root root   4096 Mar 19 09:21 spotcot
drwxr-xr-x 2 root root   4096 Mar 19 09:21 spotcot-2.0.2.dist-info
drwxr-xr-x 2 root root   4096 Mar 19 09:21 typing_extensions-4.1.1.dist-info
-rw-r--r-- 1 root root 107685 Mar 19 09:21 typing_extensions.py

[root@3cac1675a46c /]#
```


# Demo - How to install pip package for spotcot (detailed)
```
$ docker run --rm --name pip-build-spotcot -it centos:7
[root@8c095799e6a5 /]# cat /etc/centos-release
CentOS Linux release 7.9.2009 (Core)

[root@8c095799e6a5 /]# yum install git make -y && git clone https://github.com/riteshja88/spotcot.git && cd spotcot && git checkout pip_riteshja88
Loaded plugins: fastestmirror, ovl
Determining fastest mirrors
 * base: centos.mirrors.estointernet.in
 * extras: centos.mirrors.estointernet.in
 * updates: centos.mirrors.estointernet.in
base                                                                                                                                                                                                                                   | 3.6 kB  00:00:00
extras                                                                                                                                                                                                                                 | 2.9 kB  00:00:00
updates                                                                                                                                                                                                                                | 2.9 kB  00:00:00
(1/4): base/7/x86_64/group_gz                                                                                                                                                                                                          | 153 kB  00:00:00
(2/4): extras/7/x86_64/primary_db                                                                                                                                                                                                      | 246 kB  00:00:00
(3/4): base/7/x86_64/primary_db                                                                                                                                                                                                        | 6.1 MB  00:00:00
(4/4): updates/7/x86_64/primary_db                                                                                                                                                                                                     |  14 MB  00:00:00
Resolving Dependencies
--> Running transaction check
---> Package git.x86_64 0:1.8.3.1-23.el7_8 will be installed
--> Processing Dependency: perl-Git = 1.8.3.1-23.el7_8 for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl >= 5.008 for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: rsync for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(warnings) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(vars) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(strict) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(lib) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Term::ReadKey) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Git) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Getopt::Long) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::stat) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Temp) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Spec) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Path) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Find) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Copy) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Basename) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Exporter) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Error) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: openssh-clients for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: less for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: /usr/bin/perl for package: git-1.8.3.1-23.el7_8.x86_64
---> Package make.x86_64 1:3.82-24.el7 will be installed
--> Running transaction check
---> Package less.x86_64 0:458-9.el7 will be installed
--> Processing Dependency: groff-base for package: less-458-9.el7.x86_64
---> Package openssh-clients.x86_64 0:7.4p1-22.el7_9 will be installed
--> Processing Dependency: openssh = 7.4p1-22.el7_9 for package: openssh-clients-7.4p1-22.el7_9.x86_64
--> Processing Dependency: fipscheck-lib(x86-64) >= 1.3.0 for package: openssh-clients-7.4p1-22.el7_9.x86_64
--> Processing Dependency: libfipscheck.so.1()(64bit) for package: openssh-clients-7.4p1-22.el7_9.x86_64
--> Processing Dependency: libedit.so.0()(64bit) for package: openssh-clients-7.4p1-22.el7_9.x86_64
---> Package perl.x86_64 4:5.16.3-299.el7_9 will be installed
--> Processing Dependency: perl-libs = 4:5.16.3-299.el7_9 for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Socket) >= 1.3 for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Scalar::Util) >= 1.10 for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl-macros for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl-libs for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(threads::shared) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(threads) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(constant) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Time::Local) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Time::HiRes) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Storable) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Socket) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Scalar::Util) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Pod::Simple::XHTML) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Pod::Simple::Search) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Filter::Util::Call) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: perl(Carp) for package: 4:perl-5.16.3-299.el7_9.x86_64
--> Processing Dependency: libperl.so()(64bit) for package: 4:perl-5.16.3-299.el7_9.x86_64
---> Package perl-Error.noarch 1:0.17020-2.el7 will be installed
---> Package perl-Exporter.noarch 0:5.68-3.el7 will be installed
---> Package perl-File-Path.noarch 0:2.09-2.el7 will be installed
---> Package perl-File-Temp.noarch 0:0.23.01-3.el7 will be installed
---> Package perl-Getopt-Long.noarch 0:2.40-3.el7 will be installed
--> Processing Dependency: perl(Pod::Usage) >= 1.14 for package: perl-Getopt-Long-2.40-3.el7.noarch
--> Processing Dependency: perl(Text::ParseWords) for package: perl-Getopt-Long-2.40-3.el7.noarch
---> Package perl-Git.noarch 0:1.8.3.1-23.el7_8 will be installed
---> Package perl-PathTools.x86_64 0:3.40-5.el7 will be installed
---> Package perl-TermReadKey.x86_64 0:2.30-20.el7 will be installed
---> Package rsync.x86_64 0:3.1.2-10.el7 will be installed
--> Running transaction check
---> Package fipscheck-lib.x86_64 0:1.4.1-6.el7 will be installed
--> Processing Dependency: /usr/bin/fipscheck for package: fipscheck-lib-1.4.1-6.el7.x86_64
---> Package groff-base.x86_64 0:1.22.2-8.el7 will be installed
---> Package libedit.x86_64 0:3.0-12.20121213cvs.el7 will be installed
---> Package openssh.x86_64 0:7.4p1-22.el7_9 will be installed
---> Package perl-Carp.noarch 0:1.26-244.el7 will be installed
---> Package perl-Filter.x86_64 0:1.49-3.el7 will be installed
---> Package perl-Pod-Simple.noarch 1:3.28-4.el7 will be installed
--> Processing Dependency: perl(Pod::Escapes) >= 1.04 for package: 1:perl-Pod-Simple-3.28-4.el7.noarch
--> Processing Dependency: perl(Encode) for package: 1:perl-Pod-Simple-3.28-4.el7.noarch
---> Package perl-Pod-Usage.noarch 0:1.63-3.el7 will be installed
--> Processing Dependency: perl(Pod::Text) >= 3.15 for package: perl-Pod-Usage-1.63-3.el7.noarch
--> Processing Dependency: perl-Pod-Perldoc for package: perl-Pod-Usage-1.63-3.el7.noarch
---> Package perl-Scalar-List-Utils.x86_64 0:1.27-248.el7 will be installed
---> Package perl-Socket.x86_64 0:2.010-5.el7 will be installed
---> Package perl-Storable.x86_64 0:2.45-3.el7 will be installed
---> Package perl-Text-ParseWords.noarch 0:3.29-4.el7 will be installed
---> Package perl-Time-HiRes.x86_64 4:1.9725-3.el7 will be installed
---> Package perl-Time-Local.noarch 0:1.2300-2.el7 will be installed
---> Package perl-constant.noarch 0:1.27-2.el7 will be installed
---> Package perl-libs.x86_64 4:5.16.3-299.el7_9 will be installed
---> Package perl-macros.x86_64 4:5.16.3-299.el7_9 will be installed
---> Package perl-threads.x86_64 0:1.87-4.el7 will be installed
---> Package perl-threads-shared.x86_64 0:1.43-6.el7 will be installed
--> Running transaction check
---> Package fipscheck.x86_64 0:1.4.1-6.el7 will be installed
---> Package perl-Encode.x86_64 0:2.51-7.el7 will be installed
---> Package perl-Pod-Escapes.noarch 1:1.04-299.el7_9 will be installed
---> Package perl-Pod-Perldoc.noarch 0:3.20-4.el7 will be installed
--> Processing Dependency: perl(parent) for package: perl-Pod-Perldoc-3.20-4.el7.noarch
--> Processing Dependency: perl(HTTP::Tiny) for package: perl-Pod-Perldoc-3.20-4.el7.noarch
---> Package perl-podlators.noarch 0:2.5.1-3.el7 will be installed
--> Running transaction check
---> Package perl-HTTP-Tiny.noarch 0:0.033-3.el7 will be installed
---> Package perl-parent.noarch 1:0.225-244.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==============================================================================================================================================================================================================================================================
 Package                                                              Arch                                                 Version                                                                Repository                                             Size
==============================================================================================================================================================================================================================================================
Installing:
 git                                                                  x86_64                                               1.8.3.1-23.el7_8                                                       base                                                  4.4 M
 make                                                                 x86_64                                               1:3.82-24.el7                                                          base                                                  421 k
Installing for dependencies:
 fipscheck                                                            x86_64                                               1.4.1-6.el7                                                            base                                                   21 k
 fipscheck-lib                                                        x86_64                                               1.4.1-6.el7                                                            base                                                   11 k
 groff-base                                                           x86_64                                               1.22.2-8.el7                                                           base                                                  942 k
 less                                                                 x86_64                                               458-9.el7                                                              base                                                  120 k
 libedit                                                              x86_64                                               3.0-12.20121213cvs.el7                                                 base                                                   92 k
 openssh                                                              x86_64                                               7.4p1-22.el7_9                                                         updates                                               510 k
 openssh-clients                                                      x86_64                                               7.4p1-22.el7_9                                                         updates                                               655 k
 perl                                                                 x86_64                                               4:5.16.3-299.el7_9                                                     updates                                               8.0 M
 perl-Carp                                                            noarch                                               1.26-244.el7                                                           base                                                   19 k
 perl-Encode                                                          x86_64                                               2.51-7.el7                                                             base                                                  1.5 M
 perl-Error                                                           noarch                                               1:0.17020-2.el7                                                        base                                                   32 k
 perl-Exporter                                                        noarch                                               5.68-3.el7                                                             base                                                   28 k
 perl-File-Path                                                       noarch                                               2.09-2.el7                                                             base                                                   26 k
 perl-File-Temp                                                       noarch                                               0.23.01-3.el7                                                          base                                                   56 k
 perl-Filter                                                          x86_64                                               1.49-3.el7                                                             base                                                   76 k
 perl-Getopt-Long                                                     noarch                                               2.40-3.el7                                                             base                                                   56 k
 perl-Git                                                             noarch                                               1.8.3.1-23.el7_8                                                       base                                                   56 k
 perl-HTTP-Tiny                                                       noarch                                               0.033-3.el7                                                            base                                                   38 k
 perl-PathTools                                                       x86_64                                               3.40-5.el7                                                             base                                                   82 k
 perl-Pod-Escapes                                                     noarch                                               1:1.04-299.el7_9                                                       updates                                                52 k
 perl-Pod-Perldoc                                                     noarch                                               3.20-4.el7                                                             base                                                   87 k
 perl-Pod-Simple                                                      noarch                                               1:3.28-4.el7                                                           base                                                  216 k
 perl-Pod-Usage                                                       noarch                                               1.63-3.el7                                                             base                                                   27 k
 perl-Scalar-List-Utils                                               x86_64                                               1.27-248.el7                                                           base                                                   36 k
 perl-Socket                                                          x86_64                                               2.010-5.el7                                                            base                                                   49 k
 perl-Storable                                                        x86_64                                               2.45-3.el7                                                             base                                                   77 k
 perl-TermReadKey                                                     x86_64                                               2.30-20.el7                                                            base                                                   31 k
 perl-Text-ParseWords                                                 noarch                                               3.29-4.el7                                                             base                                                   14 k
 perl-Time-HiRes                                                      x86_64                                               4:1.9725-3.el7                                                         base                                                   45 k
 perl-Time-Local                                                      noarch                                               1.2300-2.el7                                                           base                                                   24 k
 perl-constant                                                        noarch                                               1.27-2.el7                                                             base                                                   19 k
 perl-libs                                                            x86_64                                               4:5.16.3-299.el7_9                                                     updates                                               690 k
 perl-macros                                                          x86_64                                               4:5.16.3-299.el7_9                                                     updates                                                44 k
 perl-parent                                                          noarch                                               1:0.225-244.el7                                                        base                                                   12 k
 perl-podlators                                                       noarch                                               2.5.1-3.el7                                                            base                                                  112 k
 perl-threads                                                         x86_64                                               1.87-4.el7                                                             base                                                   49 k
 perl-threads-shared                                                  x86_64                                               1.43-6.el7                                                             base                                                   39 k
 rsync                                                                x86_64                                               3.1.2-10.el7                                                           base                                                  404 k

Transaction Summary
==============================================================================================================================================================================================================================================================
Install  2 Packages (+38 Dependent packages)

Total download size: 19 M
Installed size: 69 M
Downloading packages:
warning: /var/cache/yum/x86_64/7/base/packages/fipscheck-1.4.1-6.el7.x86_64.rpm: Header V3 RSA/SHA256 Signature, key ID f4a80eb5: NOKEY
Public key for fipscheck-1.4.1-6.el7.x86_64.rpm is not installed
(1/40): fipscheck-1.4.1-6.el7.x86_64.rpm                                                                                                                                                                                               |  21 kB  00:00:00
(2/40): fipscheck-lib-1.4.1-6.el7.x86_64.rpm                                                                                                                                                                                           |  11 kB  00:00:00
(3/40): less-458-9.el7.x86_64.rpm                                                                                                                                                                                                      | 120 kB  00:00:00
(4/40): groff-base-1.22.2-8.el7.x86_64.rpm                                                                                                                                                                                             | 942 kB  00:00:00
(5/40): libedit-3.0-12.20121213cvs.el7.x86_64.rpm                                                                                                                                                                                      |  92 kB  00:00:00
(6/40): make-3.82-24.el7.x86_64.rpm                                                                                                                                                                                                    | 421 kB  00:00:00
(7/40): perl-Carp-1.26-244.el7.noarch.rpm                                                                                                                                                                                              |  19 kB  00:00:00
(8/40): perl-Encode-2.51-7.el7.x86_64.rpm                                                                                                                                                                                              | 1.5 MB  00:00:00
(9/40): perl-Error-0.17020-2.el7.noarch.rpm                                                                                                                                                                                            |  32 kB  00:00:00
(10/40): perl-Exporter-5.68-3.el7.noarch.rpm                                                                                                                                                                                           |  28 kB  00:00:00
(11/40): perl-File-Path-2.09-2.el7.noarch.rpm                                                                                                                                                                                          |  26 kB  00:00:00
(12/40): perl-File-Temp-0.23.01-3.el7.noarch.rpm                                                                                                                                                                                       |  56 kB  00:00:00
Public key for openssh-7.4p1-22.el7_9.x86_64.rpm is not installed
(13/40): openssh-7.4p1-22.el7_9.x86_64.rpm                                                                                                                                                                                             | 510 kB  00:00:00
(14/40): perl-Filter-1.49-3.el7.x86_64.rpm                                                                                                                                                                                             |  76 kB  00:00:00
(15/40): perl-Getopt-Long-2.40-3.el7.noarch.rpm                                                                                                                                                                                        |  56 kB  00:00:00
(16/40): perl-Git-1.8.3.1-23.el7_8.noarch.rpm                                                                                                                                                                                          |  56 kB  00:00:00
(17/40): openssh-clients-7.4p1-22.el7_9.x86_64.rpm                                                                                                                                                                                     | 655 kB  00:00:00
(18/40): perl-HTTP-Tiny-0.033-3.el7.noarch.rpm                                                                                                                                                                                         |  38 kB  00:00:00
(19/40): perl-PathTools-3.40-5.el7.x86_64.rpm                                                                                                                                                                                          |  82 kB  00:00:00
(20/40): perl-Pod-Escapes-1.04-299.el7_9.noarch.rpm                                                                                                                                                                                    |  52 kB  00:00:00
(21/40): perl-Pod-Perldoc-3.20-4.el7.noarch.rpm                                                                                                                                                                                        |  87 kB  00:00:00
(22/40): perl-Pod-Usage-1.63-3.el7.noarch.rpm                                                                                                                                                                                          |  27 kB  00:00:00
(23/40): perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm                                                                                                                                                                                |  36 kB  00:00:00
(24/40): perl-Socket-2.010-5.el7.x86_64.rpm                                                                                                                                                                                            |  49 kB  00:00:00
(25/40): perl-Storable-2.45-3.el7.x86_64.rpm                                                                                                                                                                                           |  77 kB  00:00:00
(26/40): perl-TermReadKey-2.30-20.el7.x86_64.rpm                                                                                                                                                                                       |  31 kB  00:00:00
(27/40): perl-Text-ParseWords-3.29-4.el7.noarch.rpm                                                                                                                                                                                    |  14 kB  00:00:00
(28/40): perl-Time-HiRes-1.9725-3.el7.x86_64.rpm                                                                                                                                                                                       |  45 kB  00:00:00
(29/40): perl-Time-Local-1.2300-2.el7.noarch.rpm                                                                                                                                                                                       |  24 kB  00:00:00
(30/40): perl-constant-1.27-2.el7.noarch.rpm                                                                                                                                                                                           |  19 kB  00:00:00
(31/40): perl-Pod-Simple-3.28-4.el7.noarch.rpm                                                                                                                                                                                         | 216 kB  00:00:00
(32/40): perl-macros-5.16.3-299.el7_9.x86_64.rpm                                                                                                                                                                                       |  44 kB  00:00:00
(33/40): perl-parent-0.225-244.el7.noarch.rpm                                                                                                                                                                                          |  12 kB  00:00:00
(34/40): perl-podlators-2.5.1-3.el7.noarch.rpm                                                                                                                                                                                         | 112 kB  00:00:00
(35/40): perl-threads-1.87-4.el7.x86_64.rpm                                                                                                                                                                                            |  49 kB  00:00:00
(36/40): perl-threads-shared-1.43-6.el7.x86_64.rpm                                                                                                                                                                                     |  39 kB  00:00:00
(37/40): rsync-3.1.2-10.el7.x86_64.rpm                                                                                                                                                                                                 | 404 kB  00:00:00
(38/40): perl-5.16.3-299.el7_9.x86_64.rpm                                                                                                                                                                                              | 8.0 MB  00:00:00
(39/40): perl-libs-5.16.3-299.el7_9.x86_64.rpm                                                                                                                                                                                         | 690 kB  00:00:00
(40/40): git-1.8.3.1-23.el7_8.x86_64.rpm                                                                                                                                                                                               | 4.4 MB  00:00:01
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                                                                          12 MB/s |  19 MB  00:00:01
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Importing GPG key 0xF4A80EB5:
 Userid     : "CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org>"
 Fingerprint: 6341 ab27 53d7 8a78 a7c2 7bb1 24c6 a8a7 f4a8 0eb5
 Package    : centos-release-7-9.2009.0.el7.centos.x86_64 (@CentOS)
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : fipscheck-1.4.1-6.el7.x86_64                                                                                                                                                                                                              1/40
  Installing : fipscheck-lib-1.4.1-6.el7.x86_64                                                                                                                                                                                                          2/40
  Installing : groff-base-1.22.2-8.el7.x86_64                                                                                                                                                                                                            3/40
  Installing : 1:perl-parent-0.225-244.el7.noarch                                                                                                                                                                                                        4/40
  Installing : perl-HTTP-Tiny-0.033-3.el7.noarch                                                                                                                                                                                                         5/40
  Installing : perl-podlators-2.5.1-3.el7.noarch                                                                                                                                                                                                         6/40
  Installing : perl-Pod-Perldoc-3.20-4.el7.noarch                                                                                                                                                                                                        7/40
  Installing : 1:perl-Pod-Escapes-1.04-299.el7_9.noarch                                                                                                                                                                                                  8/40
  Installing : perl-Encode-2.51-7.el7.x86_64                                                                                                                                                                                                             9/40
  Installing : perl-Text-ParseWords-3.29-4.el7.noarch                                                                                                                                                                                                   10/40
  Installing : perl-Pod-Usage-1.63-3.el7.noarch                                                                                                                                                                                                         11/40
  Installing : 4:perl-macros-5.16.3-299.el7_9.x86_64                                                                                                                                                                                                    12/40
  Installing : 4:perl-Time-HiRes-1.9725-3.el7.x86_64                                                                                                                                                                                                    13/40
  Installing : perl-Exporter-5.68-3.el7.noarch                                                                                                                                                                                                          14/40
  Installing : perl-constant-1.27-2.el7.noarch                                                                                                                                                                                                          15/40
  Installing : perl-Socket-2.010-5.el7.x86_64                                                                                                                                                                                                           16/40
  Installing : perl-Time-Local-1.2300-2.el7.noarch                                                                                                                                                                                                      17/40
  Installing : perl-Carp-1.26-244.el7.noarch                                                                                                                                                                                                            18/40
  Installing : perl-Storable-2.45-3.el7.x86_64                                                                                                                                                                                                          19/40
  Installing : perl-PathTools-3.40-5.el7.x86_64                                                                                                                                                                                                         20/40
  Installing : perl-Scalar-List-Utils-1.27-248.el7.x86_64                                                                                                                                                                                               21/40
  Installing : 1:perl-Pod-Simple-3.28-4.el7.noarch                                                                                                                                                                                                      22/40
  Installing : perl-File-Temp-0.23.01-3.el7.noarch                                                                                                                                                                                                      23/40
  Installing : perl-File-Path-2.09-2.el7.noarch                                                                                                                                                                                                         24/40
  Installing : perl-threads-shared-1.43-6.el7.x86_64                                                                                                                                                                                                    25/40
  Installing : perl-threads-1.87-4.el7.x86_64                                                                                                                                                                                                           26/40
  Installing : perl-Filter-1.49-3.el7.x86_64                                                                                                                                                                                                            27/40
  Installing : 4:perl-libs-5.16.3-299.el7_9.x86_64                                                                                                                                                                                                      28/40
  Installing : perl-Getopt-Long-2.40-3.el7.noarch                                                                                                                                                                                                       29/40
  Installing : 4:perl-5.16.3-299.el7_9.x86_64                                                                                                                                                                                                           30/40
  Installing : 1:perl-Error-0.17020-2.el7.noarch                                                                                                                                                                                                        31/40
  Installing : perl-TermReadKey-2.30-20.el7.x86_64                                                                                                                                                                                                      32/40
  Installing : less-458-9.el7.x86_64                                                                                                                                                                                                                    33/40
  Installing : openssh-7.4p1-22.el7_9.x86_64                                                                                                                                                                                                            34/40
  Installing : rsync-3.1.2-10.el7.x86_64                                                                                                                                                                                                                35/40
  Installing : libedit-3.0-12.20121213cvs.el7.x86_64                                                                                                                                                                                                    36/40
  Installing : openssh-clients-7.4p1-22.el7_9.x86_64                                                                                                                                                                                                    37/40
  Installing : perl-Git-1.8.3.1-23.el7_8.noarch                                                                                                                                                                                                         38/40
  Installing : git-1.8.3.1-23.el7_8.x86_64                                                                                                                                                                                                              39/40
  Installing : 1:make-3.82-24.el7.x86_64                                                                                                                                                                                                                40/40
  Verifying  : fipscheck-lib-1.4.1-6.el7.x86_64                                                                                                                                                                                                          1/40
  Verifying  : perl-HTTP-Tiny-0.033-3.el7.noarch                                                                                                                                                                                                         2/40
  Verifying  : perl-threads-shared-1.43-6.el7.x86_64                                                                                                                                                                                                     3/40
  Verifying  : 4:perl-Time-HiRes-1.9725-3.el7.x86_64                                                                                                                                                                                                     4/40
  Verifying  : openssh-clients-7.4p1-22.el7_9.x86_64                                                                                                                                                                                                     5/40
  Verifying  : perl-Exporter-5.68-3.el7.noarch                                                                                                                                                                                                           6/40
  Verifying  : perl-constant-1.27-2.el7.noarch                                                                                                                                                                                                           7/40
  Verifying  : perl-PathTools-3.40-5.el7.x86_64                                                                                                                                                                                                          8/40
  Verifying  : openssh-7.4p1-22.el7_9.x86_64                                                                                                                                                                                                             9/40
  Verifying  : perl-Socket-2.010-5.el7.x86_64                                                                                                                                                                                                           10/40
  Verifying  : git-1.8.3.1-23.el7_8.x86_64                                                                                                                                                                                                              11/40
  Verifying  : 1:perl-parent-0.225-244.el7.noarch                                                                                                                                                                                                       12/40
  Verifying  : 4:perl-macros-5.16.3-299.el7_9.x86_64                                                                                                                                                                                                    13/40
  Verifying  : perl-TermReadKey-2.30-20.el7.x86_64                                                                                                                                                                                                      14/40
  Verifying  : fipscheck-1.4.1-6.el7.x86_64                                                                                                                                                                                                             15/40
  Verifying  : groff-base-1.22.2-8.el7.x86_64                                                                                                                                                                                                           16/40
  Verifying  : perl-File-Temp-0.23.01-3.el7.noarch                                                                                                                                                                                                      17/40
  Verifying  : 1:perl-Pod-Simple-3.28-4.el7.noarch                                                                                                                                                                                                      18/40
  Verifying  : perl-Time-Local-1.2300-2.el7.noarch                                                                                                                                                                                                      19/40
  Verifying  : 1:make-3.82-24.el7.x86_64                                                                                                                                                                                                                20/40
  Verifying  : 1:perl-Pod-Escapes-1.04-299.el7_9.noarch                                                                                                                                                                                                 21/40
  Verifying  : perl-Git-1.8.3.1-23.el7_8.noarch                                                                                                                                                                                                         22/40
  Verifying  : perl-Carp-1.26-244.el7.noarch                                                                                                                                                                                                            23/40
  Verifying  : 1:perl-Error-0.17020-2.el7.noarch                                                                                                                                                                                                        24/40
  Verifying  : perl-Storable-2.45-3.el7.x86_64                                                                                                                                                                                                          25/40
  Verifying  : perl-Scalar-List-Utils-1.27-248.el7.x86_64                                                                                                                                                                                               26/40
  Verifying  : perl-Pod-Usage-1.63-3.el7.noarch                                                                                                                                                                                                         27/40
  Verifying  : perl-Encode-2.51-7.el7.x86_64                                                                                                                                                                                                            28/40
  Verifying  : perl-Pod-Perldoc-3.20-4.el7.noarch                                                                                                                                                                                                       29/40
  Verifying  : perl-podlators-2.5.1-3.el7.noarch                                                                                                                                                                                                        30/40
  Verifying  : 4:perl-5.16.3-299.el7_9.x86_64                                                                                                                                                                                                           31/40
  Verifying  : perl-File-Path-2.09-2.el7.noarch                                                                                                                                                                                                         32/40
  Verifying  : libedit-3.0-12.20121213cvs.el7.x86_64                                                                                                                                                                                                    33/40
  Verifying  : perl-threads-1.87-4.el7.x86_64                                                                                                                                                                                                           34/40
  Verifying  : rsync-3.1.2-10.el7.x86_64                                                                                                                                                                                                                35/40
  Verifying  : perl-Filter-1.49-3.el7.x86_64                                                                                                                                                                                                            36/40
  Verifying  : perl-Getopt-Long-2.40-3.el7.noarch                                                                                                                                                                                                       37/40
  Verifying  : perl-Text-ParseWords-3.29-4.el7.noarch                                                                                                                                                                                                   38/40
  Verifying  : 4:perl-libs-5.16.3-299.el7_9.x86_64                                                                                                                                                                                                      39/40
  Verifying  : less-458-9.el7.x86_64                                                                                                                                                                                                                    40/40

Installed:
  git.x86_64 0:1.8.3.1-23.el7_8                                                                                                   make.x86_64 1:3.82-24.el7

Dependency Installed:
  fipscheck.x86_64 0:1.4.1-6.el7           fipscheck-lib.x86_64 0:1.4.1-6.el7        groff-base.x86_64 0:1.22.2-8.el7       less.x86_64 0:458-9.el7                   libedit.x86_64 0:3.0-12.20121213cvs.el7  openssh.x86_64 0:7.4p1-22.el7_9
  openssh-clients.x86_64 0:7.4p1-22.el7_9  perl.x86_64 4:5.16.3-299.el7_9            perl-Carp.noarch 0:1.26-244.el7        perl-Encode.x86_64 0:2.51-7.el7           perl-Error.noarch 1:0.17020-2.el7        perl-Exporter.noarch 0:5.68-3.el7
  perl-File-Path.noarch 0:2.09-2.el7       perl-File-Temp.noarch 0:0.23.01-3.el7     perl-Filter.x86_64 0:1.49-3.el7        perl-Getopt-Long.noarch 0:2.40-3.el7      perl-Git.noarch 0:1.8.3.1-23.el7_8       perl-HTTP-Tiny.noarch 0:0.033-3.el7
  perl-PathTools.x86_64 0:3.40-5.el7       perl-Pod-Escapes.noarch 1:1.04-299.el7_9  perl-Pod-Perldoc.noarch 0:3.20-4.el7   perl-Pod-Simple.noarch 1:3.28-4.el7       perl-Pod-Usage.noarch 0:1.63-3.el7       perl-Scalar-List-Utils.x86_64 0:1.27-248.el7
  perl-Socket.x86_64 0:2.010-5.el7         perl-Storable.x86_64 0:2.45-3.el7         perl-TermReadKey.x86_64 0:2.30-20.el7  perl-Text-ParseWords.noarch 0:3.29-4.el7  perl-Time-HiRes.x86_64 4:1.9725-3.el7    perl-Time-Local.noarch 0:1.2300-2.el7
  perl-constant.noarch 0:1.27-2.el7        perl-libs.x86_64 4:5.16.3-299.el7_9       perl-macros.x86_64 4:5.16.3-299.el7_9  perl-parent.noarch 1:0.225-244.el7        perl-podlators.noarch 0:2.5.1-3.el7      perl-threads.x86_64 0:1.87-4.el7
  perl-threads-shared.x86_64 0:1.43-6.el7  rsync.x86_64 0:3.1.2-10.el7

Complete!
Cloning into 'spotcot'...
remote: Enumerating objects: 165, done.
remote: Counting objects: 100% (165/165), done.
remote: Compressing objects: 100% (114/114), done.
remote: Total 165 (delta 75), reused 138 (delta 48), pack-reused 0
Receiving objects: 100% (165/165), 2.46 MiB | 883.00 KiB/s, done.
Resolving deltas: 100% (75/75), done.
Branch pip_riteshja88 set up to track remote branch pip_riteshja88 from origin.
Switched to a new branch 'pip_riteshja88'

[root@8c095799e6a5 spotcot]# make build_and_upload_pip
yum install python3 -y
Loaded plugins: fastestmirror, ovl
Loading mirror speeds from cached hostfile
 * base: centos.mirrors.estointernet.in
 * extras: centos.mirrors.estointernet.in
 * updates: centos.mirrors.estointernet.in
Resolving Dependencies
--> Running transaction check
---> Package python3.x86_64 0:3.6.8-18.el7 will be installed
--> Processing Dependency: python3-libs(x86-64) = 3.6.8-18.el7 for package: python3-3.6.8-18.el7.x86_64
--> Processing Dependency: python3-setuptools for package: python3-3.6.8-18.el7.x86_64
--> Processing Dependency: python3-pip for package: python3-3.6.8-18.el7.x86_64
--> Processing Dependency: libpython3.6m.so.1.0()(64bit) for package: python3-3.6.8-18.el7.x86_64
--> Running transaction check
---> Package python3-libs.x86_64 0:3.6.8-18.el7 will be installed
--> Processing Dependency: libtirpc.so.1()(64bit) for package: python3-libs-3.6.8-18.el7.x86_64
---> Package python3-pip.noarch 0:9.0.3-8.el7 will be installed
---> Package python3-setuptools.noarch 0:39.2.0-10.el7 will be installed
--> Running transaction check
---> Package libtirpc.x86_64 0:0.2.4-0.16.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==============================================================================================================================================================================================================================================================
 Package                                                             Arch                                                    Version                                                           Repository                                                Size
==============================================================================================================================================================================================================================================================
Installing:
 python3                                                             x86_64                                                  3.6.8-18.el7                                                      updates                                                   70 k
Installing for dependencies:
 libtirpc                                                            x86_64                                                  0.2.4-0.16.el7                                                    base                                                      89 k
 python3-libs                                                        x86_64                                                  3.6.8-18.el7                                                      updates                                                  6.9 M
 python3-pip                                                         noarch                                                  9.0.3-8.el7                                                       base                                                     1.6 M
 python3-setuptools                                                  noarch                                                  39.2.0-10.el7                                                     base                                                     629 k

Transaction Summary
==============================================================================================================================================================================================================================================================
Install  1 Package (+4 Dependent packages)

Total download size: 9.3 M
Installed size: 48 M
Downloading packages:
(1/5): python3-3.6.8-18.el7.x86_64.rpm                                                                                                                                                                                                 |  70 kB  00:00:00
(2/5): libtirpc-0.2.4-0.16.el7.x86_64.rpm                                                                                                                                                                                              |  89 kB  00:00:00
(3/5): python3-pip-9.0.3-8.el7.noarch.rpm                                                                                                                                                                                              | 1.6 MB  00:00:00
(4/5): python3-libs-3.6.8-18.el7.x86_64.rpm                                                                                                                                                                                            | 6.9 MB  00:00:00
(5/5): python3-setuptools-39.2.0-10.el7.noarch.rpm                                                                                                                                                                                     | 629 kB  00:00:00
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                                                                          16 MB/s | 9.3 MB  00:00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : libtirpc-0.2.4-0.16.el7.x86_64                                                                                                                                                                                                             1/5
  Installing : python3-setuptools-39.2.0-10.el7.noarch                                                                                                                                                                                                    2/5
  Installing : python3-pip-9.0.3-8.el7.noarch                                                                                                                                                                                                             3/5
  Installing : python3-3.6.8-18.el7.x86_64                                                                                                                                                                                                                4/5
  Installing : python3-libs-3.6.8-18.el7.x86_64                                                                                                                                                                                                           5/5
  Verifying  : libtirpc-0.2.4-0.16.el7.x86_64                                                                                                                                                                                                             1/5
  Verifying  : python3-setuptools-39.2.0-10.el7.noarch                                                                                                                                                                                                    2/5
  Verifying  : python3-libs-3.6.8-18.el7.x86_64                                                                                                                                                                                                           3/5
  Verifying  : python3-3.6.8-18.el7.x86_64                                                                                                                                                                                                                4/5
  Verifying  : python3-pip-9.0.3-8.el7.noarch                                                                                                                                                                                                             5/5

Installed:
  python3.x86_64 0:3.6.8-18.el7

Dependency Installed:
  libtirpc.x86_64 0:0.2.4-0.16.el7                            python3-libs.x86_64 0:3.6.8-18.el7                            python3-pip.noarch 0:9.0.3-8.el7                            python3-setuptools.noarch 0:39.2.0-10.el7

Complete!
python3 -m pip install --upgrade pip build
WARNING: Running pip install with root privileges is generally not a good idea. Try `__main__.py install --user` instead.
Collecting pip
  Downloading https://files.pythonhosted.org/packages/a4/6d/6463d49a933f547439d6b5b98b46af8742cc03ae83543e4d7688c2420f8b/pip-21.3.1-py3-none-any.whl (1.7MB)
    100% |################################| 1.7MB 511kB/s
Collecting build
  Downloading https://files.pythonhosted.org/packages/46/28/70768d6585162eb29df181aed4c1adb3081307ad46a892c390dab549dc13/build-0.7.0-py3-none-any.whl
Collecting importlib-metadata>=0.22; python_version < "3.8" (from build)
  Downloading https://files.pythonhosted.org/packages/a0/a1/b153a0a4caf7a7e3f15c2cd56c7702e2cf3d89b1b359d1f1c5e59d68f4ce/importlib_metadata-4.8.3-py3-none-any.whl
Collecting tomli>=1.0.0 (from build)
  Downloading https://files.pythonhosted.org/packages/05/e4/74f9440db36734d7ba83c574c1e7024009ce849208a41f90e94a134dc6d1/tomli-1.2.3-py3-none-any.whl
Collecting packaging>=19.0 (from build)
  Downloading https://files.pythonhosted.org/packages/05/8e/8de486cbd03baba4deef4142bd643a3e7bbe954a784dc1bb17142572d127/packaging-21.3-py3-none-any.whl (40kB)
    100% |################################| 40kB 4.4MB/s
Collecting pep517>=0.9.1 (from build)
  Downloading https://files.pythonhosted.org/packages/f4/67/846c08e18fefb265a66e6fd5a34269d649b779718d9bf59622085dabd370/pep517-0.12.0-py2.py3-none-any.whl
Collecting zipp>=0.5 (from importlib-metadata>=0.22; python_version < "3.8"->build)
  Downloading https://files.pythonhosted.org/packages/bd/df/d4a4974a3e3957fd1c1fa3082366d7fff6e428ddb55f074bf64876f8e8ad/zipp-3.6.0-py3-none-any.whl
Collecting typing-extensions>=3.6.4; python_version < "3.8" (from importlib-metadata>=0.22; python_version < "3.8"->build)
  Downloading https://files.pythonhosted.org/packages/45/6b/44f7f8f1e110027cf88956b59f2fad776cca7e1704396d043f89effd3a0e/typing_extensions-4.1.1-py3-none-any.whl
Collecting pyparsing!=3.0.5,>=2.0.2 (from packaging>=19.0->build)
  Downloading https://files.pythonhosted.org/packages/80/c1/23fd82ad3121656b585351aba6c19761926bb0db2ebed9e4ff09a43a3fcc/pyparsing-3.0.7-py3-none-any.whl (98kB)
    100% |################################| 102kB 5.9MB/s
Installing collected packages: pip, zipp, typing-extensions, importlib-metadata, tomli, pyparsing, packaging, pep517, build
Successfully installed build-0.7.0 importlib-metadata-4.8.3 packaging-21.3 pep517-0.12.0 pip-21.3.1 pyparsing-3.0.7 tomli-1.2.3 typing-extensions-4.1.1 zipp-3.6.0
python3 -m build
* Creating venv isolated environment...
* Installing packages in isolated environment... (setuptools)
* Getting dependencies for sdist...
running egg_info
creating spotcot.egg-info
writing spotcot.egg-info/PKG-INFO
writing dependency_links to spotcot.egg-info/dependency_links.txt
writing entry points to spotcot.egg-info/entry_points.txt
writing requirements to spotcot.egg-info/requires.txt
writing top-level names to spotcot.egg-info/top_level.txt
writing manifest file 'spotcot.egg-info/SOURCES.txt'
reading manifest file 'spotcot.egg-info/SOURCES.txt'
reading manifest template 'MANIFEST.in'
adding license file 'LICENSE'
writing manifest file 'spotcot.egg-info/SOURCES.txt'
* Building sdist...
running sdist
running egg_info
writing spotcot.egg-info/PKG-INFO
writing dependency_links to spotcot.egg-info/dependency_links.txt
writing entry points to spotcot.egg-info/entry_points.txt
writing requirements to spotcot.egg-info/requires.txt
writing top-level names to spotcot.egg-info/top_level.txt
reading manifest file 'spotcot.egg-info/SOURCES.txt'
reading manifest template 'MANIFEST.in'
adding license file 'LICENSE'
writing manifest file 'spotcot.egg-info/SOURCES.txt'
running check
creating spotcot-2.0.2
creating spotcot-2.0.2/spotcot
creating spotcot-2.0.2/spotcot.egg-info
copying files to spotcot-2.0.2...
copying LICENSE -> spotcot-2.0.2
copying MANIFEST.in -> spotcot-2.0.2
copying README.rst -> spotcot-2.0.2
copying pyproject.toml -> spotcot-2.0.2
copying requirements.txt -> spotcot-2.0.2
copying setup.cfg -> spotcot-2.0.2
copying setup.py -> spotcot-2.0.2
copying spotcot/__init__.py -> spotcot-2.0.2/spotcot
copying spotcot/classes.py -> spotcot-2.0.2/spotcot
copying spotcot/commands.py -> spotcot-2.0.2/spotcot
copying spotcot/constants.py -> spotcot-2.0.2/spotcot
copying spotcot/functions.py -> spotcot-2.0.2/spotcot
copying spotcot.egg-info/PKG-INFO -> spotcot-2.0.2/spotcot.egg-info
copying spotcot.egg-info/SOURCES.txt -> spotcot-2.0.2/spotcot.egg-info
copying spotcot.egg-info/dependency_links.txt -> spotcot-2.0.2/spotcot.egg-info
copying spotcot.egg-info/entry_points.txt -> spotcot-2.0.2/spotcot.egg-info
copying spotcot.egg-info/not-zip-safe -> spotcot-2.0.2/spotcot.egg-info
copying spotcot.egg-info/requires.txt -> spotcot-2.0.2/spotcot.egg-info
copying spotcot.egg-info/top_level.txt -> spotcot-2.0.2/spotcot.egg-info
Writing spotcot-2.0.2/setup.cfg
Creating tar archive
removing 'spotcot-2.0.2' (and everything under it)
* Building wheel from sdist
* Creating venv isolated environment...
* Installing packages in isolated environment... (setuptools)
* Getting dependencies for wheel...
running egg_info
writing spotcot.egg-info/PKG-INFO
writing dependency_links to spotcot.egg-info/dependency_links.txt
writing entry points to spotcot.egg-info/entry_points.txt
writing requirements to spotcot.egg-info/requires.txt
writing top-level names to spotcot.egg-info/top_level.txt
reading manifest file 'spotcot.egg-info/SOURCES.txt'
reading manifest template 'MANIFEST.in'
adding license file 'LICENSE'
writing manifest file 'spotcot.egg-info/SOURCES.txt'
* Installing packages in isolated environment... (wheel)
* Building wheel...
running bdist_wheel
running build
running build_py
creating build
creating build/lib
creating build/lib/spotcot
copying spotcot/constants.py -> build/lib/spotcot
copying spotcot/__init__.py -> build/lib/spotcot
copying spotcot/functions.py -> build/lib/spotcot
copying spotcot/classes.py -> build/lib/spotcot
copying spotcot/commands.py -> build/lib/spotcot
running egg_info
writing spotcot.egg-info/PKG-INFO
writing dependency_links to spotcot.egg-info/dependency_links.txt
writing entry points to spotcot.egg-info/entry_points.txt
writing requirements to spotcot.egg-info/requires.txt
writing top-level names to spotcot.egg-info/top_level.txt
reading manifest file 'spotcot.egg-info/SOURCES.txt'
reading manifest template 'MANIFEST.in'
adding license file 'LICENSE'
writing manifest file 'spotcot.egg-info/SOURCES.txt'
installing to build/bdist.linux-x86_64/wheel
running install
running install_lib
creating build/bdist.linux-x86_64
creating build/bdist.linux-x86_64/wheel
creating build/bdist.linux-x86_64/wheel/spotcot
copying build/lib/spotcot/constants.py -> build/bdist.linux-x86_64/wheel/spotcot
copying build/lib/spotcot/__init__.py -> build/bdist.linux-x86_64/wheel/spotcot
copying build/lib/spotcot/functions.py -> build/bdist.linux-x86_64/wheel/spotcot
copying build/lib/spotcot/classes.py -> build/bdist.linux-x86_64/wheel/spotcot
copying build/lib/spotcot/commands.py -> build/bdist.linux-x86_64/wheel/spotcot
running install_egg_info
Copying spotcot.egg-info to build/bdist.linux-x86_64/wheel/spotcot-2.0.2-py3.6.egg-info
running install_scripts
adding license file "LICENSE" (matched pattern "LICEN[CS]E*")
creating build/bdist.linux-x86_64/wheel/spotcot-2.0.2.dist-info/WHEEL
creating '/spotcot/dist/tmp5so6manp/spotcot-2.0.2-py3-none-any.whl' and adding 'build/bdist.linux-x86_64/wheel' to it
adding 'spotcot/__init__.py'
adding 'spotcot/classes.py'
adding 'spotcot/commands.py'
adding 'spotcot/constants.py'
adding 'spotcot/functions.py'
adding 'spotcot-2.0.2.dist-info/LICENSE'
adding 'spotcot-2.0.2.dist-info/METADATA'
adding 'spotcot-2.0.2.dist-info/WHEEL'
adding 'spotcot-2.0.2.dist-info/entry_points.txt'
adding 'spotcot-2.0.2.dist-info/top_level.txt'
adding 'spotcot-2.0.2.dist-info/RECORD'
removing build/bdist.linux-x86_64/wheel
Successfully built spotcot-2.0.2.tar.gz and spotcot-2.0.2-py3-none-any.whl
#python3 -m pip install --upgrade setuptools-rust pip twine
python3 -m pip install --upgrade setuptools-rust pip twine
Collecting setuptools-rust
  Downloading setuptools_rust-1.1.2-py3-none-any.whl (21 kB)
Requirement already satisfied: pip in /usr/local/lib/python3.6/site-packages (21.3.1)
Collecting twine
  Downloading twine-3.8.0-py3-none-any.whl (36 kB)
Requirement already satisfied: typing-extensions>=3.7.4.3 in /usr/local/lib/python3.6/site-packages (from setuptools-rust) (4.1.1)
Collecting setuptools>=46.1
  Using cached setuptools-59.6.0-py3-none-any.whl (952 kB)
Collecting semantic-version<3,>=2.8.2
  Downloading semantic_version-2.9.0-py2.py3-none-any.whl (15 kB)
Collecting urllib3>=1.26.0
  Downloading urllib3-1.26.9-py2.py3-none-any.whl (138 kB)
     |################################| 138 kB 2.8 MB/s
Collecting tqdm>=4.14
  Downloading tqdm-4.63.0-py2.py3-none-any.whl (76 kB)
     |################################| 76 kB 487 kB/s
Collecting requests-toolbelt!=0.9.0,>=0.8.0
  Downloading requests_toolbelt-0.9.1-py2.py3-none-any.whl (54 kB)
     |################################| 54 kB 170 kB/s
Collecting pkginfo>=1.8.1
  Downloading pkginfo-1.8.2-py2.py3-none-any.whl (26 kB)
Collecting rfc3986>=1.4.0
  Downloading rfc3986-1.5.0-py2.py3-none-any.whl (31 kB)
Collecting colorama>=0.4.3
  Downloading colorama-0.4.4-py2.py3-none-any.whl (16 kB)
Collecting requests>=2.20
  Downloading requests-2.27.1-py2.py3-none-any.whl (63 kB)
     |################################| 63 kB 98 kB/s
Collecting readme-renderer>=21.0
  Downloading readme_renderer-34.0-py3-none-any.whl (16 kB)
Collecting keyring>=15.1
  Downloading keyring-23.4.1-py3-none-any.whl (33 kB)
Requirement already satisfied: importlib-metadata>=3.6 in /usr/local/lib/python3.6/site-packages (from twine) (4.8.3)
Requirement already satisfied: zipp>=0.5 in /usr/local/lib/python3.6/site-packages (from importlib-metadata>=3.6->twine) (3.6.0)
Collecting jeepney>=0.4.2
  Downloading jeepney-0.7.1-py3-none-any.whl (54 kB)
     |################################| 54 kB 352 kB/s
Collecting SecretStorage>=3.2
  Downloading SecretStorage-3.3.1-py3-none-any.whl (15 kB)
Collecting Pygments>=2.5.1
  Downloading Pygments-2.11.2-py3-none-any.whl (1.1 MB)
     |################################| 1.1 MB 19.0 MB/s
Collecting docutils>=0.13.1
  Downloading docutils-0.18.1-py2.py3-none-any.whl (570 kB)
     |################################| 570 kB 20.0 MB/s
Collecting bleach>=2.1.0
  Downloading bleach-4.1.0-py2.py3-none-any.whl (157 kB)
     |################################| 157 kB 18.4 MB/s
Collecting charset-normalizer~=2.0.0
  Downloading charset_normalizer-2.0.12-py3-none-any.whl (39 kB)
Collecting certifi>=2017.4.17
  Downloading certifi-2021.10.8-py2.py3-none-any.whl (149 kB)
     |################################| 149 kB 34.6 MB/s
Collecting idna<4,>=2.5
  Downloading idna-3.3-py3-none-any.whl (61 kB)
     |################################| 61 kB 1.1 MB/s
Collecting importlib-resources
  Downloading importlib_resources-5.4.0-py3-none-any.whl (28 kB)
Requirement already satisfied: packaging in /usr/local/lib/python3.6/site-packages (from bleach>=2.1.0->readme-renderer>=21.0->twine) (21.3)
Collecting six>=1.9.0
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Collecting webencodings
  Downloading webencodings-0.5.1-py2.py3-none-any.whl (11 kB)
Collecting cryptography>=2.0
  Downloading cryptography-36.0.2-cp36-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (3.7 MB)
     |################################| 3.7 MB 17.9 MB/s
Collecting cffi>=1.12
  Downloading cffi-1.15.0-cp36-cp36m-manylinux_2_5_x86_64.manylinux1_x86_64.whl (405 kB)
     |################################| 405 kB 21.0 MB/s
Requirement already satisfied: pyparsing!=3.0.5,>=2.0.2 in /usr/local/lib/python3.6/site-packages (from packaging->bleach>=2.1.0->readme-renderer>=21.0->twine) (3.0.7)
Collecting pycparser
  Downloading pycparser-2.21-py2.py3-none-any.whl (118 kB)
     |################################| 118 kB 22.7 MB/s
Installing collected packages: pycparser, cffi, webencodings, urllib3, six, jeepney, idna, cryptography, charset-normalizer, certifi, SecretStorage, requests, Pygments, importlib-resources, docutils, bleach, tqdm, setuptools, semantic-version, rfc3986, requests-toolbelt, readme-renderer, pkginfo, keyring, colorama, twine, setuptools-rust
  Attempting uninstall: setuptools
    Found existing installation: setuptools 39.2.0
    Uninstalling setuptools-39.2.0:
      Successfully uninstalled setuptools-39.2.0
Successfully installed Pygments-2.11.2 SecretStorage-3.3.1 bleach-4.1.0 certifi-2021.10.8 cffi-1.15.0 charset-normalizer-2.0.12 colorama-0.4.4 cryptography-36.0.2 docutils-0.18.1 idna-3.3 importlib-resources-5.4.0 jeepney-0.7.1 keyring-23.4.1 pkginfo-1.8.2 pycparser-2.21 readme-renderer-34.0 requests-2.27.1 requests-toolbelt-0.9.1 rfc3986-1.5.0 semantic-version-2.9.0 setuptools-59.6.0 setuptools-rust-1.1.2 six-1.16.0 tqdm-4.63.0 twine-3.8.0 urllib3-1.26.9 webencodings-0.5.1
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
python3 -m twine upload --skip-existing --repository testpypi dist/*
Uploading distributions to https://test.pypi.org/legacy/
Enter your username: __token__
/usr/local/lib/python3.6/site-packages/twine/auth.py:77: UserWarning: No recommended backend was available. Install a recommended 3rd party backend package; or, install the keyrings.alt package if you want to use the non-recommended backends. See https://pypi.org/project/keyring for details.
  warnings.warn(str(exc))
Enter your password:
Uploading spotcot-2.0.2-py3-none-any.whl
100%|####################################################################################################################################################################################################################| 15.6k/15.6k [00:01<00:00, 11.7kB/s]
  Skipping spotcot-2.0.2-py3-none-any.whl because it appears to already exist
Uploading spotcot-2.0.2.tar.gz
100%|####################################################################################################################################################################################################################| 13.2k/13.2k [00:01<00:00, 11.6kB/s]
  Skipping spotcot-2.0.2.tar.gz because it appears to already exist
#user: __token__
#password: pypi-AgENdGVzdC5weXBpLm9yZwIkYmY0ZWE2ZDctZjA1Yi00MTIzLWJjZTMtMmYyM2ZmMzg4OThkAAIleyJwZXJtaXNzaW9ucyI6ICJ1c2VyIiwgInZlcnNpb24iOiAxfQAABiBqGQ6A-M6yvpiP08GBa6Et-WjpwGSiS-FWOdD-Q1osiQ

[root@8c095799e6a5 spotcot]#
```
