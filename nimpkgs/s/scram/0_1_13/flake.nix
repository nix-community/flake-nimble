{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-scram-0_1_13.flake = false;
  inputs.src-scram-0_1_13.type = "github";
  inputs.src-scram-0_1_13.owner = "rgv151";
  inputs.src-scram-0_1_13.repo = "scram";
  inputs.src-scram-0_1_13.ref = "refs/tags/0.1.13";
  inputs.src-scram-0_1_13.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmac".type = "github";
  # inputs."hmac".owner = "riinr";
  # inputs."hmac".repo = "flake-nimble";
  # inputs."hmac".ref = "flake-pinning";
  # inputs."hmac".dir = "nimpkgs/h/hmac";
  # inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-scram-0_1_13, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scram-0_1_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scram-0_1_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}