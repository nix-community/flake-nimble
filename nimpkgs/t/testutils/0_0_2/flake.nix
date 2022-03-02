{
  description = ''A comprehensive toolkit for all your testing needs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-testutils-0_0_2.flake = false;
  inputs.src-testutils-0_0_2.type = "github";
  inputs.src-testutils-0_0_2.owner = "status-im";
  inputs.src-testutils-0_0_2.repo = "nim-testutils";
  inputs.src-testutils-0_0_2.ref = "refs/tags/0.0.2";
  inputs.src-testutils-0_0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-testutils-0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-testutils-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}