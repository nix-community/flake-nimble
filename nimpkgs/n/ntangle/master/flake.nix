{
  description = ''Command-line utility for Tangling of Org mode documents'';
  inputs.src-ntangle-master.flake = false;
  inputs.src-ntangle-master.type = "github";
  inputs.src-ntangle-master.owner = "OrgTangle";
  inputs.src-ntangle-master.repo = "ntangle";
  inputs.src-ntangle-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-ntangle-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ntangle-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}