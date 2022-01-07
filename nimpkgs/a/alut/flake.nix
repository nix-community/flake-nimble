{
  description = ''
    OpenAL Utility Toolkit (ALUT)
  '';
  inputs.src-alut.url = "https://github.com/rmt/alut";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
