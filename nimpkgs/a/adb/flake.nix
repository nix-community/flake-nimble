{
  description = ''
    ADB protocol implementation in Nim
  '';
  inputs.src-adb.url = "https://github.com/Yardanico/nim-adb";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
