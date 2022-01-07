{
  description = ''
    Cross platform system information.
  '';
  inputs.src-sysinfo.url = "https://github.com/treeform/sysinfo";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
