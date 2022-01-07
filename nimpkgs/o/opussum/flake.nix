{
  description = ''
    Wrapper around libopus
  '';
  inputs.src-opussum.url = "https://github.com/ire4ever1190/opussum";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
