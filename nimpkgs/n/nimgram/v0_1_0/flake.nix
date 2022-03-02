{
  description = ''MTProto client written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimgram-v0_1_0.flake = false;
  inputs.src-nimgram-v0_1_0.type = "github";
  inputs.src-nimgram-v0_1_0.owner = "nimgram";
  inputs.src-nimgram-v0_1_0.repo = "nimgram";
  inputs.src-nimgram-v0_1_0.ref = "refs/tags/v0.1.0";
  inputs.src-nimgram-v0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stint".type = "github";
  # inputs."stint".owner = "riinr";
  # inputs."stint".repo = "flake-nimble";
  # inputs."stint".ref = "flake-pinning";
  # inputs."stint".dir = "nimpkgs/s/stint";
  # inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."gmp".type = "github";
  # inputs."gmp".owner = "riinr";
  # inputs."gmp".repo = "flake-nimble";
  # inputs."gmp".ref = "flake-pinning";
  # inputs."gmp".dir = "nimpkgs/g/gmp";
  # inputs."gmp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."gmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/dadadani/nim-random".type = "github";
  # inputs."https://github.com/dadadani/nim-random".owner = "riinr";
  # inputs."https://github.com/dadadani/nim-random".repo = "flake-nimble";
  # inputs."https://github.com/dadadani/nim-random".ref = "flake-pinning";
  # inputs."https://github.com/dadadani/nim-random".dir = "nimpkgs/h/https://github.com/dadadani/nim-random";
  # inputs."https://github.com/dadadani/nim-random".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/dadadani/nim-random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgram-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgram-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgram-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}