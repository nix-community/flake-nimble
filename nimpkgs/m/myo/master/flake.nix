{
  description = ''Bindings for the Thalmic Labs Myo gesture control armband SDK.'';
  inputs.src-myo-master.flake = false;
  inputs.src-myo-master.type = "github";
  inputs.src-myo-master.owner = "nimious";
  inputs.src-myo-master.repo = "myo";
  inputs.src-myo-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-myo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-myo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-myo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}