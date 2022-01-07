{
  description = ''
    FastCGI Web Framework for Nim.
  '';
  inputs.src-FastKiss.url = "https://github.com/mrhdias/fastkiss";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
