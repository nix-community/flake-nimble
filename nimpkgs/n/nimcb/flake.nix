{
  description = ''
    Integrate nim projects in the C++Builder build process
  '';
  inputs.src-nimcb.url = "https://github.com/AdrianV/nimcb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
