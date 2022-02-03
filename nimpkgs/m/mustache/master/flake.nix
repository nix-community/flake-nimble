{
  description = ''Mustache in Nim'';
  inputs.src-mustache-master.flake = false;
  inputs.src-mustache-master.type = "github";
  inputs.src-mustache-master.owner = "soasme";
  inputs.src-mustache-master.repo = "nim-mustache";
  inputs.src-mustache-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mustache-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mustache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}