{
  description = ''A macro collection for creating DSL in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-dslutils-0_1_2.flake = false;
  inputs.src-dslutils-0_1_2.type = "github";
  inputs.src-dslutils-0_1_2.owner = "codehz";
  inputs.src-dslutils-0_1_2.repo = "dslutils";
  inputs.src-dslutils-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dslutils-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dslutils-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dslutils-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}