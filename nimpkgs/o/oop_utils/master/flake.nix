{
  description = ''Macro for building OOP class hierarchies based on closure methods.'';
  inputs.src-oop_utils-master.flake = false;
  inputs.src-oop_utils-master.type = "github";
  inputs.src-oop_utils-master.owner = "bluenote10";
  inputs.src-oop_utils-master.repo = "oop_utils";
  inputs.src-oop_utils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-oop_utils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oop_utils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oop_utils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}