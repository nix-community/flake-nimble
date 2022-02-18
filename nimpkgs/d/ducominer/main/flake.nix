{
  description = ''A fast, multithreaded miner for DuinoCoin'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ducominer-main.flake = false;
  inputs.src-ducominer-main.type = "github";
  inputs.src-ducominer-main.owner = "its5Q";
  inputs.src-ducominer-main.repo = "ducominer";
  inputs.src-ducominer-main.ref = "refs/heads/main";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ducominer-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ducominer-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ducominer-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}