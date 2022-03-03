{
  description = ''Low-level twitter API wrapper library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-twitter-master.flake = false;
  inputs.src-twitter-master.type = "github";
  inputs.src-twitter-master.owner = "snus-kin";
  inputs.src-twitter-master.repo = "twitter.nim";
  inputs.src-twitter-master.ref = "refs/heads/master";
  inputs.src-twitter-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."uuids".type = "github";
  # inputs."uuids".owner = "riinr";
  # inputs."uuids".repo = "flake-nimble";
  # inputs."uuids".ref = "flake-pinning";
  # inputs."uuids".dir = "nimpkgs/u/uuids";
  # inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."hmac".type = "github";
  # inputs."hmac".owner = "riinr";
  # inputs."hmac".repo = "flake-nimble";
  # inputs."hmac".ref = "flake-pinning";
  # inputs."hmac".dir = "nimpkgs/h/hmac";
  # inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-twitter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-twitter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-twitter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}