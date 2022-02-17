{
  description = ''Signals/slots library.'';
  inputs.src-signals-master.flake = false;
  inputs.src-signals-master.type = "github";
  inputs.src-signals-master.owner = "fowlmouth";
  inputs.src-signals-master.repo = "signals.nim";
  inputs.src-signals-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-signals-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-signals-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-signals-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}