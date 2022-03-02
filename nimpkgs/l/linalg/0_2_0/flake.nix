{
  description = ''Linear algebra for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-linalg-0_2_0.flake = false;
  inputs.src-linalg-0_2_0.type = "github";
  inputs.src-linalg-0_2_0.owner = "andreaferretti";
  inputs.src-linalg-0_2_0.repo = "linear-algebra";
  inputs.src-linalg-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-linalg-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-linalg-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}