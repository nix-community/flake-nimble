{
  description = ''Nim module for parsing GPX (GPS Exchange format) files'';
  inputs.src-gpx-master.flake = false;
  inputs.src-gpx-master.type = "github";
  inputs.src-gpx-master.owner = "achesak";
  inputs.src-gpx-master.repo = "nim-gpx";
  inputs.src-gpx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gpx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gpx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gpx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}