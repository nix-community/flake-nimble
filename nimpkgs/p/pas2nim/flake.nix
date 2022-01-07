{
  description = ''
    pas2nim is a tool to translate Pascal code to Nim.
  '';
  inputs.src-pas2nim.url = "https://github.com/nim-lang/pas2nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
