{
  description = ''
    pnm is library for PNM (Portable AnyMap).
  '';
  inputs.src-pnm.url = "https://github.com/jiro4989/pnm";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
