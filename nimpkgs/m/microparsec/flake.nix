{
  description = ''
    A performant Nim parsing library built for humans.
  '';
  inputs.src-microparsec.url = "https://github.com/schneiderfelipe/microparsec";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
