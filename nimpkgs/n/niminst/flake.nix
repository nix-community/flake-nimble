{
  description = ''
    tool to generate installers for Nim programs
  '';
  inputs.src-niminst.url = "https://github.com/nim-lang/niminst";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
