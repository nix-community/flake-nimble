{
  description = ''
    The Hundred Rabbits theme ecosystem brought to Nim.
  '';
  inputs.src-rabbit.url = "https://github.com/tonogram/rabbit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
