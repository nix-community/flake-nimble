{
  description = ''A fast, multithreaded miner for DuinoCoin'';
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

  outputs = { self, nixpkgs, src-ducominer-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ducominer-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ducominer-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}