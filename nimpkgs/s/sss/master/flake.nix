{
  description = ''Shamir secret sharing'';
  inputs.src-sss-master.flake = false;
  inputs.src-sss-master.type = "github";
  inputs.src-sss-master.owner = "markspanbroek";
  inputs.src-sss-master.repo = "sss.nim";
  inputs.src-sss-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sss-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sss-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sss-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}