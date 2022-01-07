{
  description = ''
    High level wrapper over OpenCL
  '';
  inputs.src-nimcl.url = "https://github.com/andreaferretti/nimcl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
