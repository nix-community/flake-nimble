{
  description = ''A fast, multithreaded miner for DuinoCoin'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ducominer-1_1_0.flake = false;
  inputs.src-ducominer-1_1_0.type = "github";
  inputs.src-ducominer-1_1_0.owner = "its5Q";
  inputs.src-ducominer-1_1_0.repo = "ducominer";
  inputs.src-ducominer-1_1_0.ref = "refs/tags/1.1.0";
  
  
  inputs."hashlib".type = "github";
  inputs."hashlib".owner = "riinr";
  inputs."hashlib".repo = "flake-nimble";
  inputs."hashlib".ref = "flake-pinning";
  inputs."hashlib".dir = "nimpkgs/h/hashlib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ducominer-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ducominer-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ducominer-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}