{
  description = ''a skeleton/structure for a variation on the mvc pattern, similar to dci. For command line and gui programs. it's a middle ground between rapid application development and handling software complexity.'';
  inputs.src-vmvc-master.flake = false;
  inputs.src-vmvc-master.type = "github";
  inputs.src-vmvc-master.owner = "kobi2187";
  inputs.src-vmvc-master.repo = "vmvc";
  inputs.src-vmvc-master.ref = "refs/heads/master";
  
  
  inputs."uuids".type = "github";
  inputs."uuids".owner = "riinr";
  inputs."uuids".repo = "flake-nimble";
  inputs."uuids".ref = "flake-pinning";
  inputs."uuids".dir = "nimpkgs/u/uuids";

  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-vmvc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmvc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmvc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}