{
  description = ''A fast, multithreaded miner for DuinoCoin'';
  inputs.src-ducominer-1_0_0.flake = false;
  inputs.src-ducominer-1_0_0.type = "github";
  inputs.src-ducominer-1_0_0.owner = "its5Q";
  inputs.src-ducominer-1_0_0.repo = "ducominer";
  inputs.src-ducominer-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."hashlib".url = "path:../../../h/hashlib";
  inputs."hashlib".type = "github";
  inputs."hashlib".owner = "riinr";
  inputs."hashlib".repo = "flake-nimble";
  inputs."hashlib".ref = "flake-pinning";
  inputs."hashlib".dir = "nimpkgs/h/hashlib";

  outputs = { self, nixpkgs, src-ducominer-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ducominer-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ducominer-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}