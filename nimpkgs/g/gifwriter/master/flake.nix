{
  description = ''Animated GIF writing library based on jo_gif'';
  inputs.src-gifwriter-master.flake = false;
  inputs.src-gifwriter-master.type = "github";
  inputs.src-gifwriter-master.owner = "rxi";
  inputs.src-gifwriter-master.repo = "gifwriter";
  inputs.src-gifwriter-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gifwriter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gifwriter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gifwriter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}