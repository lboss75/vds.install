Summary: Virtual Distributed Storage network
Name: vds
Version: 0.1
Release: 1%{?dist}
Source0: %{name}-%{version}.tar.gz
License: MIT
Group: System

%description 
The Virtual Distributed Storage network is free distributed storage network for survival data.
Anonymous, encrypted, foreverc.

%files -f %{name}.lang
%{_bindir}/vds_ws_server

%changelog
* Sun Oct 25 2020 IVy Soft <contact@iv-soft.ru> 0.1
- Initial version of the package
ORG-LIST-END-MARKE