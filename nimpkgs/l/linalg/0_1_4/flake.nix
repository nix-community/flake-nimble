{
  description = ''Linear algebra for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-linalg-0_1_4.flake = false;
  inputs.src-linalg-0_1_4.type = "github";
  inputs.src-linalg-0_1_4.owner = "andreaferretti";
  inputs.src-linalg-0_1_4.repo = "linear-algebra";
  inputs.src-linalg-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-linalg-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linalg-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}