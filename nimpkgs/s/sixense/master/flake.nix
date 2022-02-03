{
  description = ''Bindings for the Sixense Core API.'';
  inputs.src-sixense-master.flake = false;
  inputs.src-sixense-master.type = "github";
  inputs.src-sixense-master.owner = "nimious";
  inputs.src-sixense-master.repo = "sixense";
  inputs.src-sixense-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-sixense-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sixense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sixense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}