{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-neoid-master.flake = false;
  inputs.src-neoid-master.type = "github";
  inputs.src-neoid-master.owner = "theAkito";
  inputs.src-neoid-master.repo = "nim-neoid";
  inputs.src-neoid-master.ref = "refs/heads/master";
  inputs.src-neoid-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."random".type = "github";
  # inputs."random".owner = "riinr";
  # inputs."random".repo = "flake-nimble";
  # inputs."random".ref = "flake-pinning";
  # inputs."random".dir = "nimpkgs/r/random";
  # inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."winim".type = "github";
  # inputs."winim".owner = "riinr";
  # inputs."winim".repo = "flake-nimble";
  # inputs."winim".ref = "flake-pinning";
  # inputs."winim".dir = "nimpkgs/w/winim";
  # inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-neoid-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neoid-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-neoid-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}