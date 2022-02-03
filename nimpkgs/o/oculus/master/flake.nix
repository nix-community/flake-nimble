{
  description = ''Bindings for the Oculus VR SDK.'';
  inputs.src-oculus-master.flake = false;
  inputs.src-oculus-master.type = "github";
  inputs.src-oculus-master.owner = "nimious";
  inputs.src-oculus-master.repo = "oculus";
  inputs.src-oculus-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-oculus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oculus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oculus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}