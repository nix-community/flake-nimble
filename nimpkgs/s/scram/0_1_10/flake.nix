{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';
  inputs.src-scram-0_1_10.flake = false;
  inputs.src-scram-0_1_10.type = "github";
  inputs.src-scram-0_1_10.owner = "rgv151";
  inputs.src-scram-0_1_10.repo = "scram";
  inputs.src-scram-0_1_10.ref = "refs/tags/0.1.10";
  
  
  inputs."hmac".url = "path:../../../h/hmac";
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, src-scram-0_1_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scram-0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scram-0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}