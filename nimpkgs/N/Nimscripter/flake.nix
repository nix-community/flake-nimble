{
  description = ''
    Easy to use Nim/Nimscript interop, for scripting logic in compiled binaries.
  '';
  inputs.src-Nimscripter.url = "https://github.com/beef331/nimscripter";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
