# Demo(short)
```
# cat /etc/centos-release
CentOS Linux release 7.9.2009 (Core)

# yum install -y python3 && python3 -m pip install --index-url https://test.pypi.org/simple/ --extra-index-url https://pypi.python.org/simple/ spotcot

# spotcot -h
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

# Demo(detailed)
```
# docker run --rm --name pip-spotcot -it centos:7

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