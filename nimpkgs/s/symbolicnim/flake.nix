{
  description = ''
    A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.
  '';
  inputs.src-symbolicnim.url = "https://github.com/HugoGranstrom/symbolicnim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
