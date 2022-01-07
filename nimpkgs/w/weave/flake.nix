{
  description = ''
    a state-of-the-art multithreading runtime
  '';
  inputs.src-weave.url = "https://github.com/mratsim/weave";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
