{
  description = ''JSON Web Tokens for Nim'';
  inputs.src-quickjwt-master.flake = false;
  inputs.src-quickjwt-master.type = "github";
  inputs.src-quickjwt-master.owner = "treeform";
  inputs.src-quickjwt-master.repo = "quickjwt";
  inputs.src-quickjwt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-quickjwt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickjwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quickjwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}