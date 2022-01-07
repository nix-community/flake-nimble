{
  description = ''
    Tool/Lib to highlight text in CLI by using regular expressions.
  '';
  inputs.src-highlight.url = "https://github.com/RaimundHuebel/nimhighlight";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
