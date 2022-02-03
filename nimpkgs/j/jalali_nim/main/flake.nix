{
  description = ''Jalili <=> Gregorian date converter, originally a copy of http://jdf.scr.ir/'';
  inputs.src-jalali_nim-main.flake = false;
  inputs.src-jalali_nim-main.type = "github";
  inputs.src-jalali_nim-main.owner = "hamidb80";
  inputs.src-jalali_nim-main.repo = "jalili-nim";
  inputs.src-jalali_nim-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-jalali_nim-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jalali_nim-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jalali_nim-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}