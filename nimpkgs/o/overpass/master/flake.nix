{
  description = ''OpenStreetMap Overpass API Lib'';
  inputs.src-overpass-master.flake = false;
  inputs.src-overpass-master.type = "github";
  inputs.src-overpass-master.owner = "juancarlospaco";
  inputs.src-overpass-master.repo = "nim-overpass";
  inputs.src-overpass-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-overpass-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-overpass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-overpass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}