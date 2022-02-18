{
  description = ''Simpleflake for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-simpleflake-v0_1_2.flake = false;
  inputs.src-simpleflake-v0_1_2.type = "github";
  inputs.src-simpleflake-v0_1_2.owner = "aisk";
  inputs.src-simpleflake-v0_1_2.repo = "simpleflake.nim";
  inputs.src-simpleflake-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpleflake-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpleflake-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpleflake-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}