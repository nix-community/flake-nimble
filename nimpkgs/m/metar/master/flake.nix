{
  description = ''Read metadata from jpeg and tiff images.'';
  inputs.src-metar-master.flake = false;
  inputs.src-metar-master.type = "github";
  inputs.src-metar-master.owner = "flenniken";
  inputs.src-metar-master.repo = "metar";
  inputs.src-metar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-metar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-metar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-metar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}