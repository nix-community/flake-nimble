{
  description = ''
    Jalili <=> Gregorian date converter, originally a copy of http://jdf.scr.ir/
  '';
  inputs.src-jalali_nim.url = "https://github.com/hamidb80/jalili-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
