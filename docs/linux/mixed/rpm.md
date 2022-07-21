# rpm

##### download and install the software package in one step

   rpm  -ivh 'http://www.website.com/path/to/desired_software_package.rpm'

##### Query for installed packages on RHEL boxes, and format the output nicely

   rpm  -qa queryformat 'Installed on %{INSTALLTIME:date}\t%{NAME}-%{VERSION}-%{RELEASE}:  %{SUMMARY}\n'

##### Lists installed kernels

   rpm  -qf /lib/modules/*

##### Lists installed kernels

   rpm  -qa kernel

##### Display which distro is installed

   rpm  -qf /etc/*-release

##### Extract all of the files on an RPM on a non-RPM *nix

   rpm 2cpio package.rpm |cpio -dimv

##### Display a list of RPMs installed on a particular date

   rpm  -qa queryformat '%{installtime}  \"%{vendor}\" %{name}-%{version}-%{release}  %{installtime:date}\n' | grep "Thu 05 Mar"

##### List all packages by installed size (Bytes) on rpm distros

   rpm  -q -a qf '%10{SIZE}\t%{NAME}\n' | sort -k1,1n

##### Find out what package some command belongs to (on RPM systems)

   rpm  -qif `which more`

##### show the date every rpm was installed

   rpm  -qa last

##### show rpm packages scriptlets

   rpm  -qp scripts package.rpm

##### Determine the version of a specific package with RPM

   rpm  -q qf "%{VERSION}\n" redhat-release

##### find the rpm package name that provides a specific file

   rpm  -q whatprovides $filename

##### Extract the contents of an RPM package to your current directory without installing them.

   rpm 2cpio /path/to/file.rpm | cpio -i -d

##### Search through all installed packages names (on RPM systems)

   rpm  -qa \*code\*

##### Display 6 largest installed RPMs sorted by size (descending)

   rpm  -qa qf '%{SIZE} %{NAME}\n' | sort -nr | nl | head -6 # six largest RPMs

##### Sort installed rpms by decreasing size.

   rpm  -qa qf  "%-10{SIZE} %-30{NAME}\n" | sort -nr | less

##### Sort installed rpms in alphabetic order with their size.

   rpm  -qa qf  "%-30{NAME} %-10{SIZE}\n" | sort -n | less

##### Lists architecture of installed RPMs

   rpm  -qa queryformat "%{NAME} %{ARCH}\n"

##### Display 16 largest installed RPMs in size order, largest first

   rpm  -qa queryformat '%{size} %{name}-%{version}-%{release}\n' | sort -k 1,1 -rn | nl | head -16

##### Shows what an RPM was compiled with.

   rpm  -q queryformat="%{NAME}: %{OPTFLAGS}\n" <rpm>

##### Show a Package Version on RPM based distributions

   rpm  -q queryformat %{VERSION}\\n pkgname

##### Remove multiple same rpm packages

   rpm  -e allmatches filename.rpm

##### Get information about libraries currently installed on a system.

   rpm  -qa qf '%{name}-%{version}-%{release}.%{arch}\n'|egrep 'compat|glibc|gcc|libst|binu'|sort

##### search installed files of package, that doesn't remember his name well. On rpm systems

   rpm  -qa | grep PACKAGENAME | xargs rpm -q filesbypkg

##### Clean the /boot directory

   rpm  -q kernel-2* | grep -v $(uname -r) | xargs yum erase -y

##### Sort installed rpms by size

   rpm  -qa queryformat '%{size} %{name}\n' | sort -rn

##### Dump an rpm's package details (besides the files)

   rpm  querytags | egrep -v HEADERIMMUTABLE | sort | while read tag ; do rpm -q queryformat "$tag: [%{$tag} ]\n" -p $SomeRPMfile ; done

##### To get the latest information on rpm packages

   rpm  -qa last

##### To get the different name field nformation on rpm packages

   rpm  -qa qf '%{name}'

##### List all gpg-pubkeys for yum

   rpm  -qa gpg-pubkey qf "%{version}-%{release} %{summary}\n"

##### List installed rpm named and arquitecture.

   rpm  -qa queryformat "%{NAME} %{ARCH}\n"

##### Remove a specific gpg-pubkey from rpm/yum

   rpm  -e allmatches gpg-pubkey-1aa043b8-53b2e946

##### check rpm pkg content w/o installation

   rpm  -qlp <package.rpm>

##### Find a list of all installed packages on a Redhat/CentOS system

   rpm  -qa | sort | sed -n -e "s/\-[0-9].[0-9]*.*//p" | uniq

##### Strip out time difference entries when verifying rpms on x86_64 RHEL systems

   rpm  -Va | grep -v "\.\.\.\.\.\.\.T"

##### List all rpms on system by name, version and release numbers, and architecture

   rpm  -qa qf '%{name}-%{version}-%{release}.%{arch}\n'

##### List files in an RPM package

   rpm  query filesbypackage [packagename]

##### Total size in RPM packages

   rpm  -qa queryformat '%{SIZE}\n' | awk '{sum += $1} END {printf("Total size in packages = %4.1f GB\n", sum/1024**3)}'

##### Extract all of the files on an RPM on a non-RPM *nix

   rpm 2cpio package.rpm |cpio -dimv

##### Display a list of RPMs installed on a particular date

   rpm  -qa queryformat '%{installtime}  \"%{vendor}\" %{name}-%{version}-%{release}  %{installtime:date}\n' | grep "Thu 05 Mar"

##### List all packages by installed size (Bytes) on rpm distros

   rpm  -q -a qf '%10{SIZE}\t%{NAME}\n' | sort -k1,1n

##### Find out what package some command belongs to (on RPM systems)

   rpm  -qif `which more`

##### show the date every rpm was installed

   rpm  -qa last

##### show rpm packages scriptlets

   rpm  -qp scripts package.rpm

##### Determine the version of a specific package with RPM

   rpm  -q qf "%{VERSION}\n" redhat-release

##### find the rpm package name that provides a specific file

   rpm  -q whatprovides $filename

##### Extract the contents of an RPM package to your current directory without installing them.

   rpm 2cpio /path/to/file.rpm | cpio -i -d

##### Search through all installed packages names (on RPM systems)

   rpm  -qa \*code\*

##### Display 6 largest installed RPMs sorted by size (descending)

   rpm  -qa qf '%{SIZE} %{NAME}\n' | sort -nr | nl | head -6 # six largest RPMs

##### Sort installed rpms by decreasing size.

   rpm  -qa qf  "%-10{SIZE} %-30{NAME}\n" | sort -nr | less

##### Sort installed rpms in alphabetic order with their size.

   rpm  -qa qf  "%-30{NAME} %-10{SIZE}\n" | sort -n | less

##### Lists architecture of installed RPMs

   rpm  -qa queryformat "%{NAME} %{ARCH}\n"

##### Display 16 largest installed RPMs in size order, largest first

   rpm  -qa queryformat '%{size} %{name}-%{version}-%{release}\n' | sort -k 1,1 -rn | nl | head -16

##### Shows what an RPM was compiled with.

   rpm  -q queryformat="%{NAME}: %{OPTFLAGS}\n" <rpm>

##### Show a Package Version on RPM based distributions

   rpm  -q queryformat %{VERSION}\\n pkgname

##### Remove multiple same rpm packages

   rpm  -e allmatches filename.rpm

##### Get information about libraries currently installed on a system.

   rpm  -qa qf '%{name}-%{version}-%{release}.%{arch}\n'|egrep 'compat|glibc|gcc|libst|binu'|sort

##### search installed files of package, that doesn't remember his name well. On rpm systems

   rpm  -qa | grep PACKAGENAME | xargs rpm -q filesbypkg

##### Clean the /boot directory

   rpm  -q kernel-2* | grep -v $(uname -r) | xargs yum erase -y

##### Sort installed rpms by size

   rpm  -qa queryformat '%{size} %{name}\n' | sort -rn

##### Dump an rpm's package details (besides the files)

   rpm  querytags | egrep -v HEADERIMMUTABLE | sort | while read tag ; do rpm -q queryformat "$tag: [%{$tag} ]\n" -p $SomeRPMfile ; done

##### To get the latest information on rpm packages

   rpm  -qa last

##### To get the different name field nformation on rpm packages

   rpm  -qa qf '%{name}'

##### List all gpg-pubkeys for yum

   rpm  -qa gpg-pubkey qf "%{version}-%{release} %{summary}\n"

##### List installed rpm named and arquitecture.

   rpm  -qa queryformat "%{NAME} %{ARCH}\n"

##### Remove a specific gpg-pubkey from rpm/yum

   rpm  -e allmatches gpg-pubkey-1aa043b8-53b2e946

##### check rpm pkg content w/o installation

   rpm  -qlp <package.rpm>

##### Find a list of all installed packages on a Redhat/CentOS system

   rpm  -qa | sort | sed -n -e "s/\-[0-9].[0-9]*.*//p" | uniq

##### Strip out time difference entries when verifying rpms on x86_64 RHEL systems

   rpm  -Va | grep -v "\.\.\.\.\.\.\.T"

##### List all rpms on system by name, version and release numbers, and architecture

   rpm  -qa qf '%{name}-%{version}-%{release}.%{arch}\n'
