{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-hmac-0_1_1.flake = false;
  inputs.src-hmac-0_1_1.type = "github";
  inputs.src-hmac-0_1_1.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_1.repo = "hmac.nim";
  inputs.src-hmac-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-hmac-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimsha2".type = "github";
  # inputs."nimsha2".owner = "riinr";
  # inputs."nimsha2".repo = "flake-nimble";
  # inputs."nimsha2".ref = "flake-pinning";
  # inputs."nimsha2".dir = "nimpkgs/n/nimsha2";
  # inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hmac-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hmac-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hmac-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}