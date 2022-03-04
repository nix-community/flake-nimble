{
  description = ''Nim / Python library to feed HTTP server quickly with custom messages'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-batchsend-main.flake = false;
  inputs.src-batchsend-main.type = "github";
  inputs.src-batchsend-main.owner = "marcomq";
  inputs.src-batchsend-main.repo = "batchsend";
  inputs.src-batchsend-main.ref = "refs/heads/main";
  inputs.src-batchsend-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-batchsend-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-batchsend-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-batchsend-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}