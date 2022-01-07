{
  description = ''
    This package allows you to determine the running version of the Windows operating system.
  '';
  inputs.src-winversion.url = "https://github.com/rockcavera/winversion";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
