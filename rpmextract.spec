#
# spec file for rpmextract
#
Summary: Utilities for RPM packages
Name: rpmextract
Version: 1.0
Release: 1
License: GPL
Group: System/Configuration/Packaging
Source: TBD
URL: https://github.com/duffj/rpmextract
Distribution: TBD
Vendor: N/A
Packager: Dafydd James <mail@dafyddjames.com>
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-buildroot
requires: wget

%description
A utility for playing around with RPM package files.

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/bin
cp rpmextract $RPM_BUILD_ROOT/usr/bin

%files
%doc README
%attr(755, root, root) /usr/bin/rpmextract
