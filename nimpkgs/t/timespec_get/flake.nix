{
  description = ''
    Nanosecond-percision time using timespec_get
  '';
  inputs.src-timespec_get.url = "https://github.com/Matceporial/nim-timespec_get";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
