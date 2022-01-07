{
  description = ''
    New atomics, thread primitives, channels and atomic refcounting for --gc:arc/orc.
  '';
  inputs.src-threading.url = "https://github.com/nim-lang/threading";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
