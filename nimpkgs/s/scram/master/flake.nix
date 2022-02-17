{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';
  inputs.src-scram-master.flake = false;
  inputs.src-scram-master.type = "github";
  inputs.src-scram-master.owner = "rgv151";
  inputs.src-scram-master.repo = "scram";
  inputs.src-scram-master.ref = "refs/heads/master";
  
  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, src-scram-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scram-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scram-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}