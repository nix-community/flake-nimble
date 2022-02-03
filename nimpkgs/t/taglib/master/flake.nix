{
  description = ''TagLib Audio Meta-Data Library wrapper'';
  inputs.src-taglib-master.flake = false;
  inputs.src-taglib-master.type = "github";
  inputs.src-taglib-master.owner = "alex-laskin";
  inputs.src-taglib-master.repo = "nim-taglib";
  inputs.src-taglib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-taglib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taglib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-taglib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}