{
  description = ''OpenStreetMap API Lib for Nim'';
  inputs.src-openstreetmap-master.flake = false;
  inputs.src-openstreetmap-master.type = "github";
  inputs.src-openstreetmap-master.owner = "juancarlospaco";
  inputs.src-openstreetmap-master.repo = "nim-openstreetmap";
  inputs.src-openstreetmap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-openstreetmap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openstreetmap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openstreetmap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}