{
  description = ''Nim / Python library to feed HTTP server quickly with custom messages'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."batchsend-main".type = "github";
  inputs."batchsend-main".owner = "riinr";
  inputs."batchsend-main".repo = "flake-nimble";
  inputs."batchsend-main".ref = "flake-pinning";
  inputs."batchsend-main".dir = "nimpkgs/b/batchsend/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}