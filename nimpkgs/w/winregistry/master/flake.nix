{
  description = ''Deal with Windows Registry from Nim.'';
  inputs.src-winregistry-master.flake = false;
  inputs.src-winregistry-master.type = "github";
  inputs.src-winregistry-master.owner = "miere43";
  inputs.src-winregistry-master.repo = "nim-registry";
  inputs.src-winregistry-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-winregistry-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winregistry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winregistry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}