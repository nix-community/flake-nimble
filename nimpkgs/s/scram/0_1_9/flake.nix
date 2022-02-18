{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-scram-0_1_9.flake = false;
  inputs.src-scram-0_1_9.type = "github";
  inputs.src-scram-0_1_9.owner = "rgv151";
  inputs.src-scram-0_1_9.repo = "scram";
  inputs.src-scram-0_1_9.ref = "refs/tags/0.1.9";
  
  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, flakeNimbleLib, src-scram-0_1_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scram-0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-scram-0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}