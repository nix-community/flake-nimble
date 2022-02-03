{
  description = ''Auto-generate a Python module that wraps a Nim module.'';
  inputs.src-pymod-master.flake = false;
  inputs.src-pymod-master.type = "github";
  inputs.src-pymod-master.owner = "jboy";
  inputs.src-pymod-master.repo = "nim-pymod";
  inputs.src-pymod-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pymod-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pymod-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pymod-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}