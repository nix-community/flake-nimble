{
  description = ''NOAA weather API wrapper'';
  inputs.src-noaa-master.flake = false;
  inputs.src-noaa-master.type = "github";
  inputs.src-noaa-master.owner = "achesak";
  inputs.src-noaa-master.repo = "nim-noaa";
  inputs.src-noaa-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-noaa-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noaa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noaa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}