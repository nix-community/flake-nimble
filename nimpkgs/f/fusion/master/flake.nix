{
  description = ''Nim's official stdlib extension'';
  inputs.src-fusion-master.flake = false;
  inputs.src-fusion-master.type = "github";
  inputs.src-fusion-master.owner = "nim-lang";
  inputs.src-fusion-master.repo = "fusion";
  inputs.src-fusion-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fusion-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fusion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fusion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}