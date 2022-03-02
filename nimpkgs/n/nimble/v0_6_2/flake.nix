{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimble-v0_6_2.flake = false;
  inputs.src-nimble-v0_6_2.type = "github";
  inputs.src-nimble-v0_6_2.owner = "nim-lang";
  inputs.src-nimble-v0_6_2.repo = "nimble";
  inputs.src-nimble-v0_6_2.ref = "refs/tags/v0.6.2";
  inputs.src-nimble-v0_6_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_6_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}