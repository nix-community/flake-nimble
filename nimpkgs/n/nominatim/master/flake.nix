{
  description = ''OpenStreetMap Nominatim API Lib for Nim'';
  inputs.src-nominatim-master.flake = false;
  inputs.src-nominatim-master.type = "github";
  inputs.src-nominatim-master.owner = "juancarlospaco";
  inputs.src-nominatim-master.repo = "nim-nominatim";
  inputs.src-nominatim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nominatim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nominatim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nominatim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}