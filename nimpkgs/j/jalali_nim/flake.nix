{
  description = ''Jalili <=> Gregorian date converter, originally a copy of http://jdf.scr.ir/'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."jalali_nim-main".type = "github";
  inputs."jalali_nim-main".owner = "riinr";
  inputs."jalali_nim-main".repo = "flake-nimble";
  inputs."jalali_nim-main".ref = "flake-pinning";
  inputs."jalali_nim-main".dir = "nimpkgs/j/jalali_nim/main";
  inputs."jalali_nim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jalali_nim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}