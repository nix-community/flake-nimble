{
  description = ''
    A decentralized (pseudo) package manager and script runner.
  '';
  inputs.src-nifty.url = "https://github.com/h3rald/nifty";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
