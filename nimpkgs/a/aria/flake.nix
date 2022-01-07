{
  description = ''
    Aria2 API lib for Nim for any backend https://aria2.github.io
  '';
  inputs.src-aria.url = "https://github.com/juancarlospaco/aria";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
