{
  description = ''Steam API Client for Nim'';
  inputs.src-steam-master.flake = false;
  inputs.src-steam-master.type = "github";
  inputs.src-steam-master.owner = "juancarlospaco";
  inputs.src-steam-master.repo = "nim-steam";
  inputs.src-steam-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-steam-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-steam-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-steam-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}