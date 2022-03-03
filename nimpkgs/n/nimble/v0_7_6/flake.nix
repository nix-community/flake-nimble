{
  description = ''Nimble package manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimble-v0_7_6.flake = false;
  inputs.src-nimble-v0_7_6.type = "github";
  inputs.src-nimble-v0_7_6.owner = "nim-lang";
  inputs.src-nimble-v0_7_6.repo = "nimble";
  inputs.src-nimble-v0_7_6.ref = "refs/tags/v0.7.6";
  inputs.src-nimble-v0_7_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."compiler".type = "github";
  # inputs."compiler".owner = "riinr";
  # inputs."compiler".repo = "flake-nimble";
  # inputs."compiler".ref = "flake-pinning";
  # inputs."compiler".dir = "nimpkgs/c/compiler";
  # inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimble-v0_7_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimble-v0_7_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_7_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}