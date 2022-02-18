{
  description = ''Linear algebra for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-linalg-0_5_2.flake = false;
  inputs.src-linalg-0_5_2.type = "github";
  inputs.src-linalg-0_5_2.owner = "andreaferretti";
  inputs.src-linalg-0_5_2.repo = "linear-algebra";
  inputs.src-linalg-0_5_2.ref = "refs/tags/0.5.2";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, flakeNimbleLib, src-linalg-0_5_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}