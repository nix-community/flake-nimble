{
  description = ''A thin SQLite wrapper with proper type safety'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tiny_sqlite-v0_1_2.flake = false;
  inputs.src-tiny_sqlite-v0_1_2.type = "github";
  inputs.src-tiny_sqlite-v0_1_2.owner = "GULPF";
  inputs.src-tiny_sqlite-v0_1_2.repo = "tiny_sqlite";
  inputs.src-tiny_sqlite-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tiny_sqlite-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiny_sqlite-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tiny_sqlite-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}