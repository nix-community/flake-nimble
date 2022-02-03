{
  description = ''The Nim framework for VK API.'';
  inputs.src-shizuka-master.flake = false;
  inputs.src-shizuka-master.type = "github";
  inputs.src-shizuka-master.owner = "ethosa";
  inputs.src-shizuka-master.repo = "shizuka";
  inputs.src-shizuka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shizuka-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shizuka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}