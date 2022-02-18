{
  description = ''Sequoia PGP wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sequoia-0_1_1.flake = false;
  inputs.src-sequoia-0_1_1.type = "github";
  inputs.src-sequoia-0_1_1.owner = "ba0f3";
  inputs.src-sequoia-0_1_1.repo = "sequoia.nim";
  inputs.src-sequoia-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sequoia-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequoia-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sequoia-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}