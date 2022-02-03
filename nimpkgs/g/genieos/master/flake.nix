{
  description = ''Too awesome procs to be included in nimrod.os module'';
  inputs.src-genieos-master.flake = false;
  inputs.src-genieos-master.type = "github";
  inputs.src-genieos-master.owner = "Araq";
  inputs.src-genieos-master.repo = "genieos";
  inputs.src-genieos-master.ref = "refs/heads/master";
  
  
  inputs."x11".url = "path:../../../x/x11";
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-genieos-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genieos-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}