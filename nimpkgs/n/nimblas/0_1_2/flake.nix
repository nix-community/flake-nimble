{
  description = ''BLAS for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimblas-0_1_2.flake = false;
  inputs.src-nimblas-0_1_2.type = "github";
  inputs.src-nimblas-0_1_2.owner = "andreaferretti";
  inputs.src-nimblas-0_1_2.repo = "nimblas";
  inputs.src-nimblas-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimblas-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblas-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimblas-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}