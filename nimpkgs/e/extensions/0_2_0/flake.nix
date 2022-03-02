{
  description = ''A library that will add useful tools to Nim's arsenal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-extensions-0_2_0.flake = false;
  inputs.src-extensions-0_2_0.type = "github";
  inputs.src-extensions-0_2_0.owner = "jyapayne";
  inputs.src-extensions-0_2_0.repo = "nim-extensions";
  inputs.src-extensions-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-extensions-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-extensions-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extensions-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-extensions-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}