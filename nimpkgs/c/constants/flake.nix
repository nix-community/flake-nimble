{
  description = ''
    Mathematical numerical named static constants useful for different disciplines
  '';
  inputs.src-constants.url = "https://github.com/juancarlospaco/nim-constants";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
