{
  description = ''A fast, multithreaded miner for DuinoCoin'';
  inputs.src-ducominer-1_2_0.flake = false;
  inputs.src-ducominer-1_2_0.type = "github";
  inputs.src-ducominer-1_2_0.owner = "its5Q";
  inputs.src-ducominer-1_2_0.repo = "ducominer";
  inputs.src-ducominer-1_2_0.ref = "refs/tags/1.2.0";
  
  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  outputs = { self, nixpkgs, src-ducominer-1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ducominer-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ducominer-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}