{
  description = ''Provides access to the rdrand and rdseed instructions. Based on Intel's DRNG Library (libdrng)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-drng-main.flake = false;
  inputs.src-drng-main.type = "github";
  inputs.src-drng-main.owner = "rockcavera";
  inputs.src-drng-main.repo = "nim-drng";
  inputs.src-drng-main.ref = "refs/heads/main";
  
  
  inputs."cpuwhat".type = "github";
  inputs."cpuwhat".owner = "riinr";
  inputs."cpuwhat".repo = "flake-nimble";
  inputs."cpuwhat".ref = "flake-pinning";
  inputs."cpuwhat".dir = "nimpkgs/c/cpuwhat";

  outputs = { self, nixpkgs, flakeNimbleLib, src-drng-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-drng-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-drng-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}