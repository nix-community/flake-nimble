{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';
  inputs.src-scram-0_1_12.flake = false;
  inputs.src-scram-0_1_12.type = "github";
  inputs.src-scram-0_1_12.owner = "rgv151";
  inputs.src-scram-0_1_12.repo = "scram";
  inputs.src-scram-0_1_12.ref = "refs/tags/0.1.12";
  
  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, src-scram-0_1_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scram-0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scram-0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}