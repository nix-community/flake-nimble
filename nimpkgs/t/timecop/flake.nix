{
  description = ''
    Time travelling for Nim
  '';
  inputs.src-timecop.url = "https://github.com/ba0f3/timecop.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
