{
  description = ''MTProto client written in Nim'';
  inputs.src-nimgram-master.flake = false;
  inputs.src-nimgram-master.type = "github";
  inputs.src-nimgram-master.owner = "nimgram";
  inputs.src-nimgram-master.repo = "nimgram";
  inputs.src-nimgram-master.ref = "refs/heads/master";
  
  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  
  inputs."gmp".type = "github";
  inputs."gmp".owner = "riinr";
  inputs."gmp".repo = "flake-nimble";
  inputs."gmp".ref = "flake-pinning";
  inputs."gmp".dir = "nimpkgs/g/gmp";

  
  inputs."https://github.com/dadadani/nim-random".type = "github";
  inputs."https://github.com/dadadani/nim-random".owner = "riinr";
  inputs."https://github.com/dadadani/nim-random".repo = "flake-nimble";
  inputs."https://github.com/dadadani/nim-random".ref = "flake-pinning";
  inputs."https://github.com/dadadani/nim-random".dir = "nimpkgs/h/https://github.com/dadadani/nim-random";

  outputs = { self, nixpkgs, src-nimgram-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgram-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgram-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}