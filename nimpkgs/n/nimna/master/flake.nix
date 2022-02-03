{
  description = ''Nucleic acid folding and design.'';
  inputs.src-nimna-master.flake = false;
  inputs.src-nimna-master.type = "github";
  inputs.src-nimna-master.owner = "mjendrusch";
  inputs.src-nimna-master.repo = "nimna";
  inputs.src-nimna-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimna-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimna-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimna-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}