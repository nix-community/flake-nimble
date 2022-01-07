{
  description = ''
    Flexible JSON manshal/unmarshal library for nim
  '';
  inputs.src-jdec.url = "https://github.com/diegogub/jdec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
